    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x74802f3c
    li    x3, 0xffffffff
    li    x4, 0x63177c37
    li    x5, 0x63044de6
    li    x6, 0x9623a358
    li    x7, 0x352b298f
    li    x8, 0x80000001
    li    x9, 0x7746c123
    li    x10, 0x387c962a
    li    x11, 0x7fffffff
    li    x12, 0xaf4e12dd
    li    x13, 0x95fd6afb
    li    x14, 0xca9b298
    li    x15, 0x13698df3
    li    x16, 0x850c41d7
    li    x17, 0xae69eca4
    li    x18, 0xbd46e79d
    li    x19, 0x28c6dc1c
    li    x20, 0xbf9e80ba
    li    x21, 0x9dc49031
    li    x22, 0x1
    li    x23, 0xeb88f562
    li    x24, 0x45b20cd4
    li    x25, 0xfffffffe
    li    x26, 0xf11ddffe
    li    x27, 0x55555555
    li    x28, 0x4d8df64c
    li    x29, 0x0
    li    x30, 0x26ae1580
    li    x31, 0x713449e
    bltu   x26, x6, L0
    mulh   x8, x15, x15
    mul    x31, x16, x20
L0:
    mulhu  x14, x18, x21
    sb     x3, 936(x2)
    sub    x17, x3, x18
    sb     x16, 1015(x2)
    xor    x7, x26, x31
    rem    x27, x28, x28
    lw     x19, 944(x2)
    div    x26, x21, x26
    lw     x24, 348(x2)
    lh     x25, 28(x2)
    remu   x24, x4, x8
    sltiu  x29, x15, 1825
    sb     x13, 284(x2)
    bgeu   x13, x25, L1
    rem    x13, x10, x16
    mul    x7, x31, x29
L1:
    rem    x28, x29, x31
    auipc  x26, 0xdd072
    mulh   x30, x25, x3
    srl    x17, x10, x27
    andi   x17, x27, 1061
    xori   x1, x29, 1482
    mulhsu x18, x29, x16
    mul    x15, x10, x24
    add    x20, x25, x9
    lh     x14, 920(x2)
    jal    x15, L2
    remu   x24, x3, x31
L2:
    auipc  x6, 0x72633
    lh     x7, 244(x2)
    bgeu   x13, x5, L3
    sub    x28, x24, x4
L3:
    auipc  x4, 0
    jalr   x5, x4, 12
    mulhu  x12, x18, x18
L4:
    lui    x4, 0x16ac5
    and    x25, x27, x24
    and    x27, x14, x6
    mulhu  x29, x9, x17
    addi   x15, x9, 1816
    sub    x28, x7, x14
    beq    x16, x27, L5
    sll    x13, x1, x8
    mulhsu x26, x3, x22
L5:
    xori   x5, x8, -876
    or     x30, x11, x31
    sb     x11, 147(x2)
    addi   x27, x24, -2032
    lui    x25, 0xb20b2
    rem    x29, x9, x16
    lbu    x23, 58(x2)
    slt    x16, x19, x26
    lw     x16, 952(x2)
    divu   x26, x15, x3
    mul    x24, x12, x11
    srl    x23, x15, x10
    or     x13, x5, x21
    sb     x21, 707(x2)
    bne    x29, x20, L6
    mulhu  x9, x11, x10
    sra    x31, x4, x3
    mul    x17, x5, x13
L6:
    sltiu  x6, x7, 1693
    bgeu   x1, x1, L7
    divu   x25, x23, x9
    div    x18, x26, x12
    sra    x13, x5, x20
L7:
    sra    x18, x24, x12
    blt    x4, x20, L8
    xor    x7, x25, x26
L8:
    slti   x18, x4, 355
    auipc  x6, 0
    jalr   x18, x6, 12
    divu   x10, x15, x28
L9:
    andi   x28, x20, -862
    mulhsu x19, x16, x25
    mul    x5, x20, x20
    mulh   x22, x15, x14
    add    x13, x14, x6
    slti   x13, x14, -1451
    divu   x15, x22, x3
    sh     x24, 856(x2)
    lw     x29, 292(x2)
    remu   x9, x25, x1
    rem    x6, x15, x24
    lh     x31, 406(x2)
    remu   x15, x6, x28
    lui    x14, 0xed0db
    bgeu   x7, x7, L10
    srl    x17, x8, x18
    xor    x9, x16, x17
    mulhsu x5, x18, x27
L10:
    addi   x20, x17, -1016
    sltiu  x17, x9, 240
    lb     x6, 789(x2)
    beq    x16, x29, L11
    div    x23, x13, x11
    or     x22, x13, x26
L11:
    sltu   x16, x20, x20
    rem    x15, x30, x9
    sb     x23, 567(x2)
    rem    x11, x12, x11
    bgeu   x18, x9, L12
    sll    x28, x16, x3
    mulhsu x29, x8, x3
L12:
    mulh   x3, x26, x13
    lui    x29, 0x8da26
    sw     x10, 580(x2)
    mul    x13, x31, x19
    addi   x28, x27, 1675
    ori    x20, x12, -1823
    bne    x20, x25, L13
    sra    x9, x6, x28
