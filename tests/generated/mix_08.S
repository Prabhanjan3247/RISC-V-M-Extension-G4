    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xac2d20c5
    li    x3, 0x1ac58826
    li    x4, 0x827b17be
    li    x5, 0x2f9bd3c1
    li    x6, 0x3db6dfcd
    li    x7, 0x9646ed87
    li    x8, 0x80496ae1
    li    x9, 0xaaaaaaaa
    li    x10, 0x3
    li    x11, 0x21cfa295
    li    x12, 0xf44b6e9
    li    x13, 0xfa1d3c07
    li    x14, 0x5b41e6c
    li    x15, 0xfffffffe
    li    x16, 0xaf8f5c92
    li    x17, 0x844a9511
    li    x18, 0x80000000
    li    x19, 0x75b4e6fc
    li    x20, 0xfffffffd
    li    x21, 0xa49439e4
    li    x22, 0x3c10b72b
    li    x23, 0x56a14167
    li    x24, 0x7d13f6f2
    li    x25, 0x4069f1de
    li    x26, 0xffffffff
    li    x27, 0x2
    li    x28, 0x0
    li    x29, 0xe34cc979
    li    x30, 0xa79c751d
    li    x31, 0xa316f7a2
    mulh   x23, x9, x10
    remu   x27, x16, x23
    slli   x1, x10, 31
    auipc  x10, 0
    jalr   x29, x10, 12
    mulh   x1, x29, x31
L0:
    bgeu   x28, x16, L1
    add    x11, x17, x27
    sltu   x7, x7, x15
L1:
    sltu   x7, x4, x17
    add    x26, x18, x13
    sb     x28, 678(x2)
    div    x5, x24, x25
    sub    x26, x6, x19
    sh     x21, 346(x2)
    div    x14, x23, x21
    ori    x18, x31, 1438
    rem    x21, x20, x3
    div    x29, x10, x23
    sh     x24, 36(x2)
    mulhu  x4, x9, x27
    sll    x16, x14, x11
    lw     x8, 576(x2)
    rem    x14, x4, x18
    bltu   x25, x18, L2
    or     x13, x31, x5
    remu   x18, x5, x29
    mulhsu x1, x19, x15
L2:
    lui    x8, 0x5a1c9
    lui    x28, 0xa7ba6
    slli   x5, x5, 12
    sra    x12, x13, x6
    slti   x23, x24, 942
    sh     x9, 996(x2)
    remu   x9, x6, x1
    bltu   x15, x13, L3
    mulh   x26, x23, x24
    remu   x17, x18, x5
L3:
    sll    x15, x19, x26
    sb     x23, 216(x2)
    sra    x23, x16, x9
    slti   x3, x23, 1875
    and    x21, x30, x10
    bge    x11, x29, L4
    xor    x30, x20, x30
L4:
    div    x25, x26, x19
    lh     x8, 350(x2)
    divu   x31, x21, x26
    remu   x30, x12, x19
    jal    x11, L5
    mulhu  x3, x5, x8
L5:
    remu   x17, x13, x8
    mulhsu x21, x11, x14
    andi   x24, x12, -1756
    bge    x24, x24, L6
    divu   x17, x3, x28
L6:
    remu   x8, x8, x17
    lbu    x23, 309(x2)
    sh     x3, 574(x2)
    remu   x16, x7, x4
    mulh   x24, x27, x23
    ori    x13, x22, -331
    lhu    x31, 576(x2)
    sw     x30, 240(x2)
    sb     x21, 505(x2)
    lb     x8, 550(x2)
    auipc  x10, 0
    jalr   x10, x10, 12
    div    x12, x7, x16
L7:
    lbu    x16, 41(x2)
    div    x30, x3, x18
    sb     x21, 439(x2)
    mulh   x24, x19, x28
    lb     x12, 460(x2)
    div    x1, x12, x13
    lh     x27, 346(x2)
    div    x28, x25, x23
    sra    x31, x21, x5
    sra    x6, x19, x15
    sw     x22, 616(x2)
    sh     x11, 688(x2)
    sh     x1, 270(x2)
    xori   x15, x15, 1200
    srl    x19, x6, x15
    sw     x19, 880(x2)
    add    x28, x5, x27
    blt    x8, x27, L8
    sub    x26, x11, x12
    xor    x22, x17, x7
L8:
    lbu    x31, 160(x2)
    slti   x15, x15, -1338
    mulhu  x27, x19, x23
    lh     x1, 236(x2)
    jal    x4, L9
    mulhu  x26, x7, x21
L9:
    remu   x1, x10, x26
    sw     x1, 1008(x2)
    srli   x10, x21, 27
    divu   x21, x9, x4
    sw     x11, 872(x2)
    xor    x3, x27, x15
    remu   x13, x19, x7
    bltu   x9, x4, L10
    mulh   x10, x31, x26
L10:
    sh     x4, 950(x2)
    mulhu  x11, x16, x14
    jal    x5, L11
    remu   x23, x1, x1
L11:
    mulhu  x9, x8, x4
    slt    x8, x18, x6
    jal    x4, L12
    mul    x29, x1, x18
