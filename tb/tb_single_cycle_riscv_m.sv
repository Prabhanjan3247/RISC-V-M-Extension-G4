// -----------------------------------------------------------------------------
// tb_single_cycle_riscv_m.sv
// Self-contained testbench for single_cycle_riscv_m (not used by the course CI).
//
// It plays instruction and data memory the same way the CI harness does:
// combinational instruction read, combinational load data (already aligned and
// sign/zero extended), and stores written on the rising edge when mem_write=1.
//
// Two memory models (plusarg +ci_mode):
//   +ci_mode   : CI layout - 512-word instruction memory indexed by
//                address[10:2] and a separate, zero-initialised 256-word data
//                memory indexed by alu_out[9:2].
//   (default)  : unified 4 MiB memory at 0x8000_0000 (code + data), needed by
//                the riscv-arch-test compliance programs.
//
// Plusargs:
//   +hex=<file>          program image, one 32-bit word per line ($readmemh)
//   +trace=<file>        store trace output: "<addr> <data> <fn3>" per store
//   +sig=<file>          signature output (compliance mode)
//   +sig_begin=<hex>     first signature address
//   +sig_end=<hex>       end of signature (exclusive)
//   +tohost=<hex>        a store to this address ends the simulation
//   +max_cycles=<dec>    timeout (default 2,000,000)
//   +vcd=<file>          dump waveforms
// The simulation also ends when the core reaches a "jal x0, 0" self-loop.
// -----------------------------------------------------------------------------
`timescale 1ns/1ps

module tb_single_cycle_riscv_m;
    localparam int          UNI_WORDS = 1048576;         // 4 MiB unified memory
    localparam logic [31:0] BASE      = 32'h8000_0000;

    logic        clk = 1'b0;
    logic        reset;
    logic        stall;
    logic [31:0] instruction, mem_out, rs2_data, alu_out, address;
    logic        mem_write, mem_read;
    logic [2:0]  fn3;
    logic [6:0]  opcode;

    single_cycle_riscv_m dut (
        .clk         (clk),
        .reset       (reset),
        .stall       (stall),
        .instruction (instruction),
        .mem_out     (mem_out),
        .rs2_data    (rs2_data),
        .alu_out     (alu_out),
        .mem_write   (mem_write),
        .mem_read    (mem_read),
        .fn3         (fn3),
        .opcode      (opcode),
        .address     (address)
    );

    always #5 clk = ~clk;

    // ------------------------------------------------------------ memories --
    logic [31:0] uni  [0:UNI_WORDS-1];
    logic [31:0] imem [0:511];
    logic [31:0] dmem [0:255];
    bit          ci_mode;

    function automatic int uni_index(input logic [31:0] a);
        return int'((a - BASE) >> 2) & (UNI_WORDS - 1);
    endfunction

    // Instruction fetch (combinational). Continuous assigns on array words keep
    // Icarus from making the process sensitive to the whole 1M-word array.
    logic [19:0] i_idx, d_idx;
    logic [31:0] i_uni, i_ci, d_uni, d_ci;
    assign i_idx = 20'(uni_index(address));
    assign d_idx = 20'(uni_index(alu_out));
    assign i_uni = uni[i_idx];
    assign i_ci  = imem[address[10:2]];
    assign d_uni = uni[d_idx];
    assign d_ci  = dmem[alu_out[9:2]];
    assign instruction = ci_mode ? i_ci : i_uni;

    // Load path: select the word, then the byte / half lane, then extend.
    logic [31:0] rd_word;
    logic [7:0]  rd_byte;
    logic [15:0] rd_half;

    assign rd_word = ci_mode ? d_ci : d_uni;

    always_comb begin
        case (alu_out[1:0])
            2'd0: rd_byte = rd_word[7:0];
            2'd1: rd_byte = rd_word[15:8];
            2'd2: rd_byte = rd_word[23:16];
            default: rd_byte = rd_word[31:24];
        endcase
        rd_half = alu_out[1] ? rd_word[31:16] : rd_word[15:0];
        case (fn3)
            3'b000:  mem_out = {{24{rd_byte[7]}},  rd_byte};   // LB
            3'b001:  mem_out = {{16{rd_half[15]}}, rd_half};   // LH
            3'b100:  mem_out = {24'd0, rd_byte};               // LBU
            3'b101:  mem_out = {16'd0, rd_half};               // LHU
            default: mem_out = rd_word;                        // LW
        endcase
    end

    // Store path: merge rs2 into the addressed byte lanes on the clock edge.
    function automatic logic [31:0] merge(input logic [31:0] old, input logic [31:0] d,
                                          input logic [2:0] f, input logic [1:0] off);
        logic [31:0] w;
        w = old;
        case (f[1:0])
            2'b00: w[8*off +: 8] = d[7:0];
            2'b01: w[16*off[1] +: 16] = d[15:0];
            default: w = d;
        endcase
        return w;
    endfunction

    function automatic logic [31:0] size_mask(input logic [31:0] d, input logic [2:0] f);
        case (f[1:0])
            2'b00:   return {24'd0, d[7:0]};
            2'b01:   return {16'd0, d[15:0]};
            default: return d;
        endcase
    endfunction

    // ------------------------------------------------------------- control --
    string       hex_file, trace_file, sig_file, vcd_file;
    logic [31:0] sig_begin, sig_end, tohost;
    bit          have_tohost, have_sig, have_trace;
    int          max_cycles, cycles, trace_fd, n_stores;

    always @(posedge clk) begin
        if (!reset && mem_write) begin
            n_stores++;
            if (have_trace)
                $fdisplay(trace_fd, "%08x %08x %0d", alu_out, size_mask(rs2_data, fn3), fn3);
            if (ci_mode)
                dmem[alu_out[9:2]] <= merge(dmem[alu_out[9:2]], rs2_data, fn3, alu_out[1:0]);
            else
                uni[uni_index(alu_out)] <= merge(uni[uni_index(alu_out)], rs2_data, fn3, alu_out[1:0]);
            if (have_tohost && alu_out == tohost) finish_run("tohost");
        end
    end

    task automatic finish_run(input string why);
        int fd;
        if (have_sig) begin
            fd = $fopen(sig_file, "w");
            for (logic [31:0] a = sig_begin; a < sig_end; a += 4)
                $fdisplay(fd, "%08x", uni[uni_index(a)]);
            $fclose(fd);
        end
        if (have_trace) $fclose(trace_fd);
        $display("[tb] end (%s) after %0d cycles, %0d stores, pc=%08x", why, cycles, n_stores, address);
        $finish;
    endtask

    initial begin
        ci_mode     = $test$plusargs("ci_mode");
        have_tohost = $value$plusargs("tohost=%h", tohost);
        have_sig    = $value$plusargs("sig=%s", sig_file);
        have_trace  = $value$plusargs("trace=%s", trace_file);
        if (!$value$plusargs("sig_begin=%h", sig_begin)) sig_begin = 0;
        if (!$value$plusargs("sig_end=%h", sig_end))     sig_end   = 0;
        if (!$value$plusargs("max_cycles=%d", max_cycles)) max_cycles = 2000000;
        if (!$value$plusargs("hex=%s", hex_file)) begin
            $display("[tb] ERROR: +hex=<file> is required");
            $finish;
        end
        if ($value$plusargs("vcd=%s", vcd_file)) begin
            $dumpfile(vcd_file);
            $dumpvars(0, tb_single_cycle_riscv_m);
        end

        for (int i = 0; i < UNI_WORDS; i++) uni[i] = 32'd0;
        for (int i = 0; i < 512; i++) imem[i] = 32'd0;
        for (int i = 0; i < 256; i++) dmem[i] = 32'd0;
        if (ci_mode) $readmemh(hex_file, imem);
        else         $readmemh(hex_file, uni);
        if (have_trace) trace_fd = $fopen(trace_file, "w");

        n_stores = 0;
        stall    = 1'b0;
        reset    = 1'b1;
        #12 reset = 1'b0;                    // asynchronous release between edges

        for (cycles = 0; cycles < max_cycles; cycles++) begin
            @(posedge clk);
            #1;
            if (instruction == 32'h0000_006f) finish_run("self-loop");
        end
        finish_run("timeout");
    end
endmodule
