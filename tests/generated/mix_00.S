    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x42969a50
    li    x3, 0x7776c655
    li    x4, 0xd3801b73
    li    x5, 0x6f29a9f1
    li    x6, 0xe842997d
    li    x7, 0xfffffffe
    li    x8, 0xeab42bd6
    li    x9, 0x703e53cf
    li    x10, 0xc8fb4456
    li    x11, 0x4242c225
    li    x12, 0xf71bd135
    li    x13, 0x7fffffff
    li    x14, 0x7aa95416
    li    x15, 0xa60741f3
    li    x16, 0x80000001
    li    x17, 0x31d06d9c
    li    x18, 0x694baad6
    li    x19, 0x0
    li    x20, 0x80000001
    li    x21, 0xeea33d4e
    li    x22, 0x9c31b930
    li    x23, 0x3f724926
    li    x24, 0x0
    li    x25, 0xf4d475ec
    li    x26, 0x3
    li    x27, 0x279e6933
    li    x28, 0x55555555
    li    x29, 0xc4ffc64e
    li    x30, 0xdc56dc87
    li    x31, 0xb870e4e1
    bltu   x9, x17, L0
    div    x21, x30, x24
    or     x11, x4, x15
    divu   x31, x6, x27
L0:
    lbu    x18, 626(x2)
    sll    x18, x27, x8
    sub    x14, x30, x4
    divu   x22, x13, x31
    lw     x18, 52(x2)
    andi   x11, x16, 622
    bge    x16, x20, L1
    divu   x6, x20, x18
    rem    x15, x21, x12
    srl    x21, x9, x23
L1:
    sb     x3, 817(x2)
    mulhsu x3, x22, x19
    beq    x16, x29, L2
    rem    x17, x24, x23
    mul    x6, x22, x18
    rem    x27, x30, x18
L2:
    bne    x7, x23, L3
    sltu   x10, x15, x19
L3:
    sub    x14, x11, x7
    sltu   x16, x17, x26
    lhu    x7, 956(x2)
    sra    x16, x5, x18
    lhu    x29, 192(x2)
    mul    x4, x30, x16
    sh     x1, 372(x2)
    sll    x13, x19, x23
    srai   x8, x5, 17
    srai   x25, x8, 18
    srai   x19, x6, 6
    lw     x7, 892(x2)
    mul    x26, x13, x25
    lw     x10, 640(x2)
    slli   x11, x31, 20
    div    x4, x1, x15
    blt    x15, x1, L4
    mulhu  x9, x1, x11
L4:
    divu   x12, x26, x16
    lui    x31, 0x67790
    slt    x21, x16, x15
    auipc  x23, 0
    jalr   x13, x23, 12
    div    x14, x11, x28
L5:
    srl    x30, x1, x11
    sh     x11, 250(x2)
    lhu    x19, 40(x2)
    jal    x3, L6
    mulh   x7, x21, x5
L6:
    mulhsu x18, x13, x21
    sb     x1, 618(x2)
    sll    x13, x15, x14
    srl    x23, x9, x26
    mul    x23, x24, x31
    ori    x14, x30, 40
    lh     x1, 46(x2)
    remu   x15, x10, x12
    mulh   x28, x7, x19
    div    x12, x22, x18
    lhu    x23, 114(x2)
    lh     x3, 962(x2)
    auipc  x29, 0
    jalr   x6, x29, 12
    rem    x24, x13, x27
L7:
    div    x12, x29, x8
    sra    x22, x16, x19
    lbu    x8, 639(x2)
    rem    x6, x17, x30
    divu   x28, x28, x18
    sw     x4, 352(x2)
    div    x6, x24, x25
    mul    x19, x8, x29
    lbu    x20, 628(x2)
    rem    x14, x19, x18
    lh     x4, 214(x2)
    rem    x12, x19, x10
    and    x23, x27, x8
    div    x11, x19, x11
    srl    x8, x25, x22
    remu   x15, x13, x27
    lbu    x25, 349(x2)
    slti   x12, x19, -863
    mulh   x18, x23, x30
    sw     x4, 764(x2)
    slt    x19, x6, x21
    lui    x5, 0xfc2b2
    sub    x29, x28, x25
    div    x21, x11, x22
    remu   x31, x17, x5
    slli   x28, x13, 29
    blt    x4, x4, L8
    sra    x26, x11, x10
L8:
    lh     x12, 344(x2)
    or     x12, x12, x31
    bgeu   x29, x17, L9
    sll    x7, x8, x27
    srl    x9, x29, x24
L9:
    blt    x15, x28, L10
    sltu   x8, x6, x16
    div    x15, x10, x12
    mulhu  x12, x10, x28
L10:
    blt    x6, x19, L11
    add    x9, x12, x6
    and    x26, x5, x10
    sub    x20, x16, x22
L11:
    add    x19, x24, x12
    sh     x23, 194(x2)
    lb     x15, 429(x2)
    xor    x3, x31, x14
    sw     x19, 544(x2)
    sw     x20, 684(x2)
    sh     x29, 974(x2)
    blt    x1, x3, L12
    mulhu  x23, x29, x10
L12:
    slt    x27, x16, x18
    divu   x4, x19, x24
    mul    x5, x6, x12
    auipc  x8, 0
    jalr   x21, x8, 12
    mulhsu x24, x11, x4
