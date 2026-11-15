    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x3308f75b
    li    x3, 0x772cb94a
    li    x4, 0x7c5a19a2
    li    x5, 0xffff
    li    x6, 0x679e347a
    li    x7, 0x7fffffff
    li    x8, 0x9c59ee9e
    li    x9, 0x1141bc0f
    li    x10, 0x4cb073d7
    li    x11, 0x8f42565
    li    x12, 0xccbe3d54
    li    x13, 0xdc185a0b
    li    x14, 0x11e02ae4
    li    x15, 0x7ad68f3d
    li    x16, 0xffff0000
    li    x17, 0x1ecb16fd
    li    x18, 0x22053d2c
    li    x19, 0x780c46d6
    li    x20, 0xdd9dd418
    li    x21, 0x9a7769da
    li    x22, 0x1
    li    x23, 0xaaaaaaaa
    li    x24, 0x3
    li    x25, 0x9d68f52
    li    x26, 0x40bd40ca
    li    x27, 0xa81ffc0f
    li    x28, 0xa4488b99
    li    x29, 0xbb9dda99
    li    x30, 0x5dbffdfb
    li    x31, 0xd0629cab
    sltiu  x15, x9, 1093
    lhu    x22, 356(x2)
    slli   x16, x6, 8
    rem    x31, x25, x12
    addi   x3, x11, -1817
    andi   x24, x14, -1606
    and    x22, x6, x22
    and    x5, x23, x10
    xori   x21, x25, -618
    lb     x22, 790(x2)
    div    x11, x14, x12
    srli   x16, x26, 9
    srli   x20, x12, 31
    or     x25, x16, x10
    remu   x31, x14, x21
    beq    x27, x15, L0
    mulhu  x28, x24, x31
    mulh   x30, x20, x24
    or     x28, x10, x7
L0:
    mulhu  x17, x26, x27
    sltiu  x18, x21, -1686
    addi   x27, x15, -383
    srai   x18, x21, 13
    bgeu   x26, x13, L1
    divu   x8, x17, x31
    add    x16, x3, x12
L1:
    sltiu  x16, x5, -1166
    mulhu  x12, x11, x15
    mulhsu x19, x9, x31
    rem    x3, x13, x21
    sub    x29, x20, x9
    auipc  x5, 0
    jalr   x4, x5, 12
    mulhu  x4, x9, x9
L2:
    srli   x14, x4, 24
    sw     x15, 620(x2)
    divu   x16, x27, x28
    and    x25, x19, x25
    slli   x15, x1, 26
    sh     x5, 168(x2)
    lui    x29, 0x9aba2
    xor    x31, x30, x9
    remu   x11, x21, x15
    xor    x28, x21, x13
    mulh   x5, x28, x24
    div    x9, x14, x7
    bgeu   x23, x7, L3
    remu   x13, x8, x16
    remu   x28, x28, x21
    slt    x5, x25, x6
L3:
    bge    x3, x20, L4
    slt    x12, x31, x7
    and    x10, x15, x4
L4:
    sw     x19, 296(x2)
    sra    x9, x5, x17
    remu   x18, x6, x12
    rem    x7, x12, x7
    jal    x27, L5
    divu   x23, x15, x20
L5:
    divu   x26, x4, x5
    rem    x10, x7, x31
    jal    x27, L6
    mulhsu x13, x10, x30
L6:
    remu   x7, x4, x14
    sra    x23, x12, x7
    divu   x27, x30, x18
    lw     x20, 96(x2)
    lb     x4, 337(x2)
    sltu   x7, x29, x26
    addi   x10, x18, -668
    auipc  x6, 0
    jalr   x14, x6, 12
    remu   x23, x13, x24
L7:
    sh     x7, 846(x2)
    mulh   x15, x22, x19
    add    x11, x19, x3
    lui    x8, 0xda362
    mulhu  x18, x4, x29
    mulhsu x4, x8, x23
    sltiu  x1, x31, -2005
    or     x27, x1, x21
    auipc  x28, 0
    jalr   x11, x28, 12
    mulh   x30, x10, x4
L8:
    sltu   x19, x24, x29
    or     x6, x12, x1
    mulh   x10, x6, x15
    slt    x7, x10, x21
    jal    x10, L9
    mulhu  x16, x23, x15
L9:
    slti   x9, x3, 1009
    bltu   x9, x28, L10
    and    x22, x12, x16
    slt    x11, x27, x19
    mulhsu x5, x24, x29
L10:
    remu   x29, x29, x30
    slti   x26, x21, 700
    xori   x28, x22, -1391
    divu   x27, x21, x27
    andi   x22, x5, -10
    sltiu  x18, x11, 539
    divu   x15, x5, x25
    andi   x17, x22, 232
    auipc  x12, 0xb2a56
    mul    x30, x28, x7
    slti   x3, x23, -417
    remu   x29, x8, x30
    mulhu  x26, x28, x5
    sh     x19, 926(x2)
    sh     x31, 936(x2)
    lh     x14, 456(x2)
    remu   x17, x12, x1
    mulhu  x21, x1, x18
    sll    x9, x27, x15
    sub    x22, x23, x20
    lui    x27, 0x7443c
    div    x24, x1, x4
    lbu    x7, 720(x2)
    and    x9, x29, x19
    sll    x10, x13, x20
    slt    x30, x6, x16
    divu   x29, x22, x10
    sw     x7, 712(x2)
    bltu   x8, x4, L11
    mulh   x14, x20, x26
    add    x11, x13, x11
    sltu   x25, x17, x15
