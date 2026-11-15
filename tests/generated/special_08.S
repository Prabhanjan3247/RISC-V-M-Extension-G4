    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x10, 0xfffffffd
    li    x11, 0x55555555
    mul   x12, x10, x11
    sw    x12, 0(x2)
    mulh  x12, x10, x11
    sw    x12, 4(x2)
    mulhsu x12, x10, x11
    sw    x12, 8(x2)
    mulhu x12, x10, x11
    sw    x12, 12(x2)
    div   x12, x10, x11
    sw    x12, 16(x2)
    divu  x12, x10, x11
    sw    x12, 20(x2)
    rem   x12, x10, x11
    sw    x12, 24(x2)
    remu  x12, x10, x11
    sw    x12, 28(x2)
    li    x10, 0xfffffffd
    li    x11, 0xaaaaaaaa
    mul   x12, x10, x11
    sw    x12, 32(x2)
    mulh  x12, x10, x11
    sw    x12, 36(x2)
    mulhsu x12, x10, x11
    sw    x12, 40(x2)
    mulhu x12, x10, x11
    sw    x12, 44(x2)
    div   x12, x10, x11
    sw    x12, 48(x2)
    divu  x12, x10, x11
    sw    x12, 52(x2)
    rem   x12, x10, x11
    sw    x12, 56(x2)
    remu  x12, x10, x11
    sw    x12, 60(x2)
    li    x10, 0xfffffffd
    li    x11, 0x3
    mul   x12, x10, x11
    sw    x12, 64(x2)
    mulh  x12, x10, x11
    sw    x12, 68(x2)
    mulhsu x12, x10, x11
    sw    x12, 72(x2)
    mulhu x12, x10, x11
    sw    x12, 76(x2)
    div   x12, x10, x11
    sw    x12, 80(x2)
    divu  x12, x10, x11
    sw    x12, 84(x2)
    rem   x12, x10, x11
    sw    x12, 88(x2)
    remu  x12, x10, x11
    sw    x12, 92(x2)
    li    x10, 0xfffffffd
    li    x11, 0xfffffffd
    mul   x12, x10, x11
    sw    x12, 96(x2)
    mulh  x12, x10, x11
    sw    x12, 100(x2)
    mulhsu x12, x10, x11
    sw    x12, 104(x2)
    mulhu x12, x10, x11
    sw    x12, 108(x2)
    div   x12, x10, x11
    sw    x12, 112(x2)
    divu  x12, x10, x11
    sw    x12, 116(x2)
    rem   x12, x10, x11
    sw    x12, 120(x2)
    remu  x12, x10, x11
    sw    x12, 124(x2)
end:
    jal   x0, end              # self-loop: end of test