L13:
    srai   x18, x23, 8
    div    x15, x3, x7
    srai   x9, x31, 30
    sh     x13, 702(x2)
    sra    x10, x17, x30
    sltu   x3, x22, x17
    remu   x27, x13, x10
    lb     x13, 407(x2)
    rem    x11, x8, x20
    rem    x29, x4, x25
    sb     x17, 611(x2)
    auipc  x17, 0x51643
    sh     x4, 370(x2)
    auipc  x7, 0
    jalr   x26, x7, 12
    div    x29, x18, x18
L14:
    bgeu   x5, x31, L15
    rem    x1, x16, x9
    rem    x15, x18, x29
    or     x6, x18, x8
L15:
    lhu    x6, 1000(x2)
    srli   x13, x22, 25
    andi   x19, x8, -803
    lui    x25, 0x24dbb
    mul    x27, x23, x29
    div    x28, x7, x6
    divu   x6, x16, x7
    mul    x26, x7, x23
    remu   x31, x19, x1
    or     x13, x30, x19
    rem    x6, x30, x12
    mul    x17, x1, x3
    div    x12, x26, x1
    mulhu  x29, x28, x4
    srl    x8, x28, x28
    mulhu  x23, x17, x8
    or     x29, x15, x25
    xor    x24, x8, x11
    auipc  x31, 0xf2ab7
    srli   x4, x30, 13
    sw     x13, 160(x2)
    sb     x5, 323(x2)
    rem    x8, x30, x15
    mulhsu x22, x30, x31
    sh     x25, 588(x2)
    add    x17, x18, x16
    blt    x17, x6, L16
    div    x19, x9, x13
L16:
    ori    x22, x20, -1653
    bgeu   x19, x12, L17
    mulhsu x16, x16, x13
    and    x28, x27, x18
L17:
    lw     x11, 564(x2)
    mul    x4, x18, x31
    addi   x14, x27, 1695
    lui    x6, 0xe5eec
    add    x5, x14, x4
    div    x1, x3, x25
    auipc  x18, 0
    jalr   x5, x18, 12
    divu   x24, x6, x11
L18:
    jal    x24, L19
    remu   x24, x9, x14
L19:
    divu   x15, x3, x17
    mulhsu x16, x8, x26
    remu   x20, x14, x17
    xori   x8, x14, -1770
    slti   x11, x9, 523
    rem    x29, x25, x20
    mulhsu x18, x5, x20
    slt    x20, x4, x19
    rem    x27, x5, x27
    rem    x14, x1, x9
    div    x26, x27, x7
    sltiu  x4, x10, -675
    beq    x8, x24, L20
    and    x5, x30, x16
    and    x23, x3, x13
    srl    x28, x18, x22
L20:
    bne    x22, x22, L21
    mulh   x11, x4, x7
    mulhsu x10, x8, x1
L21:
    mul    x17, x31, x10
    mulhsu x19, x22, x18
    slli   x17, x28, 3
    slti   x19, x14, 1753
    mul    x1, x15, x14
    srli   x23, x21, 11
    mulhsu x19, x8, x18
    lb     x22, 571(x2)
    sh     x1, 188(x2)
    sll    x20, x29, x18
    lb     x23, 305(x2)
    lh     x19, 1012(x2)
    mul    x28, x14, x4
    jal    x15, L22
    divu   x18, x13, x4
L22:
    sb     x22, 43(x2)
    mulh   x14, x30, x9
    bltu   x23, x20, L23
    divu   x11, x25, x19
    mul    x1, x12, x31
    divu   x24, x16, x20
L23:
    remu   x26, x7, x21
    auipc  x17, 0
    jalr   x5, x17, 12
    mulh   x6, x1, x21
L24:
    slti   x15, x10, -1882
    sltu   x6, x14, x22
    auipc  x20, 0x1f19c
    divu   x16, x27, x4
    lhu    x26, 898(x2)
    sltu   x10, x16, x25
    auipc  x11, 0xdc294
    sll    x5, x21, x19
    mulhu  x24, x11, x24
    auipc  x9, 0
    jalr   x29, x9, 12
    divu   x7, x27, x5
L25:
    mulhsu x21, x12, x22
    slti   x21, x19, 433
    bltu   x14, x24, L26
    slt    x29, x31, x16
    remu   x7, x18, x11
L26:
    mulhu  x11, x7, x29
    and    x6, x16, x14
    sb     x21, 121(x2)
    add    x27, x21, x18
    sltu   x28, x15, x9
    auipc  x19, 0
    jalr   x30, x19, 12
    div    x27, x23, x28
L27:
    auipc  x28, 0
    jalr   x13, x28, 12
    rem    x18, x9, x1
L28:
    srl    x14, x21, x30
    bne    x19, x20, L29
    slt    x29, x25, x29
    mul    x5, x9, x8
L29:
    rem    x17, x28, x7
    slt    x13, x1, x19
    mulh   x5, x8, x14
    divu   x22, x18, x30
    auipc  x9, 0x5239e
    add    x5, x30, x4
    lh     x22, 942(x2)
    sub    x28, x28, x8
    bltu   x29, x17, L30
    divu   x5, x4, x13
    remu   x6, x16, x16
L30:
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
