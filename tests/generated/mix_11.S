    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x80000000
    li    x3, 0xffff0000
    li    x4, 0x3304011b
    li    x5, 0xa6ab9a79
    li    x6, 0xffffffff
    li    x7, 0xffffffff
    li    x8, 0x2
    li    x9, 0x2
    li    x10, 0x2cc748b
    li    x11, 0x0
    li    x12, 0x78ac3a1c
    li    x13, 0x1
    li    x14, 0xf834637
    li    x15, 0x9db2c2ad
    li    x16, 0x6a8b8fe8
    li    x17, 0x56a0b0a2
    li    x18, 0xdf532daf
    li    x19, 0xc5cc2c3e
    li    x20, 0x80000000
    li    x21, 0xa9cbb0ba
    li    x22, 0xb8691e85
    li    x23, 0x7cc71a47
    li    x24, 0x83b560a6
    li    x25, 0xfffffffe
    li    x26, 0x2e9f77fe
    li    x27, 0xc383d224
    li    x28, 0xaaaaaaaa
    li    x29, 0x2e8a61
    li    x30, 0xd8851d2d
    li    x31, 0xffff
    mulh   x13, x7, x12
    blt    x21, x23, L0
    or     x27, x27, x4
    slt    x26, x19, x29
    add    x23, x8, x7
L0:
    sb     x4, 838(x2)
    auipc  x27, 0
    jalr   x13, x27, 12
    mul    x22, x9, x7
L1:
    lb     x20, 480(x2)
    bgeu   x23, x23, L2
    add    x21, x18, x14
L2:
    mulhu  x21, x4, x14
    lbu    x8, 618(x2)
    mulhu  x9, x26, x12
    sub    x7, x11, x22
    lui    x5, 0xc9188
    sltiu  x19, x30, 1776
    slt    x25, x4, x27
    divu   x23, x19, x24
    sub    x3, x14, x1
    sb     x4, 420(x2)
    bge    x18, x10, L3
    mulh   x24, x18, x31
L3:
    slli   x1, x11, 18
    lb     x10, 398(x2)
    sll    x16, x28, x30
    srli   x1, x15, 5
    sb     x4, 310(x2)
    blt    x28, x12, L4
    sll    x22, x24, x12
    sll    x17, x8, x22
    xor    x26, x28, x24
L4:
    sb     x15, 360(x2)
    sh     x15, 550(x2)
    add    x16, x24, x14
    blt    x17, x16, L5
    xor    x16, x14, x9
    divu   x4, x5, x11
    sll    x6, x14, x18
L5:
    mul    x24, x27, x21
    mulhsu x10, x19, x5
    ori    x26, x4, -632
    sw     x20, 204(x2)
    sub    x24, x6, x31
    sltiu  x16, x10, -1782
    xor    x4, x11, x22
    remu   x21, x14, x7
    sltiu  x17, x22, -562
    sw     x30, 688(x2)
    slli   x5, x26, 21
    lb     x11, 328(x2)
    mul    x26, x23, x5
    or     x14, x27, x1
    bne    x18, x7, L6
    srl    x1, x17, x14
    mul    x31, x17, x15
L6:
    sw     x5, 832(x2)
    remu   x13, x1, x7
    ori    x6, x24, -1031
    srl    x24, x27, x10
    remu   x20, x27, x29
    div    x6, x21, x4
    srl    x1, x9, x13
    add    x21, x26, x17
    auipc  x27, 0
    jalr   x23, x27, 12
    mulhsu x24, x13, x5
L7:
    sb     x21, 451(x2)
    remu   x8, x20, x10
    and    x11, x17, x30
    mul    x21, x16, x16
    slti   x26, x26, 176
    auipc  x13, 0
    jalr   x4, x13, 12
    div    x31, x17, x1
L8:
    mulhsu x10, x9, x28
    sh     x11, 916(x2)
    bge    x5, x25, L9
    sll    x13, x7, x28
    mul    x11, x21, x13
    mulhu  x27, x6, x12
L9:
    srli   x20, x31, 7
    addi   x11, x9, 1444
    or     x12, x23, x10
    srai   x22, x19, 23
    mulhsu x28, x25, x20
    mulh   x8, x5, x18
    lhu    x4, 772(x2)
    ori    x11, x15, 1924
    addi   x17, x18, 1855
    divu   x19, x22, x17
    mulhsu x6, x26, x22
    lb     x28, 806(x2)
    mulhu  x7, x24, x17
    divu   x27, x28, x6
    auipc  x29, 0xebeea
    sw     x31, 336(x2)
    rem    x5, x20, x11
    sb     x12, 842(x2)
    divu   x6, x10, x9
    mulhu  x16, x11, x27
    rem    x23, x16, x23
    div    x21, x24, x12
    sh     x16, 790(x2)
    lw     x5, 240(x2)
    jal    x26, L10
    divu   x19, x31, x22
L10:
    beq    x27, x21, L11
    sltu   x13, x21, x14
    and    x20, x19, x3
    remu   x7, x13, x20
L11:
    mulh   x25, x13, x6
    bltu   x27, x19, L12
    sll    x7, x3, x12
    rem    x25, x28, x9
    mul    x25, x16, x26