L11:
    divu   x9, x11, x6
    lw     x27, 732(x2)
    slti   x29, x31, -1363
    xor    x27, x18, x9
    sb     x27, 889(x2)
    jal    x17, L12
    mulhsu x5, x9, x6
L12:
    or     x13, x4, x19
    sltu   x31, x19, x9
    jal    x19, L13
    div    x15, x28, x4
L13:
    div    x14, x20, x5
    sb     x10, 852(x2)
    andi   x19, x11, 1356
    srli   x21, x23, 8
    add    x30, x1, x9
    lh     x27, 606(x2)
    mul    x17, x24, x26
    lhu    x12, 176(x2)
    mulhu  x6, x22, x9
    rem    x29, x4, x15
    div    x10, x31, x22
    mulhsu x3, x23, x24
    sw     x7, 236(x2)
    mul    x30, x8, x8
    sub    x29, x20, x5
    srl    x10, x6, x24
    sll    x3, x28, x9
    andi   x11, x30, -1118
    div    x22, x7, x31
    sll    x19, x10, x3
    sub    x3, x27, x6
    mulh   x30, x12, x19
    bltu   x10, x7, L14
    sra    x11, x10, x11
    and    x20, x20, x5
L14:
    mulh   x17, x8, x18
    xori   x4, x25, 160
    divu   x6, x27, x12
    srai   x11, x1, 3
    mulhu  x21, x7, x29
    srai   x4, x14, 2
    mulhsu x12, x1, x25
    xori   x13, x12, -1979
    rem    x7, x3, x5
    lbu    x22, 908(x2)
    mulh   x18, x26, x1
    mulh   x20, x29, x21
    and    x27, x9, x19
    rem    x8, x3, x5
    srai   x26, x31, 7
    lui    x29, 0x36ff1
    bne    x29, x17, L15
    sra    x24, x3, x20
    sub    x5, x1, x3
L15:
    sltu   x20, x24, x23
    bltu   x15, x1, L16
    srl    x8, x5, x13
    and    x20, x30, x9
L16:
    rem    x19, x4, x17
    bge    x6, x1, L17
    add    x28, x16, x15
    sltu   x29, x22, x11
    remu   x1, x17, x31
L17:
    mulhu  x21, x24, x24
    bgeu   x19, x21, L18
    slt    x30, x22, x10
L18:
    rem    x17, x4, x12
    srli   x20, x11, 1
    beq    x8, x22, L19
    xor    x18, x19, x6
L19:
    lw     x25, 816(x2)
    andi   x18, x9, -1880
    mulhu  x31, x31, x10
    lw     x8, 880(x2)
    mulhsu x23, x28, x30
    slti   x7, x1, 2006
    slli   x4, x16, 2
    slt    x8, x17, x9
    slti   x13, x30, -1110
    sw     x28, 104(x2)
    auipc  x27, 0x30e1e
    beq    x7, x22, L20
    mulhsu x19, x20, x19
    divu   x30, x24, x22
L20:
    rem    x25, x12, x16
    jal    x26, L21
    mulhu  x10, x1, x1
L21:
    mulhsu x19, x17, x1
    mulhsu x4, x30, x3
    rem    x19, x9, x13
    mulh   x6, x17, x29
    remu   x5, x30, x6
    ori    x24, x12, 755
    sub    x13, x19, x14
    mulh   x16, x17, x16
    remu   x31, x4, x5
    sb     x22, 871(x2)
    sw     x23, 32(x2)
    lw     x25, 604(x2)
    bne    x23, x30, L22
    div    x6, x31, x26
    sub    x26, x28, x7
L22:
    div    x20, x20, x15
    add    x20, x15, x3
    rem    x28, x10, x8
    ori    x25, x24, 489
    and    x19, x18, x26
    sltiu  x18, x24, -815
    bltu   x4, x27, L23
    div    x18, x20, x26
    and    x4, x5, x3
    mulhsu x4, x28, x23
L23:
    mul    x3, x8, x23
    srl    x22, x3, x18
    lhu    x3, 520(x2)
    sra    x14, x30, x23
    xori   x19, x3, -83
    xor    x7, x8, x18
    sub    x31, x22, x17
    slli   x3, x16, 12
    and    x20, x16, x27
    and    x8, x30, x15
    andi   x14, x23, -1339
    sw     x5, 992(x2)
    lui    x1, 0x7fd6c
    bgeu   x8, x24, L24
    xor    x4, x23, x14
    divu   x10, x21, x13
L24:
    mulh   x7, x23, x4
    and    x1, x31, x30
    mulhu  x3, x18, x6
    andi   x15, x18, -493
    mulhsu x15, x21, x20
    lw     x6, 320(x2)
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
