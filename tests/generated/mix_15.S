    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x3b3a2266
    li    x3, 0x829fde92
    li    x4, 0xf8696d6a
    li    x5, 0xffffffff
    li    x6, 0x85fbc107
    li    x7, 0x98e382f9
    li    x8, 0x55e8d7b1
    li    x9, 0xe092b9fd
    li    x10, 0x1
    li    x11, 0x2
    li    x12, 0x1
    li    x13, 0xf524297c
    li    x14, 0xd3f492b4
    li    x15, 0x55555555
    li    x16, 0xffffffff
    li    x17, 0xbd148edb
    li    x18, 0x8b62a7af
    li    x19, 0x1
    li    x20, 0xffffffff
    li    x21, 0x80000000
    li    x22, 0x5817f9f8
    li    x23, 0x4ba6dfdb
    li    x24, 0x764fa6f1
    li    x25, 0xf110451
    li    x26, 0x693324c6
    li    x27, 0xf0d73dc4
    li    x28, 0x3
    li    x29, 0x1
    li    x30, 0xf0fbdee7
    li    x31, 0x85ec0e6b
    mulhu  x4, x28, x13
    sw     x5, 568(x2)
    auipc  x10, 0
    jalr   x1, x10, 12
    divu   x18, x22, x25
L0:
    lbu    x9, 697(x2)
    mulhu  x8, x29, x3
    blt    x21, x22, L1
    remu   x4, x29, x17
    rem    x18, x18, x13
    sltu   x14, x26, x13
L1:
    auipc  x24, 0
    jalr   x29, x24, 12
    divu   x30, x23, x20
L2:
    add    x8, x10, x14
    bge    x7, x26, L3
    or     x26, x3, x23
    sra    x10, x31, x9
L3:
    blt    x31, x19, L4
    add    x31, x7, x4
L4:
    mulh   x26, x6, x22
    auipc  x30, 0x689d2
    sb     x3, 225(x2)
    srl    x7, x12, x28
    div    x17, x4, x17
    lui    x29, 0xf11fc
    sll    x27, x12, x4
    xori   x28, x25, 1451
    sb     x27, 685(x2)
    lbu    x19, 640(x2)
    sw     x8, 152(x2)
    mulhsu x3, x30, x15
    sub    x27, x30, x12
    ori    x7, x3, -1610
    rem    x18, x22, x3
    sh     x19, 32(x2)
    mulhsu x10, x7, x9
    xor    x19, x5, x15
    bltu   x14, x18, L5
    divu   x21, x6, x6
L5:
    sb     x6, 671(x2)
    mul    x23, x24, x22
    slt    x18, x11, x13
    divu   x9, x27, x3
    addi   x23, x15, -1115
    slli   x9, x25, 0
    lhu    x18, 368(x2)
    mulh   x29, x14, x20
    auipc  x31, 0
    jalr   x27, x31, 12
    mulhsu x6, x22, x20
L6:
    lbu    x1, 299(x2)
    blt    x14, x26, L7
    mulh   x11, x19, x7
    rem    x27, x24, x17
    add    x16, x11, x30
L7:
    remu   x14, x25, x6
    ori    x15, x18, -89
    sw     x22, 452(x2)
    remu   x27, x10, x7
    bne    x4, x26, L8
    div    x30, x12, x26
    srl    x4, x30, x11
    sltu   x25, x20, x11
L8:
    sb     x15, 552(x2)
    mulhsu x26, x26, x30
    div    x28, x28, x5
    and    x29, x29, x9
    div    x27, x22, x30
    div    x9, x20, x21
    divu   x25, x14, x10
    lbu    x9, 950(x2)
    slli   x26, x6, 14
    lw     x15, 728(x2)
    auipc  x18, 0
    jalr   x12, x18, 12
    mulhu  x1, x9, x5
L9:
    mulhsu x1, x17, x14
    mulh   x4, x19, x21
    lb     x3, 322(x2)
    ori    x27, x12, 1352
    auipc  x3, 0
    jalr   x31, x3, 12
    rem    x17, x24, x5
L10:
    lbu    x26, 349(x2)
    div    x11, x24, x29
    mulhu  x9, x10, x16
    div    x3, x6, x25
    lw     x26, 264(x2)
    auipc  x5, 0
    jalr   x27, x5, 12
    mulh   x14, x24, x20
L11:
    bgeu   x4, x5, L12
    mul    x18, x31, x31
L12:
    sltu   x31, x9, x7
    sltu   x14, x14, x10
    div    x4, x27, x5
    lw     x27, 904(x2)
    jal    x24, L13
    div    x24, x21, x11
L13:
    xori   x16, x11, 67
    jal    x17, L14
    mulhsu x22, x23, x29