L13:
    jal    x10, L14
    mul    x15, x18, x13
L14:
    slli   x19, x5, 14
    sw     x4, 692(x2)
    mulhu  x5, x9, x18
    srli   x19, x28, 27
    remu   x9, x12, x4
    sh     x21, 0(x2)
    sw     x25, 292(x2)
    bgeu   x26, x18, L15
    sltu   x20, x31, x1
L15:
    sw     x23, 252(x2)
    sra    x27, x20, x27
    bltu   x17, x29, L16
    slt    x5, x30, x12
L16:
    xori   x27, x27, 935
    bgeu   x23, x28, L17
    and    x21, x23, x6
    divu   x22, x21, x15
L17:
    slti   x28, x4, 1960
    mulhsu x17, x4, x14
    sh     x12, 682(x2)
    rem    x8, x1, x18
    mulhsu x12, x11, x28
    rem    x18, x30, x5
    div    x13, x5, x9
    sltiu  x4, x23, 518
    remu   x16, x13, x14
    lw     x23, 144(x2)
    sltu   x4, x29, x28
    div    x8, x25, x25
    divu   x15, x3, x19
    srl    x10, x25, x25
    slt    x4, x29, x15
    remu   x11, x1, x7
    lb     x7, 566(x2)
    bltu   x17, x25, L18
    or     x3, x13, x15
    and    x30, x18, x26
L18:
    beq    x12, x30, L19
    and    x18, x4, x14
    mul    x19, x11, x20
    sltu   x31, x14, x5
L19:
    divu   x5, x1, x6
    mul    x12, x19, x8
    lbu    x8, 30(x2)
    sltiu  x6, x11, -118
    bne    x11, x16, L20
    sra    x25, x21, x16
    sll    x14, x15, x26
L20:
    and    x9, x27, x7
    sra    x29, x8, x3
    mul    x5, x12, x10
    beq    x12, x29, L21
    slt    x29, x16, x24
    sltu   x6, x21, x9
    sll    x4, x14, x17
L21:
    mul    x29, x18, x12
    bge    x10, x31, L22
    remu   x30, x29, x23
L22:
    rem    x30, x10, x1
    sh     x15, 410(x2)
    div    x22, x19, x24
    remu   x18, x3, x17
    xor    x26, x18, x6
    or     x11, x21, x20
    sb     x11, 273(x2)
    remu   x26, x9, x12
    sub    x7, x3, x21
    srl    x13, x22, x9
    sll    x20, x18, x6
    div    x16, x5, x10
    mulh   x14, x9, x25
    mulhsu x22, x26, x24
    sb     x11, 425(x2)
    lhu    x15, 720(x2)
    srli   x14, x12, 22
    slt    x29, x24, x20
    slli   x16, x12, 29
    mulh   x3, x18, x14
    auipc  x6, 0x25566
    lbu    x26, 602(x2)
    lbu    x9, 678(x2)
    srai   x1, x5, 18
    remu   x12, x8, x31
    or     x16, x21, x31
    jal    x25, L23
    remu   x11, x29, x18
L23:
    divu   x1, x25, x21
    mulhu  x18, x13, x10
    add    x3, x6, x17
    sh     x24, 332(x2)
    sw     x17, 220(x2)
    sh     x29, 586(x2)
    sh     x20, 258(x2)
    rem    x19, x18, x28
    and    x23, x24, x30
    sw     x27, 496(x2)
    bne    x26, x3, L24
    or     x16, x17, x17
L24:
    ori    x1, x7, -243
    bgeu   x18, x23, L25
    sub    x24, x5, x3
    or     x5, x5, x28
    div    x28, x14, x9
L25:
    sb     x24, 547(x2)
    addi   x22, x11, 1889
    sw     x14, 944(x2)
    sub    x11, x25, x4
    xori   x7, x16, 622
    lbu    x1, 805(x2)
    lbu    x1, 336(x2)
    lw     x11, 124(x2)
    bne    x25, x6, L26
    add    x6, x18, x14
L26:
    sh     x4, 332(x2)
    jal    x19, L27
    remu   x20, x11, x31
L27:
    slti   x8, x14, -1014
    mulhu  x17, x19, x28
    divu   x16, x17, x7
    sb     x10, 831(x2)
    lhu    x3, 168(x2)
    bgeu   x10, x25, L28
    slt    x25, x24, x20
    sll    x22, x15, x19
L28:
    sw     x12, 548(x2)
    xori   x17, x28, 1911
    rem    x4, x20, x16
    div    x5, x22, x13
    sra    x16, x10, x30
    sh     x27, 268(x2)
    lb     x16, 992(x2)
    bgeu   x6, x30, L29
    slt    x3, x6, x31
    xor    x28, x23, x5
L29:
    andi   x13, x15, 596
    mulhu  x23, x30, x11
    mulhu  x31, x6, x5
    mulhsu x12, x9, x14
    ori    x1, x4, 1281
    or     x7, x26, x16
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
