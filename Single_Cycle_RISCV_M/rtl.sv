// -----------------------------------------------------------------------------
// rtl.sv  --  single_cycle_riscv_m
// Single-cycle RV32IM (+ Zicsr) processor core.            COD project, Group 4
//
// Every instruction (including multiply and divide) is fetched, decoded,
// executed and written back in one clock cycle.
//
//   address      -> PC of the instruction being fetched
//   instruction  <- combinational instruction memory read
//   alu_out      -> ALU result; for loads / stores the data memory address
//   rs2_data     -> store data (full rs2 value, memory does the byte lanes)
//   mem_out      <- combinational load data, already aligned and extended
//   fn3          -> funct3 of the load / store (size and signedness)
//   mem_write    -> a store executes this cycle (memory writes on the edge)
//   mem_read     -> a load executes this cycle
//
// Reset is asynchronous, active high: PC <= 0x8000_0000, registers <= 0.
// stall = 1 freezes the core (no PC update, no register / CSR / memory write).
//
// Sub-modules: rv32_imm_gen, rv32_regfile, rv32_alu, rv32m_muldiv, rv32_csr.
// FENCE / FENCE.I / ECALL / EBREAK / MRET / WFI and unknown opcodes are no-ops.
// -----------------------------------------------------------------------------
module single_cycle_riscv_m (
    input  logic        clk,
    input  logic        reset,          // asynchronous, active high
    input  logic        stall,          // driven 0 by CI
    input  logic [31:0] instruction,
    input  logic [31:0] mem_out,
    output logic [31:0] rs2_data,
    output logic [31:0] alu_out,
    output logic        mem_write,
    output logic        mem_read,
    output logic [2:0]  fn3,
    output logic [6:0]  opcode,
    output logic [31:0] address
);
    // ------------------------------------------------------------- opcodes --
    localparam logic [6:0] OP_LUI    = 7'b0110111;
    localparam logic [6:0] OP_AUIPC  = 7'b0010111;
    localparam logic [6:0] OP_JAL    = 7'b1101111;
    localparam logic [6:0] OP_JALR   = 7'b1100111;
    localparam logic [6:0] OP_BRANCH = 7'b1100011;
    localparam logic [6:0] OP_LOAD   = 7'b0000011;
    localparam logic [6:0] OP_STORE  = 7'b0100011;
    localparam logic [6:0] OP_IMM    = 7'b0010011;
    localparam logic [6:0] OP_REG    = 7'b0110011;
    localparam logic [6:0] OP_SYSTEM = 7'b1110011;

    localparam logic [6:0]  FUNCT7_MULDIV = 7'b0000001;
    localparam logic [31:0] RESET_PC      = 32'h8000_0000;

    // ------------------------------------------------------------------ PC --
    logic [31:0] pc, pc_next, pc_plus4;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)       pc <= RESET_PC;
        else if (!stall) pc <= pc_next;
    end

    assign address  = pc;
    assign pc_plus4 = pc + 32'd4;

    // -------------------------------------------------------------- decode --
    logic [6:0] op;
    logic [4:0] rd, rs1, rs2;
    logic [2:0] funct3;
    logic [6:0] funct7;

    assign op     = instruction[6:0];
    assign rd     = instruction[11:7];
    assign funct3 = instruction[14:12];
    assign rs1    = instruction[19:15];
    assign rs2    = instruction[24:20];
    assign funct7 = instruction[31:25];

    logic is_lui, is_auipc, is_jal, is_jalr, is_branch, is_load, is_store;
    logic is_opimm, is_op, is_muldiv, is_csr;

    assign is_lui    = (op == OP_LUI);
    assign is_auipc  = (op == OP_AUIPC);
    assign is_jal    = (op == OP_JAL);
    assign is_jalr   = (op == OP_JALR);
    assign is_branch = (op == OP_BRANCH);
    assign is_load   = (op == OP_LOAD);
    assign is_store  = (op == OP_STORE);
    assign is_opimm  = (op == OP_IMM);
    assign is_op     = (op == OP_REG);
    assign is_muldiv = is_op && (funct7 == FUNCT7_MULDIV);
    // CSR instructions are SYSTEM with funct3 != 000 (funct3 = 100 is reserved).
    assign is_csr    = (op == OP_SYSTEM) && (funct3[1:0] != 2'b00);

    // ---------------------------------------------------------- immediates --
    logic [31:0] imm_i, imm_s, imm_b, imm_u, imm_j;

    rv32_imm_gen u_imm (
        .instr (instruction),
        .imm_i (imm_i),
        .imm_s (imm_s),
        .imm_b (imm_b),
        .imm_u (imm_u),
        .imm_j (imm_j)
    );

    // ------------------------------------------------------- register file --
    logic        rf_we;
    logic [31:0] rf_wdata, rs1_val, rs2_val;

    rv32_regfile u_rf (
        .clk    (clk),
        .reset  (reset),
        .we     (rf_we),
        .waddr  (rd),
        .wdata  (rf_wdata),
        .raddr1 (rs1),
        .raddr2 (rs2),
        .rdata1 (rs1_val),
        .rdata2 (rs2_val)
    );

    // ----------------------------------------------------------------- ALU --
    logic [3:0]  alu_op;
    logic [31:0] alu_b, alu_y;

    always_comb begin
        if (is_op)
            alu_op = {funct7[5], funct3};                        // ADD/SUB, SRL/SRA
        else if (is_opimm)
            alu_op = {(funct3 == 3'b101) & funct7[5], funct3};   // only SRAI uses bit 30
        else
            alu_op = 4'b0_000;                                   // ADD (addresses)
    end

    assign alu_b = is_op    ? rs2_val :
                   is_store ? imm_s   :
                              imm_i;                             // OP-IMM, LOAD, JALR

    rv32_alu u_alu (
        .op (alu_op),
        .a  (rs1_val),
        .b  (alu_b),
        .y  (alu_y)
    );

    // ------------------------------------------------------- M extension --
    logic [31:0] muldiv_y;

    rv32m_muldiv u_muldiv (
        .funct3 (funct3),
        .a      (rs1_val),
        .b      (rs2_val),
        .result (muldiv_y)
    );

    // ----------------------------------------------------------------- CSR --
    logic [31:0] csr_rdata;

    rv32_csr u_csr (
        .clk     (clk),
        .reset   (reset),
        .stall   (stall),
        .csr_en  (is_csr),
        .funct3  (funct3),
        .addr    (instruction[31:20]),
        .rs1_val (rs1_val),
        .rs1_idx (rs1),
        .retire  (1'b1),
        .rdata   (csr_rdata)
    );

    // ------------------------------------------------------ branch compare --
    logic take_branch;

    always_comb begin
        case (funct3)
            3'b000:  take_branch = (rs1_val == rs2_val);                   // BEQ
            3'b001:  take_branch = (rs1_val != rs2_val);                   // BNE
            3'b100:  take_branch = ($signed(rs1_val) <  $signed(rs2_val)); // BLT
            3'b101:  take_branch = ($signed(rs1_val) >= $signed(rs2_val)); // BGE
            3'b110:  take_branch = (rs1_val <  rs2_val);                   // BLTU
            3'b111:  take_branch = (rs1_val >= rs2_val);                   // BGEU
            default: take_branch = 1'b0;
        endcase
    end

    // ------------------------------------------------------------- next PC --
    always_comb begin
        if (is_jal)
            pc_next = pc + imm_j;
        else if (is_jalr)
            pc_next = {alu_y[31:1], 1'b0};                       // (rs1 + imm) & ~1
        else if (is_branch && take_branch)
            pc_next = pc + imm_b;
        else
            pc_next = pc_plus4;
    end

    // ---------------------------------------------- execute result / WB ----
    logic [31:0] ex_result;

    always_comb begin
        if (is_lui)         ex_result = imm_u;
        else if (is_auipc)  ex_result = pc + imm_u;
        else if (is_muldiv) ex_result = muldiv_y;
        else                ex_result = alu_y;   // OP, OP-IMM, load/store address
    end

    always_comb begin
        if (is_load)                 rf_wdata = mem_out;
        else if (is_jal || is_jalr)  rf_wdata = pc_plus4;
        else if (is_csr)             rf_wdata = csr_rdata;
        else                         rf_wdata = ex_result;
    end

    assign rf_we = !stall && (is_lui || is_auipc || is_jal || is_jalr ||
                              is_load || is_opimm || is_op || is_csr);

    // ------------------------------------------------------------- outputs --
    assign alu_out   = ex_result;
    assign rs2_data  = rs2_val;
    assign mem_write = is_store && !stall;
    assign mem_read  = is_load  && !stall;
    assign fn3       = funct3;
    assign opcode    = op;
endmodule
