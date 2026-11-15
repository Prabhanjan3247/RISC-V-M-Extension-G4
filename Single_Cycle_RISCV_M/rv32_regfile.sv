// -----------------------------------------------------------------------------
// rv32_regfile.sv
// 32 x 32-bit register file, two combinational read ports, one synchronous
// write port. x0 is hard-wired to zero (it is not stored at all).
// Reset is asynchronous and active high: every register is cleared.
// -----------------------------------------------------------------------------
module rv32_regfile (
    input  logic        clk,
    input  logic        reset,
    input  logic        we,
    input  logic [4:0]  waddr,
    input  logic [31:0] wdata,
    input  logic [4:0]  raddr1,
    input  logic [4:0]  raddr2,
    output logic [31:0] rdata1,
    output logic [31:0] rdata2
);
    logic [31:0] regs [1:31];

    // Clear with a for loop (Yosys 0.33 cannot parse '{default: 0}).
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            for (int i = 1; i < 32; i++) regs[i] <= 32'd0;
        end else if (we && (waddr != 5'd0)) begin
            regs[waddr] <= wdata;
        end
    end

    assign rdata1 = (raddr1 == 5'd0) ? 32'd0 : regs[raddr1];
    assign rdata2 = (raddr2 == 5'd0) ? 32'd0 : regs[raddr2];
endmodule
