    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x80000001
    li    x3, 0x23328ed4
    li    x4, 0xffff
    li    x5, 0x1
    li    x6, 0xa13334d4
    li    x7, 0xfd68cc0e
    li    x8, 0xfffffffe
    li    x9, 0x1fc9325e
    li    x10, 0xffff
    li    x11, 0x55555555
    li    x12, 0x55555555
    li    x13, 0x692a2c28
    li    x14, 0x1
    li    x15, 0x5c075055
    li    x16, 0x5126cf38
    li    x17, 0x75a5b536
    li    x18, 0x60a834f7
    li    x19, 0xdb719a0c
    li    x20, 0x23148e1e
    li    x21, 0x3d17a753
    li    x22, 0x6a90438a
    li    x23, 0x80000001
    li    x24, 0x69b1b408
    li    x25, 0x8b5ed4e4
    li    x26, 0x6b3678f
    li    x27, 0x47372980
    li    x28, 0x3a432310
    li    x29, 0xa8320827
    li    x30, 0x7a6e4fcc
    li    x31, 0x3f28d7da
    bge    x21, x21, L0
    rem    x15, x17, x12
    rem    x15, x23, x28
    srl    x4, x6, x19
L0:
    mul    x24, x21, x4
    remu   x26, x12, x19
    mul    x4, x24, x30
    andi   x1, x8, 1259
    ori    x19, x7, -1321
    bgeu   x20, x18, L1
    sub    x24, x19, x5
L1:
    div    x24, x22, x1
    bge    x30, x25, L2
    mul    x27, x21, x25
    sltu   x1, x13, x27
L2:
    mulhsu x25, x1, x23
    mulhsu x1, x6, x3
    mul    x4, x17, x7
    rem    x31, x17, x28
    andi   x25, x7, 12
    remu   x29, x26, x12
    remu   x17, x15, x3
    sh     x15, 784(x2)
    srli   x26, x14, 29
    slt    x5, x12, x17
    lh     x12, 406(x2)
    bgeu   x7, x23, L3
    sra    x17, x3, x29
    divu   x19, x24, x5
    add    x1, x21, x19
L3:
    lb     x31, 78(x2)
    sw     x7, 972(x2)
    lhu    x28, 148(x2)
    mulh   x29, x20, x9
    divu   x13, x26, x23
    mulh   x19, x29, x13
    slli   x27, x14, 23
    sb     x31, 853(x2)
    mulh   x13, x24, x27
    beq    x14, x28, L4
    mulh   x20, x21, x31
    sub    x16, x30, x1
    sltu   x27, x6, x1
L4:
    lb     x27, 774(x2)
    divu   x20, x25, x5
    lhu    x29, 292(x2)
    and    x1, x28, x24
    srl    x10, x8, x17
    mulhu  x17, x21, x28
    beq    x1, x21, L5
    sub    x5, x17, x7
    srl    x1, x7, x24
L5:
    xori   x14, x30, 1468
    lui    x14, 0xa443d
    mulhu  x23, x19, x18
    slt    x28, x25, x12
    addi   x29, x20, -1431
    auipc  x13, 0
    jalr   x28, x13, 12
    mulh   x18, x4, x16
L6:
    slt    x12, x12, x12
    blt    x28, x4, L7
    div    x11, x11, x15
    sub    x26, x7, x14
    mul    x3, x27, x11
L7:
    lbu    x29, 418(x2)
    slti   x24, x27, -1025
    mulhu  x25, x8, x18
    lhu    x4, 604(x2)
    blt    x19, x10, L8
    sll    x21, x18, x28
L8:
    slli   x14, x16, 24
    slli   x5, x6, 13
    remu   x22, x20, x27
    rem    x18, x31, x15
    lbu    x29, 456(x2)
    sh     x28, 212(x2)
    lh     x16, 714(x2)
    lh     x8, 728(x2)
    sh     x14, 254(x2)
    auipc  x29, 0x7c6fb
    sub    x11, x17, x30
    sb     x26, 613(x2)
    bge    x23, x4, L9
    sra    x13, x24, x12
L9:
    lbu    x31, 67(x2)
    and    x30, x22, x22
    remu   x30, x9, x7
    add    x5, x5, x4
    blt    x7, x4, L10
    rem    x8, x18, x21
    mulh   x21, x12, x18
    sub    x3, x27, x3
L10:
    and    x11, x22, x14
    xori   x13, x24, 311
    sw     x25, 900(x2)
    lh     x21, 754(x2)
    auipc  x12, 0
    jalr   x4, x12, 12
    rem    x31, x29, x22
L11:
    div    x12, x22, x14
    mulh   x28, x30, x5
    mulhsu x29, x11, x8
    mulhsu x24, x15, x7
    rem    x24, x15, x9
    slli   x1, x17, 30
    div    x26, x25, x28
    mulh   x23, x18, x15
    mulh   x13, x4, x26
    xor    x1, x30, x12
    mulhu  x27, x27, x11
    mulhsu x19, x14, x11
    sltiu  x25, x22, 1152
    mulhu  x6, x27, x13
    mulh   x10, x3, x10
    rem    x22, x29, x5
    lbu    x26, 494(x2)
    lbu    x21, 1000(x2)
    srli   x29, x16, 27
    sll    x24, x14, x28
    sb     x8, 285(x2)
    srli   x25, x28, 20
    mulhu  x4, x25, x4
    sh     x14, 358(x2)
    mul    x17, x16, x13
    remu   x30, x6, x3
    jal    x1, L12
    mulhsu x26, x13, x14
L12:
    sltu   x26, x29, x8
    mulhsu x15, x20, x16
    bge    x10, x8, L13
    mulhu  x15, x25, x13
    and    x21, x7, x20
    mulh   x5, x25, x11
