// -----------------------------------------------------------------------------
// rv32_csr.sv
// Minimal machine-mode CSR file for the Zicsr instructions
// (CSRRW, CSRRS, CSRRC, CSRRWI, CSRRSI, CSRRCI).
//
// No traps or interrupts are implemented (ECALL / EBREAK / MRET execute as
// no-ops in this core), so the trap CSRs are plain read/write scratch
// registers. Unknown CSRs read as zero and ignore writes.
//
//   0x300 mstatus   RW      0x301 misa     RO (RV32IM)
//   0x304 mie       RW      0x305 mtvec    RW
//   0x340 mscratch  RW      0x341 mepc     RW (bits [1:0] read as 0)
//   0x342 mcause    RW      0x343 mtval    RW
//   0x344 mip       RW
//   0xB00/0xB80 mcycle[h]   RW   0xB02/0xB82 minstret[h] RW
//   0xC00/0xC80 cycle[h]    RO   0xC02/0xC82 instret[h]  RO
//   0xF11..0xF14 mvendorid / marchid / mimpid / mhartid  RO, read 0
// -----------------------------------------------------------------------------
module rv32_csr (
    input  logic        clk,
    input  logic        reset,
    input  logic        stall,
    input  logic        csr_en,      // a CSR instruction is executing
    input  logic [2:0]  funct3,      // CSR operation
    input  logic [11:0] addr,
    input  logic [31:0] rs1_val,
    input  logic [4:0]  rs1_idx,     // rs1 index, or zimm for the *I forms
    input  logic        retire,      // an instruction retires this cycle
    output logic [31:0] rdata
);
    localparam logic [31:0] MISA_VALUE = 32'h4000_1100; // MXL=1, I, M

    logic [31:0] mstatus, mie, mtvec, mscratch, mepc, mcause, mtval, mip;
    logic [63:0] mcycle, minstret;

    // ------------------------------------------------------------ read port --
    always_comb begin
        case (addr)
            12'h300: rdata = mstatus;
            12'h301: rdata = MISA_VALUE;
            12'h304: rdata = mie;
            12'h305: rdata = mtvec;
            12'h340: rdata = mscratch;
            12'h341: rdata = {mepc[31:2], 2'b00};
            12'h342: rdata = mcause;
            12'h343: rdata = mtval;
            12'h344: rdata = mip;
            12'hB00, 12'hC00: rdata = mcycle[31:0];
            12'hB80, 12'hC80: rdata = mcycle[63:32];
            12'hB02, 12'hC02: rdata = minstret[31:0];
            12'hB82, 12'hC82: rdata = minstret[63:32];
            default: rdata = 32'd0;
        endcase
    end

    // ------------------------------------------------------- write value ----
    logic [31:0] operand, wdata;
    logic        do_write;

    assign operand = funct3[2] ? {27'd0, rs1_idx} : rs1_val;

    always_comb begin
        case (funct3[1:0])
            2'b01:   wdata = operand;              // CSRRW(I)
            2'b10:   wdata = rdata | operand;      // CSRRS(I)
            2'b11:   wdata = rdata & ~operand;     // CSRRC(I)
            default: wdata = rdata;
        endcase
    end

    // CSRRS/CSRRC with rs1 = x0 (or zimm = 0) do not write the CSR.
    assign do_write = csr_en && !stall &&
                      ((funct3[1:0] == 2'b01) || (rs1_idx != 5'd0));

    // ------------------------------------------------------------ registers --
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            mstatus  <= 32'd0;
            mie      <= 32'd0;
            mtvec    <= 32'd0;
            mscratch <= 32'd0;
            mepc     <= 32'd0;
            mcause   <= 32'd0;
            mtval    <= 32'd0;
            mip      <= 32'd0;
            mcycle   <= 64'd0;
            minstret <= 64'd0;
        end else begin
            // Free-running counters (an explicit CSR write takes priority).
            mcycle <= mcycle + 64'd1;
            if (retire && !stall) minstret <= minstret + 64'd1;

            if (do_write) begin
                case (addr)
                    12'h300: mstatus  <= wdata;
                    12'h304: mie      <= wdata;
                    12'h305: mtvec    <= wdata;
                    12'h340: mscratch <= wdata;
                    12'h341: mepc     <= wdata;
                    12'h342: mcause   <= wdata;
                    12'h343: mtval    <= wdata;
                    12'h344: mip      <= wdata;
                    12'hB00: mcycle[31:0]    <= wdata;
                    12'hB80: mcycle[63:32]   <= wdata;
                    12'hB02: minstret[31:0]  <= wdata;
                    12'hB82: minstret[63:32] <= wdata;
                    default: ;
                endcase
            end
        end
    end
endmodule
