    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xfffffffd
    li    x3, 0x29d46535
    li    x4, 0x0
    li    x5, 0x3
    li    x6, 0x3
    li    x7, 0xe00f8825
    li    x8, 0xffff0000
    li    x9, 0xc418a9e5
    li    x10, 0x4116e03f
    li    x11, 0x31566382
    li    x12, 0xaaaaaaaa
    li    x13, 0x2bb6681f
    li    x14, 0x2
    li    x15, 0x2
    li    x16, 0xecca3f66
    li    x17, 0xb31534d6
    li    x18, 0xfd5661e5
    li    x19, 0xc45e7d4b
    li    x20, 0x7b55ac1c
    li    x21, 0xf52590e1
    li    x22, 0x6e906dd
    li    x23, 0x423456f6
    li    x24, 0x9668d21
    li    x25, 0x7fffffff
    li    x26, 0xffff
    li    x27, 0x91cc15cd
    li    x28, 0xa79c4079
    li    x29, 0x79682ff7
    li    x30, 0x6ac2b69d
    li    x31, 0xd4fea836
    sub    x14, x4, x7
    remu   x3, x28, x29
    ori    x10, x8, -1958
    jal    x31, L0
    divu   x10, x7, x4
L0:
    bne    x6, x15, L1
    mulhu  x27, x5, x17
    slt    x10, x19, x28
    mulhsu x6, x4, x9
L1:
    sh     x6, 444(x2)
    lhu    x24, 620(x2)
    sb     x18, 599(x2)
    sltu   x27, x29, x7
    or     x23, x16, x5
    slli   x12, x23, 14
    slli   x16, x15, 8
    remu   x13, x28, x30
    mulhsu x3, x12, x23
    remu   x5, x14, x1
    div    x22, x15, x26
    mul    x20, x18, x29
    mulhu  x27, x31, x4
    sra    x21, x18, x14
    sw     x4, 240(x2)
    sll    x1, x31, x17
    beq    x10, x31, L2
    add    x14, x18, x30
    xor    x10, x26, x18
    srl    x25, x30, x1
L2:
    div    x18, x14, x7
    mul    x6, x3, x27
    sltiu  x5, x12, 497
    sw     x9, 500(x2)
    divu   x24, x13, x16
    rem    x17, x22, x31
    andi   x24, x20, -1027
    lh     x27, 174(x2)
    div    x18, x17, x30
    remu   x29, x16, x13
    lb     x28, 837(x2)
    srl    x15, x22, x31
    sub    x30, x6, x18
    lh     x3, 282(x2)
    ori    x21, x3, -908
    sh     x23, 552(x2)
    ori    x4, x16, 899
    divu   x14, x28, x20
    blt    x18, x17, L3
    div    x18, x29, x22
    mul    x7, x31, x7
    and    x10, x29, x13
L3:
    mulhsu x10, x23, x18
    mul    x20, x1, x19
    lw     x6, 776(x2)
    lw     x26, 296(x2)
    srl    x17, x31, x12
    andi   x12, x27, -1443
    divu   x5, x12, x23
    sb     x13, 256(x2)
    slti   x9, x3, 7
    sb     x24, 664(x2)
    sw     x28, 720(x2)
    remu   x1, x17, x16
    srai   x10, x1, 10
    mulh   x5, x30, x12
    divu   x20, x3, x21
    mulhu  x11, x29, x28
    mulhsu x3, x15, x9
    and    x18, x21, x12
    andi   x21, x1, 1680
    xori   x16, x24, -423
    jal    x28, L4
    rem    x27, x8, x31
L4:
    lbu    x10, 426(x2)
    addi   x23, x30, 17
    div    x6, x3, x7
    srl    x12, x19, x6
    and    x7, x3, x29
    srli   x25, x11, 5
    mulhu  x24, x25, x18
    divu   x19, x10, x10
    slti   x21, x28, 1567
    rem    x8, x11, x18
    beq    x12, x20, L5
    srl    x1, x31, x7
L5:
    bne    x4, x13, L6
    xor    x30, x18, x29
    and    x9, x5, x14
    mulhu  x18, x29, x17
L6:
    srli   x14, x29, 11
    div    x11, x20, x9
    lb     x31, 411(x2)
    jal    x12, L7
    rem    x25, x30, x1
L7:
    sw     x16, 508(x2)
    remu   x5, x21, x10
    rem    x19, x23, x24
    xori   x15, x4, 1283
    blt    x29, x7, L8
    mulhu  x28, x7, x8
    and    x3, x22, x20
L8:
    jal    x20, L9
    mul    x25, x8, x25
L9:
    mulhu  x1, x26, x17
    jal    x30, L10
    mulh   x27, x5, x10
L10:
    div    x8, x30, x3
    sb     x8, 358(x2)
    remu   x7, x1, x17
    lh     x18, 422(x2)
    mulhsu x28, x17, x20
    sltiu  x16, x13, -1180
    bne    x31, x29, L11
    mulh   x23, x25, x27
    and    x22, x12, x20
    remu   x31, x11, x15
