    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x7fffffff
    li    x3, 0xa4bd552b
    li    x4, 0xaaaaaaaa
    li    x5, 0x6f18c141
    li    x6, 0x228711a1
    li    x7, 0x1340c5d9
    li    x8, 0xd02fd321
    li    x9, 0x80000000
    li    x10, 0x8ff6d35c
    li    x11, 0x80000001
    li    x12, 0xe9e2ac11
    li    x13, 0x7666e90
    li    x14, 0x940e463e
    li    x15, 0x6e3e396
    li    x16, 0x15a371a5
    li    x17, 0x3682c9f4
    li    x18, 0xd30d93e7
    li    x19, 0xa06e8c1e
    li    x20, 0xb37718fa
    li    x21, 0xfffffffe
    li    x22, 0x3786dcf3
    li    x23, 0x7fffffff
    li    x24, 0x0
    li    x25, 0x1
    li    x26, 0xd17a68ee
    li    x27, 0x7fffffff
    li    x28, 0xf31042f3
    li    x29, 0x1
    li    x30, 0x80000000
    li    x31, 0x3
    srli   x17, x13, 9
    addi   x19, x3, 335
    or     x17, x21, x16
    add    x11, x25, x24
    sh     x12, 344(x2)
    sw     x9, 828(x2)
    and    x17, x23, x19
    sb     x13, 869(x2)
    sh     x13, 374(x2)
    sltiu  x31, x15, -1784
    mul    x31, x7, x28
    slti   x21, x25, -1025
    sh     x8, 496(x2)
    mulhu  x16, x24, x8
    srli   x6, x29, 7
    mulh   x12, x6, x1
    rem    x11, x9, x20
    divu   x14, x14, x27
    divu   x14, x21, x9
    lh     x21, 724(x2)
    slti   x14, x7, -674
    mulh   x23, x14, x17
    mulhu  x3, x24, x3
    remu   x15, x31, x29
    lbu    x27, 317(x2)
    sb     x5, 207(x2)
    and    x28, x6, x29
    lw     x18, 488(x2)
    mulh   x3, x19, x11
    or     x19, x18, x9
    srai   x14, x16, 8
    srl    x24, x29, x19
    sh     x25, 946(x2)
    mulhsu x24, x14, x20
    srli   x17, x22, 5
    slti   x15, x17, 330
    div    x14, x22, x6
    jal    x17, L0
    mul    x10, x10, x31
L0:
    andi   x8, x20, -1392
    sh     x15, 710(x2)
    auipc  x14, 0x23167
    divu   x18, x22, x22
    auipc  x19, 0xa1f87
    mulhsu x16, x8, x28
    mul    x30, x5, x26
    auipc  x22, 0
    jalr   x10, x22, 12
    rem    x27, x29, x17
L1:
    auipc  x6, 0
    jalr   x10, x6, 12
    div    x22, x12, x3
L2:
    sb     x27, 991(x2)
    remu   x4, x9, x26
    or     x16, x16, x11
    srai   x28, x29, 15
    andi   x12, x13, -1057
    xor    x23, x13, x18
    mulhu  x5, x1, x3
    auipc  x26, 0xcf28
    mul    x14, x31, x6
    divu   x9, x15, x11
    lhu    x7, 288(x2)
    sb     x9, 387(x2)
    jal    x27, L3
    divu   x8, x25, x9
L3:
    slli   x9, x20, 26
    sh     x16, 1018(x2)
    jal    x19, L4
    div    x21, x29, x4
L4:
    lw     x15, 436(x2)
    add    x20, x30, x1
    xor    x4, x21, x12
    div    x7, x26, x18
    srl    x22, x5, x7
    mulhsu x11, x1, x30
    remu   x17, x14, x25
    sh     x13, 674(x2)
    divu   x9, x5, x30
    divu   x3, x7, x22
    auipc  x3, 0
    jalr   x27, x3, 12
    mulh   x22, x6, x20
L5:
    mul    x25, x21, x25
    beq    x17, x6, L6
    mulhu  x9, x11, x24
    mulh   x5, x20, x9
    mulhsu x14, x9, x30
L6:
    srl    x24, x20, x22
    jal    x8, L7
    mulhu  x3, x16, x8
L7:
    auipc  x26, 0xbb0fd
    divu   x20, x8, x4
    sh     x28, 846(x2)
    slli   x18, x18, 11
    slti   x7, x27, -737
    jal    x15, L8
    mulh   x5, x30, x28
L8:
    div    x24, x10, x12
    mulhu  x4, x25, x27
    xor    x26, x30, x14
    xori   x8, x28, 351
    and    x26, x16, x7
    remu   x4, x1, x3
    mulhu  x23, x9, x20
    div    x23, x23, x22
    divu   x26, x13, x15
    andi   x27, x12, -997
    sra    x5, x15, x5
    mul    x15, x21, x26
    bgeu   x6, x26, L9
    remu   x6, x6, x28
    divu   x12, x12, x6
L9:
    bne    x25, x1, L10
    sltu   x16, x1, x9
    add    x11, x30, x10
L10:
    andi   x14, x3, 197
    jal    x8, L11
    mul    x9, x11, x10
