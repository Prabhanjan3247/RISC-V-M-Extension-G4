    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x6c126908
    li    x3, 0x2
    li    x4, 0x0
    li    x5, 0x1084f587
    li    x6, 0x1
    li    x7, 0xf02ddfde
    li    x8, 0x67993a71
    li    x9, 0x22e8b2c9
    li    x10, 0xebecca50
    li    x11, 0x6bdeaf6e
    li    x12, 0xcd21d4b1
    li    x13, 0x4ed4f7b2
    li    x14, 0x7fffffff
    li    x15, 0xdeedfc20
    li    x16, 0x9fff0ac9
    li    x17, 0x0
    li    x18, 0xabc237e9
    li    x19, 0x7c54df24
    li    x20, 0xc6844659
    li    x21, 0xe16a1595
    li    x22, 0x7fffffff
    li    x23, 0xd7def4aa
    li    x24, 0x1
    li    x25, 0x6a058afc
    li    x26, 0xa5fa5add
    li    x27, 0xffff0000
    li    x28, 0xb0847c93
    li    x29, 0x6fedc28f
    li    x30, 0x180ccdc5
    li    x31, 0x3387ec6
    sra    x11, x10, x25
    srai   x10, x28, 5
    divu   x21, x24, x19
    sh     x5, 980(x2)
    auipc  x15, 0xbad9
    beq    x16, x19, L0
    mul    x18, x18, x11
    div    x3, x30, x5
    sra    x29, x25, x25
L0:
    rem    x21, x31, x22
    slt    x27, x6, x22
    auipc  x21, 0
    jalr   x9, x21, 12
    mulhsu x19, x10, x24
L1:
    addi   x4, x21, -411
    andi   x31, x20, -1458
    lw     x28, 280(x2)
    bne    x9, x13, L2
    sltu   x11, x7, x11
    sra    x6, x5, x16
    remu   x15, x20, x28
L2:
    srai   x21, x23, 9
    auipc  x1, 0xc18fc
    remu   x22, x10, x23
    divu   x21, x11, x17
    sub    x26, x29, x3
    add    x11, x14, x25
    divu   x12, x18, x21
    mul    x19, x10, x31
    and    x14, x27, x22
    sb     x18, 977(x2)
    divu   x28, x28, x27
    mulhu  x8, x20, x8
    slt    x22, x27, x16
    div    x27, x1, x28
    mulh   x19, x22, x27
    lbu    x13, 488(x2)
    mulh   x14, x29, x6
    bge    x29, x25, L3
    divu   x10, x26, x9
L3:
    slt    x19, x18, x22
    rem    x16, x25, x15
    mul    x13, x21, x23
    mulhu  x15, x7, x19
    jal    x30, L4
    mul    x25, x3, x5
L4:
    blt    x11, x16, L5
    mul    x17, x25, x6
L5:
    lhu    x20, 926(x2)
    sw     x14, 444(x2)
    addi   x31, x18, 1151
    jal    x8, L6
    mulhu  x11, x18, x13
L6:
    lbu    x31, 21(x2)
    sw     x10, 268(x2)
    ori    x26, x11, 1350
    slti   x14, x21, -343
    sw     x13, 244(x2)
    sh     x18, 378(x2)
    divu   x26, x20, x21
    remu   x29, x20, x3
    sb     x17, 586(x2)
    jal    x30, L7
    div    x13, x5, x10
L7:
    sltiu  x27, x30, 1754
    sltiu  x15, x9, 753
    mulh   x7, x5, x23
    sll    x21, x20, x15
    remu   x15, x6, x10
    remu   x14, x28, x11
    sltu   x12, x5, x3
    blt    x13, x13, L8
    sra    x27, x31, x31
    mulhsu x18, x14, x22
L8:
    mul    x11, x8, x27
    mulhsu x27, x18, x4
    bne    x28, x3, L9
    rem    x7, x26, x25
    mul    x27, x27, x18
L9:
    mulhsu x5, x8, x1
    lhu    x28, 536(x2)
    sltiu  x5, x24, 1658
    lui    x20, 0x6338d
    auipc  x26, 0
    jalr   x12, x26, 12
    mulh   x4, x27, x22
L10:
    divu   x20, x6, x31
    lw     x27, 536(x2)
    sb     x21, 631(x2)
    sltiu  x16, x4, -471
    sw     x29, 392(x2)
    lw     x22, 560(x2)
    bltu   x12, x14, L11
    add    x30, x11, x28
    or     x12, x11, x13
L11:
    mul    x27, x10, x14
    lhu    x4, 548(x2)
    addi   x14, x16, -1644
    srli   x19, x30, 17
    xori   x24, x16, -407
    sw     x20, 464(x2)
    bgeu   x29, x28, L12
    xor    x24, x26, x24
    div    x28, x10, x14
L12:
    div    x4, x13, x27
    div    x16, x25, x21
    lh     x29, 598(x2)
    bne    x10, x23, L13
    mulh   x26, x24, x30
    mulhsu x20, x8, x6
