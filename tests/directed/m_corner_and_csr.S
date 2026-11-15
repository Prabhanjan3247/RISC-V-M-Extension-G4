# -----------------------------------------------------------------------------
# m_corner_and_csr.S - directed test (Group 4)
#
# 1. The RV32M special cases from the spec, each result stored:
#      x / 0 = -1, x % 0 = x, INT_MIN / -1 = INT_MIN, INT_MIN % -1 = 0
# 2. A small computation mixing M and I instructions (factorial, gcd).
# 3. Zicsr: CSRRW/CSRRS/CSRRC and the immediate forms on mscratch / mtvec,
#    plus misa (read-only).
# 4. FENCE / ECALL / EBREAK execute as no-ops (no store, no register write).
# The store sequence is checked against the golden model by run_random.py.
# -----------------------------------------------------------------------------
    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001              # data base

    # ---- 1. special cases ------------------------------------------------
    li    x5, 1234567
    li    x6, 0
    div   x7, x5, x6               # -1
    sw    x7, 0(x2)
    divu  x7, x5, x6               # 0xffffffff
    sw    x7, 4(x2)
    rem   x7, x5, x6               # 1234567
    sw    x7, 8(x2)
    remu  x7, x5, x6               # 1234567
    sw    x7, 12(x2)
    li    x5, 0x80000000
    li    x6, -1
    div   x7, x5, x6               # 0x80000000
    sw    x7, 16(x2)
    rem   x7, x5, x6               # 0
    sw    x7, 20(x2)
    li    x5, -7
    li    x6, 2
    div   x7, x5, x6               # -3 (round toward zero)
    sw    x7, 24(x2)
    rem   x7, x5, x6               # -1 (sign of dividend)
    sw    x7, 28(x2)
    li    x5, -1
    mulh  x7, x5, x5               # 0
    sw    x7, 32(x2)
    mulhu x7, x5, x5               # 0xfffffffe
    sw    x7, 36(x2)
    mulhsu x7, x5, x5              # 0xffffffff
    sw    x7, 40(x2)

    # ---- 2. 10! with MUL and gcd(1071, 462) with REM -----------------------
    li    x10, 1
    li    x11, 10
fact:
    mul   x10, x10, x11
    addi  x11, x11, -1
    bnez  x11, fact
    sw    x10, 44(x2)              # 3628800
    li    x12, 1071
    li    x13, 462
gcd:
    rem   x14, x12, x13
    mv    x12, x13
    mv    x13, x14
    bnez  x13, gcd
    sw    x12, 48(x2)              # 21

    # ---- 3. Zicsr -------------------------------------------------------
    li    x5, 0x12345678
    csrrw x6, mscratch, x5         # x6 = 0 (old), mscratch = 0x12345678
    sw    x6, 52(x2)
    csrrs x6, mscratch, x0         # read only
    sw    x6, 56(x2)
    li    x7, 0xff
    csrrc x6, mscratch, x7         # clear low byte
    csrr  x6, mscratch
    sw    x6, 60(x2)               # 0x12345600
    csrrwi x6, mtvec, 0x1c
    csrrsi x6, mtvec, 0x3
    csrrci x6, mtvec, 0x8
    csrr  x6, mtvec
    sw    x6, 64(x2)               # 0x17
    csrr  x6, misa
    sw    x6, 68(x2)               # 0x40001100
    csrw  misa, x0                 # read-only: ignored
    csrr  x6, misa
    sw    x6, 72(x2)

    # ---- 4. no-op system instructions -------------------------------------
    li    x8, 99
    fence
    fence.i
    ecall
    ebreak
    sw    x8, 76(x2)               # still 99, and execution continued

end:
    jal   x0, end
