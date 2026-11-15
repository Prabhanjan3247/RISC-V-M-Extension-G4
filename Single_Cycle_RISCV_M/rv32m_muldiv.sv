// -----------------------------------------------------------------------------
// rv32m_muldiv.sv
// RV32M execution unit: MUL, MULH, MULHSU, MULHU, DIV, DIVU, REM, REMU.
//
// The unit is purely combinational so the core stays single-cycle (every
// instruction, including divide, retires in one clock).
//
// Multiplier : both operands are extended to 33 bits (sign or zero, depending
//              on the instruction) and multiplied as signed 33 x 33 -> 66 bits.
//              This single signed multiplier covers all four MUL variants.
// Divider    : one unsigned 32-step restoring-division array computes the
//              quotient and the remainder of the operand magnitudes together.
//              Signs are applied afterwards (quotient sign = sign(a) ^ sign(b),
//              remainder sign = sign(a)).
//
// RISC-V special cases (no exceptions are raised):
//   x / 0         = 0xFFFF_FFFF          (DIV, DIVU)
//   x % 0         = x                    (REM, REMU)
//   -2^31 / -1    = -2^31                (DIV)
//   -2^31 % -1    = 0                    (REM)
// The overflow case falls out of the magnitude arithmetic naturally
// (|-2^31| / 1 = 0x8000_0000, positive sign -> 0x8000_0000, remainder 0);
// divide by zero is handled explicitly.
// -----------------------------------------------------------------------------
module rv32m_muldiv (
    input  logic [2:0]  funct3,
    input  logic [31:0] a,        // rs1
    input  logic [31:0] b,        // rs2
    output logic [31:0] result
);
    localparam logic [2:0] F3_MUL    = 3'b000;
    localparam logic [2:0] F3_MULH   = 3'b001;
    localparam logic [2:0] F3_MULHSU = 3'b010;
    localparam logic [2:0] F3_MULHU  = 3'b011;
    localparam logic [2:0] F3_DIV    = 3'b100;
    localparam logic [2:0] F3_DIVU   = 3'b101;
    localparam logic [2:0] F3_REM    = 3'b110;
    localparam logic [2:0] F3_REMU   = 3'b111;

    // ------------------------------------------------------------------ MUL --
    logic        a_signed_mul, b_signed_mul;
    logic [32:0] a_ext, b_ext;
    logic signed [65:0] product;

    assign a_signed_mul = (funct3 == F3_MULH) || (funct3 == F3_MULHSU);
    assign b_signed_mul = (funct3 == F3_MULH);
    assign a_ext        = {a_signed_mul & a[31], a};
    assign b_ext        = {b_signed_mul & b[31], b};
    // The 66-bit signed target makes the multiply context-determined: both
    // 33-bit operands are sign-extended to 66 bits before multiplying.
    // (Wrapping the product in $unsigned() would make it self-determined,
    // i.e. a 33-bit multiply, and lose the high word.)
    assign product      = $signed(a_ext) * $signed(b_ext);

    // ------------------------------------------------------------------ DIV --
    logic        div_signed;
    logic        a_neg, b_neg;
    logic [31:0] dividend, divisor;
    logic [31:0] q_mag, r_mag;
    logic [32:0] rem_acc;
    logic [31:0] quotient, remainder;

    assign div_signed = (funct3 == F3_DIV) || (funct3 == F3_REM);
    assign a_neg      = div_signed & a[31];
    assign b_neg      = div_signed & b[31];
    assign dividend   = a_neg ? (~a + 32'd1) : a;
    assign divisor    = b_neg ? (~b + 32'd1) : b;

    // 32-step restoring division on magnitudes (unrolled by synthesis).
    always_comb begin
        rem_acc = 33'd0;
        q_mag   = 32'd0;
        for (int i = 31; i >= 0; i--) begin
            rem_acc = {rem_acc[31:0], dividend[i]};
            if (rem_acc >= {1'b0, divisor}) begin
                rem_acc  = rem_acc - {1'b0, divisor};
                q_mag[i] = 1'b1;
            end
        end
        r_mag = rem_acc[31:0];
    end

    always_comb begin
        if (b == 32'd0) begin
            quotient  = 32'hFFFF_FFFF;
            remainder = a;
        end else begin
            quotient  = (a_neg ^ b_neg) ? (~q_mag + 32'd1) : q_mag;
            remainder = a_neg           ? (~r_mag + 32'd1) : r_mag;
        end
    end

    // --------------------------------------------------------------- RESULT --
    always_comb begin
        case (funct3)
            F3_MUL:    result = product[31:0];
            F3_MULH,
            F3_MULHSU,
            F3_MULHU:  result = product[63:32];
            F3_DIV,
            F3_DIVU:   result = quotient;
            default:   result = remainder;   // REM, REMU
        endcase
    end
endmodule