L11:
    lb     x5, 382(x2)
    sb     x11, 468(x2)
    lb     x28, 897(x2)
    sb     x23, 216(x2)
    mulhu  x5, x31, x15
    mul    x23, x21, x5
    mulh   x31, x5, x12
    auipc  x6, 0
    jalr   x26, x6, 12
    remu   x18, x10, x29
L12:
    mul    x16, x31, x4
    sb     x31, 47(x2)
    addi   x13, x7, -1440
    sh     x1, 46(x2)
    rem    x31, x27, x21
    rem    x14, x20, x22
    bge    x23, x4, L13
    mulh   x11, x10, x30
    sub    x1, x29, x22
    rem    x6, x20, x17
L13:
    div    x30, x6, x7
    bne    x5, x30, L14
    sll    x16, x6, x17
    mulh   x7, x5, x20
L14:
    ori    x5, x5, 977
    sw     x4, 100(x2)
    mul    x30, x10, x19
    xori   x17, x3, -989
    slt    x21, x17, x18
    lui    x10, 0x74254
    and    x21, x13, x25
    mul    x29, x26, x19
    sub    x13, x27, x25
    mulh   x31, x7, x18
    slli   x30, x11, 21
    sh     x3, 74(x2)
    mul    x17, x23, x28
    bge    x24, x19, L15
    sll    x9, x31, x28
L15:
    mul    x4, x28, x20
    sltiu  x31, x3, 1344
    jal    x26, L16
    mulhu  x23, x31, x20
L16:
    div    x15, x6, x17
    addi   x28, x8, 1064
    remu   x6, x24, x7
    div    x17, x1, x7
    sb     x31, 385(x2)
    andi   x23, x7, -1957
    remu   x27, x1, x10
    mul    x9, x19, x6
    srli   x30, x28, 18
    xori   x23, x23, -630
    lbu    x6, 51(x2)
    rem    x23, x11, x3
    div    x21, x12, x16
    remu   x28, x20, x11
    bltu   x7, x23, L17
    sll    x4, x17, x6
L17:
    sb     x23, 658(x2)
    rem    x15, x24, x19
    lhu    x29, 886(x2)
    sw     x16, 80(x2)
    div    x23, x14, x15
    mul    x30, x1, x8
    slt    x13, x31, x26
    rem    x27, x30, x18
    bne    x10, x24, L18
    slt    x15, x25, x9
    and    x6, x30, x23
L18:
    lhu    x3, 720(x2)
    lb     x6, 317(x2)
    sb     x4, 328(x2)
    rem    x16, x22, x19
    auipc  x1, 0
    jalr   x20, x1, 12
    mulhu  x20, x10, x30
L19:
    lb     x19, 160(x2)
    xori   x26, x10, -358
    bltu   x13, x18, L20
    sra    x4, x12, x7
    mul    x12, x26, x3
    sra    x31, x5, x22
L20:
    bge    x19, x11, L21
    remu   x14, x31, x10
    sltu   x3, x17, x26
L21:
    rem    x5, x19, x23
    slt    x27, x18, x13
    remu   x7, x24, x13
    xor    x4, x22, x10
    jal    x11, L22
    rem    x20, x31, x7
L22:
    blt    x31, x31, L23
    slt    x7, x16, x25
    mulh   x12, x12, x4
    sltu   x28, x8, x5
L23:
    divu   x30, x16, x10
    sw     x7, 560(x2)
    mul    x22, x1, x19
    mul    x27, x6, x26
    sh     x27, 822(x2)
    srl    x20, x5, x23
    remu   x29, x28, x15
    mulhu  x5, x31, x17
    bge    x25, x31, L24
    sra    x25, x28, x31
L24:
    sw     x14, 768(x2)
    remu   x5, x21, x19
    lhu    x14, 598(x2)
    lbu    x25, 178(x2)
    divu   x19, x19, x25
    slti   x16, x14, 232
    sltiu  x8, x1, 1660
    sw     x19, 668(x2)
    mulh   x10, x14, x15
    slli   x17, x3, 11
    mulhsu x5, x20, x23
    blt    x28, x29, L25
    mulhu  x29, x5, x17
    sltu   x12, x15, x23
    mulh   x29, x13, x8
L25:
    slti   x1, x15, 2045
    xor    x28, x13, x10
    mulhsu x3, x28, x23
    and    x7, x1, x18
    divu   x25, x5, x4
    remu   x5, x1, x16
    add    x25, x24, x10
    lbu    x10, 862(x2)
    xori   x14, x14, 61
    mulhsu x3, x27, x13
    bne    x21, x4, L26
    sltu   x18, x3, x18
    mulhsu x9, x8, x13
    mul    x28, x30, x30
L26:
    sb     x23, 944(x2)
    sw     x14, 232(x2)
    div    x6, x8, x13
    sltu   x30, x8, x23
    lb     x6, 662(x2)
    mulh   x29, x23, x7
    xori   x22, x21, -353
    sw     x9, 224(x2)
    lui    x12, 0xdb29e
    sb     x11, 285(x2)
    div    x6, x11, x17
    remu   x14, x17, x29
    mulhsu x15, x6, x31
    bltu   x20, x10, L27
    div    x5, x30, x12
    divu   x18, x9, x14
    rem    x17, x5, x21
L27:
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