L13:
    and    x26, x26, x11
    sltiu  x28, x14, -1090
    lui    x22, 0x28ff4
    or     x19, x7, x24
    mulhsu x14, x7, x1
    sb     x28, 17(x2)
    add    x5, x16, x30
    addi   x8, x5, -1485
    sb     x19, 256(x2)
    mulh   x10, x15, x16
    rem    x28, x16, x15
    ori    x12, x26, 1468
    sltu   x19, x16, x18
    ori    x17, x17, -940
    and    x19, x24, x4
    sh     x28, 356(x2)
    div    x1, x12, x23
    bgeu   x29, x11, L14
    add    x6, x25, x21
L14:
    divu   x9, x31, x24
    sh     x24, 896(x2)
    add    x21, x26, x13
    lui    x25, 0xaa4ad
    sb     x16, 526(x2)
    mul    x31, x6, x11
    and    x13, x28, x9
    bge    x27, x16, L15
    mulh   x24, x18, x11
    sltu   x14, x6, x30
L15:
    sh     x25, 1010(x2)
    lhu    x15, 96(x2)
    srli   x10, x25, 20
    sw     x31, 352(x2)
    sb     x18, 980(x2)
    lui    x29, 0xf9cb4
    auipc  x27, 0
    jalr   x28, x27, 12
    mul    x10, x5, x14
L16:
    div    x11, x18, x8
    rem    x13, x10, x19
    bne    x22, x3, L17
    sra    x17, x21, x20
    sub    x26, x5, x3
    or     x12, x8, x7
L17:
    divu   x25, x29, x19
    div    x30, x1, x29
    remu   x25, x10, x16
    mulh   x4, x7, x22
    mulhsu x21, x16, x19
    and    x23, x20, x9
    sltu   x5, x16, x15
    bgeu   x14, x18, L18
    div    x13, x24, x23
L18:
    div    x26, x10, x15
    bgeu   x24, x1, L19
    sll    x22, x24, x22
    srl    x18, x4, x11
L19:
    slt    x17, x12, x1
    rem    x12, x7, x7
    sh     x5, 58(x2)
    sll    x22, x23, x10
    sh     x23, 116(x2)
    sltiu  x11, x18, 417
    lb     x3, 406(x2)
    bne    x19, x22, L20
    rem    x30, x29, x20
L20:
    add    x20, x3, x1
    add    x26, x11, x12
    mulh   x10, x23, x29
    add    x14, x27, x18
    bgeu   x16, x21, L21
    srl    x6, x6, x29
    xor    x1, x23, x24
L21:
    lb     x5, 629(x2)
    remu   x7, x23, x18
    mulhu  x12, x15, x26
    mulhu  x20, x11, x6
    mulhu  x26, x27, x29
    addi   x19, x24, 900
    sw     x1, 0(x2)
    jal    x17, L22
    mulh   x27, x25, x25
L22:
    addi   x7, x9, 103
    andi   x12, x21, -1344
    lb     x31, 833(x2)
    remu   x11, x17, x14
    mulhsu x13, x16, x21
    divu   x1, x18, x26
    mul    x19, x22, x27
    lw     x17, 308(x2)
    bge    x10, x17, L23
    add    x15, x28, x13
    mulhu  x12, x20, x26
    remu   x5, x21, x9
L23:
    beq    x11, x17, L24
    mulh   x24, x17, x23
L24:
    div    x14, x11, x11
    sw     x3, 1020(x2)
    mulhsu x3, x14, x19
    sw     x8, 920(x2)
    auipc  x3, 0x5d517
    xori   x9, x28, 150
    slti   x1, x16, 1894
    or     x16, x19, x10
    sb     x25, 940(x2)
    or     x25, x6, x1
    sw     x30, 724(x2)
    lb     x3, 59(x2)
    mul    x31, x24, x29
    remu   x8, x22, x17
    addi   x12, x28, -1503
    sra    x22, x24, x5
    mulhsu x17, x17, x12
    mul    x18, x19, x26
    sw     x6, 496(x2)
    lw     x18, 440(x2)
    sb     x31, 544(x2)
    sh     x17, 244(x2)
    jal    x30, L25
    mulh   x6, x14, x6
L25:
    beq    x21, x10, L26
    and    x22, x14, x25
    sra    x1, x6, x15
    add    x6, x8, x30
L26:
    mulh   x20, x30, x12
    mulhu  x27, x16, x7
    mul    x23, x23, x12
    mulh   x23, x4, x29
    div    x20, x25, x5
    lh     x25, 410(x2)
    sh     x9, 660(x2)
    divu   x7, x18, x16
    sltu   x17, x8, x14
    lh     x27, 610(x2)
    add    x28, x23, x14
    srl    x20, x5, x1
    bgeu   x12, x20, L27
    or     x21, x10, x10
    sltu   x9, x7, x4
L27:
    ori    x9, x11, 377
    sltu   x9, x5, x20
    sll    x8, x21, x6
    mul    x26, x12, x18
    mulh   x10, x11, x19
    remu   x19, x4, x27
    xori   x4, x22, -762
    remu   x12, x11, x14
    bgeu   x16, x3, L28
    or     x21, x12, x8
L28:
    srli   x31, x6, 20
    rem    x1, x12, x28
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
