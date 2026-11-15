// -----------------------------------------------------------------------------
// rv32_alu.sv
// RV32I integer ALU (OP / OP-IMM operations).
//
//   op encoding = {alt, funct3}
//     alt = instr[30] for SUB / SRA(I), 0 otherwise.
// -----------------------------------------------------------------------------
module rv32_alu (
    input  logic [3:0]  op,
    input  logic [31:0] a,
    input  logic [31:0] b,
    output logic [31:0] y
);
    localparam logic [3:0] ALU_ADD  = 4'b0_000;
    localparam logic [3:0] ALU_SUB  = 4'b1_000;
    localparam logic [3:0] ALU_SLL  = 4'b0_001;
    localparam logic [3:0] ALU_SLT  = 4'b0_010;
    localparam logic [3:0] ALU_SLTU = 4'b0_011;
    localparam logic [3:0] ALU_XOR  = 4'b0_100;
    localparam logic [3:0] ALU_SRL  = 4'b0_101;
    localparam logic [3:0] ALU_SRA  = 4'b1_101;
    localparam logic [3:0] ALU_OR   = 4'b0_110;
    localparam logic [3:0] ALU_AND  = 4'b0_111;

    logic [4:0] shamt;
    assign shamt = b[4:0];

    always_comb begin
        case (op)
            ALU_ADD:  y = a + b;
            ALU_SUB:  y = a - b;
            ALU_SLL:  y = a << shamt;
            ALU_SLT:  y = {31'd0, $signed(a) < $signed(b)};
            ALU_SLTU: y = {31'd0, a < b};
            ALU_XOR:  y = a ^ b;
            ALU_SRL:  y = a >> shamt;
            ALU_SRA:  y = $unsigned($signed(a) >>> shamt);
            ALU_OR:   y = a | b;
            ALU_AND:  y = a & b;
            default:  y = a + b;
        endcase
    end
endmodule