L12:
    mulh   x19, x9, x23
    mul    x10, x12, x9
    mulh   x24, x28, x19
    mul    x10, x3, x5
    sll    x20, x21, x8
    sb     x31, 830(x2)
    beq    x9, x16, L13
    sltu   x31, x26, x17
    or     x14, x11, x4
L13:
    remu   x24, x20, x21
    sb     x6, 32(x2)
    jal    x6, L14
    remu   x14, x4, x4
L14:
    beq    x11, x31, L15
    slt    x24, x30, x19
L15:
    auipc  x1, 0xb3403
    slt    x7, x5, x31
    lw     x13, 532(x2)
    sw     x28, 560(x2)
    sw     x26, 460(x2)
    div    x27, x5, x10
    mulh   x5, x12, x16
    lbu    x26, 572(x2)
    lui    x16, 0x69f9d
    sh     x27, 802(x2)
    sh     x23, 336(x2)
    remu   x11, x15, x11
    lui    x22, 0x5b7b1
    beq    x27, x23, L16
    sll    x24, x30, x23
    sra    x20, x10, x14
    sra    x9, x10, x29
L16:
    sb     x27, 418(x2)
    srai   x7, x12, 5
    sw     x16, 292(x2)
    mul    x14, x15, x21
    bge    x23, x18, L17
    mulh   x3, x5, x23
    add    x22, x11, x11
    and    x18, x23, x5
L17:
    bltu   x4, x9, L18
    mulh   x17, x24, x23
    add    x17, x3, x12
L18:
    ori    x6, x3, 1966
    sltu   x6, x6, x28
    bne    x31, x27, L19
    mulh   x7, x4, x19
    divu   x21, x18, x11
L19:
    sra    x20, x22, x10
    srl    x21, x17, x12
    lbu    x30, 498(x2)
    auipc  x8, 0
    jalr   x14, x8, 12
    mulh   x19, x11, x6
L20:
    mulhsu x8, x22, x26
    srli   x12, x4, 4
    slt    x18, x20, x8
    andi   x22, x4, 1315
    andi   x8, x6, 1385
    bgeu   x24, x21, L21
    mulhu  x17, x6, x8
L21:
    lhu    x30, 712(x2)
    blt    x9, x28, L22
    sltu   x14, x18, x9
    divu   x14, x9, x9
    srl    x10, x16, x31
L22:
    mulhsu x11, x13, x7
    remu   x27, x16, x16
    lh     x14, 416(x2)
    remu   x24, x1, x22
    sra    x8, x19, x10
    mulhu  x9, x18, x12
    mulhsu x22, x14, x19
    add    x25, x13, x27
    remu   x14, x7, x26
    sub    x16, x27, x9
    or     x19, x3, x25
    sub    x13, x11, x11
    sh     x7, 14(x2)
    mulhsu x14, x26, x18
    divu   x8, x12, x28
    sb     x13, 348(x2)
    lui    x7, 0x96044
    addi   x29, x24, -1757
    jal    x15, L23
    mulh   x4, x9, x13
L23:
    lh     x4, 494(x2)
    slli   x12, x24, 12
    sll    x8, x9, x22
    lb     x6, 571(x2)
    or     x26, x3, x7
    lui    x14, 0xf2b49
    andi   x16, x27, 435
    mulhu  x20, x27, x23
    mulh   x16, x29, x17
    rem    x26, x3, x25
    slli   x6, x12, 11
    sh     x27, 378(x2)
    sll    x23, x19, x8
    auipc  x29, 0
    jalr   x9, x29, 12
    mulhu  x28, x3, x24
L24:
    sb     x9, 1015(x2)
    lh     x1, 730(x2)
    slli   x10, x7, 26
    sh     x15, 952(x2)
    auipc  x25, 0
    jalr   x8, x25, 12
    rem    x20, x16, x8
L25:
    bgeu   x29, x28, L26
    and    x19, x26, x9
    mulhsu x10, x29, x28
    rem    x19, x6, x8
L26:
    lh     x23, 1020(x2)
    sll    x28, x11, x15
    mulh   x11, x13, x1
    divu   x24, x31, x22
    bgeu   x8, x29, L27
    divu   x26, x14, x1
L27:
    bge    x15, x4, L28
    mulh   x25, x14, x27
L28:
    slli   x14, x24, 24
    slli   x24, x25, 3
    xor    x3, x8, x24
    mulhu  x24, x27, x12
    div    x27, x29, x7
    rem    x13, x17, x1
    remu   x24, x9, x24
    lbu    x4, 778(x2)
    remu   x21, x19, x15
    beq    x13, x12, L29
    mulhu  x5, x1, x29
    mulhu  x27, x30, x13
    sub    x28, x6, x21
L29:
    lw     x11, 952(x2)
    sw     x4, 680(x2)
    rem    x20, x26, x27
    slt    x16, x3, x16
    sub    x22, x29, x28
    addi   x7, x10, 1305
    bgeu   x24, x23, L30
    divu   x20, x26, x14
L30:
    div    x1, x5, x20
    sw     x7, 84(x2)
    sw     x4, 712(x2)
    blt    x21, x23, L31
    slt    x25, x23, x25
    rem    x11, x9, x8
    mulhsu x15, x5, x21
L31:
    slt    x10, x4, x10
    srli   x4, x5, 15
    beq    x18, x31, L32
    and    x22, x28, x24
    div    x20, x29, x30
L32:
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