L14:
    ori    x26, x19, 1029
    div    x25, x31, x18
    sll    x20, x14, x24
    sra    x3, x3, x26
    sw     x14, 384(x2)
    lh     x5, 526(x2)
    div    x12, x10, x15
    lhu    x1, 772(x2)
    rem    x5, x13, x4
    ori    x24, x8, 1765
    sra    x14, x4, x10
    lbu    x15, 489(x2)
    remu   x26, x22, x13
    remu   x9, x18, x16
    and    x3, x15, x10
    lw     x13, 472(x2)
    srl    x4, x30, x17
    mul    x25, x3, x19
    xor    x6, x1, x25
    remu   x13, x4, x24
    rem    x3, x22, x1
    rem    x23, x15, x20
    sb     x17, 486(x2)
    mulhsu x3, x14, x25
    mulh   x8, x30, x12
    lh     x19, 978(x2)
    mul    x9, x28, x25
    sll    x6, x10, x22
    rem    x20, x3, x15
    or     x11, x18, x18
    and    x4, x31, x5
    ori    x1, x28, -1802
    auipc  x9, 0
    jalr   x11, x9, 12
    remu   x30, x30, x16
L15:
    mulh   x5, x7, x8
    lw     x20, 964(x2)
    sra    x3, x20, x12
    mul    x29, x22, x13
    div    x8, x7, x22
    sw     x8, 116(x2)
    mulh   x27, x12, x11
    rem    x19, x16, x29
    mulh   x23, x7, x19
    jal    x16, L16
    mulhsu x29, x8, x31
L16:
    sltiu  x21, x24, 1435
    mul    x21, x23, x7
    lbu    x14, 861(x2)
    bge    x8, x9, L17
    slt    x18, x4, x8
    or     x9, x13, x25
    remu   x29, x1, x25
L17:
    sh     x20, 714(x2)
    remu   x13, x25, x28
    xori   x9, x11, -648
    remu   x24, x7, x27
    addi   x5, x7, 905
    srl    x10, x23, x28
    divu   x7, x20, x4
    sh     x11, 728(x2)
    ori    x15, x3, -1260
    beq    x6, x31, L18
    mul    x14, x8, x6
    sll    x27, x18, x9
L18:
    remu   x3, x12, x27
    xor    x28, x11, x8
    blt    x26, x22, L19
    sll    x15, x16, x11
L19:
    mul    x30, x20, x28
    remu   x18, x5, x6
    addi   x26, x16, -1338
    blt    x17, x6, L20
    sra    x30, x11, x16
    sra    x31, x12, x16
L20:
    mulhsu x11, x9, x7
    bne    x18, x31, L21
    mulh   x6, x13, x10
    rem    x17, x6, x23
    mulh   x31, x11, x27
L21:
    bgeu   x18, x31, L22
    slt    x28, x9, x11
    mul    x28, x6, x13
    and    x12, x8, x29
L22:
    lw     x1, 804(x2)
    bge    x13, x4, L23
    or     x14, x7, x31
L23:
    div    x21, x7, x27
    sw     x26, 320(x2)
    add    x7, x9, x24
    remu   x10, x23, x28
    sub    x5, x18, x1
    ori    x24, x19, 1716
    xori   x10, x24, 629
    lb     x22, 940(x2)
    sh     x15, 750(x2)
    lh     x15, 704(x2)
    sub    x25, x21, x24
    mulh   x25, x20, x9
    bgeu   x11, x6, L24
    add    x1, x7, x7
    sra    x9, x22, x18
    divu   x7, x28, x1
L24:
    auipc  x3, 0xa8fa3
    rem    x15, x12, x28
    xori   x8, x21, -692
    remu   x17, x23, x19
    divu   x4, x5, x14
    mulhsu x16, x1, x25
    slti   x28, x11, -803
    jal    x19, L25
    mulhu  x19, x12, x19
L25:
    slt    x15, x13, x9
    lui    x29, 0x94fe6
    or     x9, x13, x16
    andi   x6, x15, -443
    lui    x13, 0x43248
    lb     x4, 14(x2)
    sh     x1, 414(x2)
    sw     x3, 424(x2)
    srai   x18, x1, 20
    add    x15, x20, x16
    sh     x25, 174(x2)
    bgeu   x17, x13, L26
    sltu   x12, x7, x8
L26:
    addi   x1, x24, 1632
    srli   x31, x14, 28
    sll    x21, x9, x6
    lhu    x4, 628(x2)
    lhu    x16, 594(x2)
    jal    x3, L27
    remu   x9, x12, x26
L27:
    mul    x1, x7, x29
    sra    x3, x27, x16
    lbu    x28, 246(x2)
    sb     x13, 341(x2)
    rem    x9, x9, x6
    mulh   x1, x12, x22
    xori   x13, x18, 775
    mul    x5, x14, x16
    mulhu  x22, x6, x12
    auipc  x12, 0xb4548
    bge    x15, x22, L28
    mul    x11, x11, x4
L28:
    mulhu  x8, x24, x28
    srai   x17, x9, 0
    and    x14, x11, x24
    mul    x20, x26, x24
    divu   x13, x9, x31
    lbu    x13, 313(x2)
    sw     x3, 344(x2)
    rem    x10, x28, x31
    sw     x27, 516(x2)
    xor    x10, x21, x19
    mul    x19, x23, x4
    mulhu  x8, x7, x13
    xor    x6, x13, x21
    lb     x15, 452(x2)
    rem    x15, x28, x1
    mulhsu x20, x11, x6
    auipc  x10, 0
    jalr   x24, x10, 12
    rem    x17, x5, x5
L29:
    divu   x18, x1, x22
    sub    x9, x17, x15
    remu   x15, x31, x25
    lb     x18, 829(x2)
    lb     x13, 478(x2)
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