L12:
    div    x26, x9, x21
    mul    x8, x13, x9
    blt    x10, x30, L13
    div    x20, x6, x13
    sub    x1, x29, x6
    rem    x23, x11, x31
L13:
    srai   x13, x7, 12
    andi   x1, x15, 1247
    bgeu   x14, x24, L14
    sub    x26, x26, x5
    sltu   x16, x10, x16
L14:
    auipc  x21, 0xb9550
    mulhu  x26, x4, x31
    slli   x12, x27, 1
    rem    x24, x5, x6
    srl    x9, x29, x19
    addi   x26, x15, 1944
    beq    x27, x16, L15
    mulhsu x11, x15, x3
L15:
    andi   x7, x4, 383
    mul    x8, x8, x17
    srai   x31, x11, 19
    remu   x12, x12, x23
    slt    x22, x12, x15
    sltiu  x24, x13, 514
    auipc  x22, 0
    jalr   x30, x22, 12
    mulhu  x1, x19, x30
L16:
    remu   x12, x20, x4
    remu   x6, x15, x8
    sh     x27, 742(x2)
    bltu   x15, x25, L17
    sra    x20, x21, x12
L17:
    sw     x31, 672(x2)
    sh     x14, 258(x2)
    lhu    x29, 344(x2)
    mul    x15, x27, x16
    lw     x13, 808(x2)
    sw     x13, 952(x2)
    and    x23, x30, x4
    sub    x30, x4, x19
    rem    x19, x26, x6
    rem    x18, x21, x8
    mulhu  x19, x16, x17
    rem    x12, x25, x18
    beq    x13, x19, L18
    sltu   x9, x12, x16
L18:
    sltiu  x20, x15, -1238
    sh     x10, 838(x2)
    sw     x23, 760(x2)
    remu   x20, x29, x11
    mulh   x15, x28, x29
    sltu   x14, x21, x5
    sw     x14, 460(x2)
    slli   x9, x18, 1
    mulhu  x4, x13, x28
    rem    x10, x10, x8
    slli   x24, x8, 25
    bne    x9, x17, L19
    and    x19, x9, x7
    remu   x20, x16, x16
L19:
    lb     x12, 493(x2)
    mul    x31, x9, x26
    divu   x21, x25, x3
    bge    x3, x11, L20
    div    x28, x13, x24
L20:
    remu   x31, x16, x7
    addi   x11, x1, -1955
    auipc  x12, 0x80674
    bge    x10, x21, L21
    div    x4, x22, x17
    rem    x20, x19, x8
L21:
    sltu   x29, x26, x23
    xor    x31, x28, x9
    mulh   x12, x23, x22
    bge    x22, x4, L22
    sra    x14, x10, x28
    remu   x29, x6, x6
L22:
    mulhu  x6, x21, x31
    andi   x5, x22, 1214
    sltu   x8, x10, x28
    sh     x26, 600(x2)
    mulhu  x15, x23, x19
    sb     x1, 922(x2)
    srl    x16, x8, x17
    slti   x20, x18, 136
    beq    x18, x25, L23
    slt    x11, x31, x8
    sra    x19, x7, x19
L23:
    and    x24, x11, x31
    mulhsu x24, x4, x31
    sub    x5, x11, x31
    sub    x8, x19, x25
    auipc  x13, 0x12a6
    slti   x18, x11, 1037
    andi   x16, x24, -1542
    div    x29, x15, x24
    mul    x21, x28, x6
    mulhsu x18, x20, x18
    remu   x29, x13, x1
    auipc  x6, 0
    jalr   x18, x6, 12
    rem    x15, x7, x26
L24:
    mulhsu x20, x8, x26
    add    x15, x25, x1
    sh     x7, 602(x2)
    slli   x26, x13, 9
    lbu    x24, 114(x2)
    sb     x20, 982(x2)
    sb     x6, 981(x2)
    sltu   x18, x25, x5
    xor    x23, x5, x7
    lw     x19, 192(x2)
    beq    x23, x8, L25
    or     x3, x10, x17
    remu   x1, x12, x3
L25:
    div    x21, x14, x14
    srl    x16, x15, x29
    sw     x25, 488(x2)
    sll    x30, x30, x15
    auipc  x5, 0
    jalr   x18, x5, 12
    mulhu  x1, x7, x15
L26:
    or     x1, x15, x1
    slli   x23, x5, 24
    xor    x30, x10, x10
    xori   x13, x15, 529
    add    x12, x5, x10
    sw     x11, 372(x2)
    bne    x28, x16, L27
    mulhu  x27, x23, x16
    mulhu  x23, x25, x18
    or     x22, x27, x5
L27:
    divu   x26, x26, x18
    bltu   x24, x24, L28
    remu   x20, x10, x16
    sll    x15, x22, x30
    remu   x7, x23, x14
L28:
    sw     x27, 412(x2)
    mul    x28, x14, x11
    ori    x30, x22, -1665
    sh     x5, 956(x2)
    mulh   x13, x28, x24
    slti   x17, x24, 1511
    sb     x12, 317(x2)
    mulh   x23, x30, x5
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