L11:
    lbu    x24, 412(x2)
    div    x31, x6, x19
    xori   x15, x22, 1076
    andi   x12, x4, -144
    mulhsu x5, x15, x28
    remu   x29, x15, x26
    remu   x13, x20, x17
    sltiu  x12, x27, -1542
    sb     x13, 652(x2)
    lw     x8, 556(x2)
    divu   x4, x15, x8
    beq    x14, x29, L12
    mulhu  x22, x10, x12
    slt    x13, x16, x20
L12:
    divu   x27, x14, x10
    sb     x22, 1023(x2)
    jal    x19, L13
    mulh   x3, x8, x21
L13:
    sll    x6, x4, x20
    rem    x5, x13, x7
    lhu    x22, 312(x2)
    slti   x10, x4, -1684
    auipc  x3, 0
    jalr   x11, x3, 12
    mulhsu x1, x4, x29
L14:
    remu   x9, x3, x11
    sh     x3, 346(x2)
    or     x15, x1, x1
    bne    x27, x23, L15
    mulhsu x24, x6, x17
    or     x21, x26, x19
    divu   x13, x31, x14
L15:
    sh     x27, 524(x2)
    mulhsu x20, x5, x29
    remu   x31, x29, x3
    sra    x12, x15, x8
    mulhu  x8, x25, x11
    lui    x19, 0xc3e4a
    mul    x1, x14, x26
    xori   x12, x21, -1452
    or     x24, x12, x15
    lbu    x4, 471(x2)
    srl    x25, x26, x3
    lhu    x24, 182(x2)
    sh     x12, 794(x2)
    rem    x10, x8, x23
    or     x8, x25, x10
    lhu    x21, 800(x2)
    sw     x3, 4(x2)
    bne    x15, x25, L16
    rem    x25, x5, x16
    divu   x19, x17, x8
    divu   x4, x20, x25
L16:
    andi   x25, x23, 1226
    lhu    x19, 912(x2)
    jal    x30, L17
    rem    x20, x29, x5
L17:
    mulh   x31, x11, x9
    sltu   x7, x7, x4
    sub    x16, x3, x29
    mul    x15, x23, x31
    rem    x26, x14, x24
    lb     x31, 705(x2)
    mulhu  x18, x16, x15
    bgeu   x1, x25, L18
    mulh   x24, x4, x27
    sra    x3, x24, x19
L18:
    mulh   x21, x8, x25
    mulhu  x8, x21, x31
    sltu   x8, x11, x9
    sb     x20, 1012(x2)
    sb     x26, 249(x2)
    slli   x26, x29, 1
    addi   x9, x31, 701
    bge    x9, x11, L19
    sll    x10, x1, x3
    or     x21, x1, x17
    div    x27, x25, x7
L19:
    beq    x29, x20, L20
    remu   x12, x9, x19
    mul    x27, x28, x3
L20:
    mulhu  x26, x26, x6
    div    x6, x21, x19
    rem    x12, x29, x8
    mulh   x26, x26, x29
    bgeu   x23, x8, L21
    mulhu  x14, x3, x20
L21:
    auipc  x1, 0x2ca5a
    bne    x1, x16, L22
    xor    x8, x21, x7
    mulhsu x23, x22, x6
    srl    x26, x1, x22
L22:
    mul    x29, x1, x8
    sh     x15, 248(x2)
    lui    x26, 0xc6386
    sltu   x29, x7, x28
    andi   x17, x1, 1696
    mulh   x4, x12, x17
    sb     x15, 235(x2)
    srai   x30, x14, 27
    srli   x5, x6, 23
    mulhu  x9, x3, x4
    mulhu  x29, x27, x14
    mulhu  x28, x8, x13
    mul    x1, x6, x28
    or     x29, x27, x13
    divu   x14, x5, x31
    blt    x1, x3, L23
    mulhu  x21, x9, x22
    srl    x30, x7, x28
    remu   x11, x9, x12
L23:
    lw     x8, 288(x2)
    mulhsu x30, x5, x22
    xori   x9, x6, -375
    sb     x15, 106(x2)
    bgeu   x17, x19, L24
    sll    x29, x30, x12
    divu   x31, x26, x22
L24:
    remu   x23, x23, x8
    lhu    x18, 610(x2)
    sltiu  x15, x30, 1279
    rem    x16, x13, x26
    mulhsu x4, x19, x1
    mulhsu x1, x20, x1
    lhu    x21, 1016(x2)
    lbu    x25, 395(x2)
    bne    x30, x22, L25
    srl    x27, x21, x18
    slt    x31, x14, x3
L25:
    lb     x21, 241(x2)
    sw     x31, 804(x2)
    ori    x23, x24, 568
    mulh   x3, x14, x21
    lw     x4, 184(x2)
    remu   x23, x23, x5
    blt    x27, x19, L26
    sll    x27, x11, x17
L26:
    lb     x25, 858(x2)
    slti   x9, x19, -1188
    sw     x21, 392(x2)
    sltiu  x6, x21, 1223
    bne    x22, x31, L27
    remu   x22, x23, x31
    add    x12, x8, x29
    divu   x29, x7, x17
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