L13:
    lh     x24, 976(x2)
    lbu    x21, 818(x2)
    bge    x14, x5, L14
    xor    x19, x14, x24
    add    x10, x13, x14
L14:
    sb     x7, 131(x2)
    xori   x4, x5, -92
    andi   x16, x17, -608
    div    x23, x27, x24
    srli   x17, x5, 12
    sh     x31, 28(x2)
    sltu   x16, x9, x30
    sb     x30, 396(x2)
    auipc  x29, 0
    jalr   x28, x29, 12
    rem    x13, x18, x17
L15:
    slti   x1, x31, 565
    remu   x15, x3, x12
    auipc  x6, 0x71f4d
    bne    x17, x17, L16
    slt    x23, x16, x17
    mulh   x15, x30, x11
L16:
    sh     x21, 1002(x2)
    lhu    x9, 86(x2)
    remu   x14, x25, x16
    mulhsu x4, x20, x13
    lbu    x22, 654(x2)
    xor    x21, x6, x6
    divu   x16, x26, x15
    sltiu  x30, x29, -131
    lh     x5, 418(x2)
    jal    x11, L17
    div    x12, x3, x19
L17:
    sh     x10, 42(x2)
    auipc  x28, 0
    jalr   x25, x28, 12
    mulhsu x5, x31, x5
L18:
    lbu    x22, 190(x2)
    remu   x15, x25, x24
    jal    x30, L19
    divu   x8, x14, x14
L19:
    mulhsu x6, x17, x29
    mulhsu x3, x25, x27
    bne    x27, x8, L20
    and    x23, x21, x23
L20:
    srl    x24, x10, x12
    sw     x11, 872(x2)
    srl    x3, x4, x7
    mulhu  x26, x22, x7
    lh     x29, 234(x2)
    sw     x27, 932(x2)
    lh     x17, 860(x2)
    mulhu  x20, x13, x15
    andi   x26, x27, 843
    lh     x10, 490(x2)
    sb     x31, 119(x2)
    lh     x17, 218(x2)
    rem    x11, x12, x23
    lbu    x31, 407(x2)
    slt    x8, x16, x29
    sh     x14, 648(x2)
    rem    x5, x8, x20
    slti   x15, x15, 1245
    div    x14, x30, x9
    slt    x23, x6, x9
    remu   x11, x30, x28
    mulh   x6, x22, x21
    sh     x4, 818(x2)
    sb     x9, 75(x2)
    lbu    x9, 597(x2)
    mul    x20, x4, x21
    srl    x11, x14, x28
    blt    x12, x28, L21
    and    x3, x24, x30
L21:
    jal    x10, L22
    rem    x29, x25, x14
L22:
    sltiu  x13, x22, -4
    lbu    x26, 743(x2)
    sb     x16, 1006(x2)
    sw     x22, 548(x2)
    bgeu   x29, x12, L23
    remu   x28, x14, x3
    sub    x10, x12, x9
L23:
    srli   x23, x17, 20
    sh     x23, 506(x2)
    mulh   x15, x6, x30
    bltu   x22, x31, L24
    or     x17, x9, x21
    mulhsu x21, x12, x22
    or     x13, x8, x21
L24:
    slli   x26, x17, 19
    mulhu  x16, x24, x10
    sub    x12, x12, x24
    mulhsu x23, x28, x31
    sw     x4, 812(x2)
    slli   x20, x21, 27
    blt    x27, x1, L25
    mulhu  x21, x16, x24
L25:
    mulh   x10, x10, x6
    rem    x9, x28, x22
    sb     x3, 481(x2)
    or     x25, x18, x11
    srl    x12, x13, x11
    blt    x28, x20, L26
    add    x18, x13, x22
L26:
    ori    x13, x9, 1574
    rem    x11, x3, x10
    lh     x22, 854(x2)
    lb     x21, 133(x2)
    remu   x30, x18, x1
    srai   x8, x31, 14
    div    x17, x23, x16
    rem    x15, x12, x6
    lb     x4, 111(x2)
    sb     x21, 145(x2)
    beq    x20, x9, L27
    sub    x7, x18, x17
L27:
    beq    x23, x23, L28
    remu   x29, x16, x12
    mulhu  x10, x26, x16
L28:
    andi   x3, x27, -1556
    mulhsu x6, x9, x17
    mulhu  x5, x15, x14
    divu   x22, x19, x14
    slt    x16, x27, x30
    divu   x11, x16, x17
    mulhsu x25, x26, x17
    bge    x4, x27, L29
    sll    x15, x25, x24
L29:
    sw     x1, 0(x2)
    sw     x3, 4(x2)
    sw     x4, 8(x2)
    sw     x5, 12(x2)
    sw     x6, 16(x2)
    sw     x7, 20(x2)
    sw     x8, 24(x2)
    sw     x9, 28(x2)
    sw     x10, 32(x2)
    sw     x11, 36(x2)
    sw     x12, 40(x2)
    sw     x13, 44(x2)
    sw     x14, 48(x2)
    sw     x15, 52(x2)
    sw     x16, 56(x2)
    sw     x17, 60(x2)
    sw     x18, 64(x2)
    sw     x19, 68(x2)
    sw     x20, 72(x2)
    sw     x21, 76(x2)
    sw     x22, 80(x2)
    sw     x23, 84(x2)
    sw     x24, 88(x2)
    sw     x25, 92(x2)
    sw     x26, 96(x2)
    sw     x27, 100(x2)
    sw     x28, 104(x2)
    sw     x29, 108(x2)
    sw     x30, 112(x2)
    sw     x31, 116(x2)
end:
    jal   x0, end              # self-loop: end of test
