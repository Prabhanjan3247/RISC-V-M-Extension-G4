    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xca3be30e
    li    x3, 0x969b6933
    li    x4, 0x91b110f1
    li    x5, 0x2907e09e
    li    x6, 0x618822f9
    li    x7, 0xffffffff
    li    x8, 0xffffffff
    li    x9, 0xfc8d17ee
    li    x10, 0x962ee356
    li    x11, 0x88bade9b
    li    x12, 0xc18571f5
    li    x13, 0xfffffffe
    li    x14, 0x63563c05
    li    x15, 0x8068f36
    li    x16, 0x5ddff6a2
    li    x17, 0x33424fdc
    li    x18, 0xd19120af
    li    x19, 0xb04a70c5
    li    x20, 0x1d22dfee
    li    x21, 0x40975768
    li    x22, 0xaaaaaaaa
    li    x23, 0xce063519
    li    x24, 0xc89e4f16
    li    x25, 0x2
    li    x26, 0xc7681bcd
    li    x27, 0x80000000
    li    x28, 0x207cc957
    li    x29, 0x70b384f3
    li    x30, 0xaac611fe
    li    x31, 0xe33e27bc
    auipc  x7, 0
    jalr   x19, x7, 12
    divu   x13, x31, x13
L0:
    auipc  x20, 0
    jalr   x1, x20, 12
    divu   x3, x28, x9
L1:
    jal    x28, L2
    remu   x10, x12, x15
L2:
    rem    x22, x3, x21
    mul    x7, x22, x10
    or     x28, x26, x5
    sll    x30, x13, x6
    div    x20, x29, x5
    remu   x22, x1, x3
    div    x20, x27, x11
    blt    x20, x13, L3
    and    x3, x16, x12
L3:
    mul    x23, x19, x27
    sb     x24, 805(x2)
    divu   x1, x27, x25
    lh     x20, 306(x2)
    jal    x20, L4
    mul    x18, x29, x12
L4:
    or     x20, x26, x23
    mul    x11, x7, x17
    mul    x22, x23, x6
    sra    x30, x28, x22
    divu   x22, x12, x7
    sb     x3, 928(x2)
    srl    x14, x23, x7
    sw     x13, 832(x2)
    sb     x26, 73(x2)
    mulh   x27, x14, x30
    sra    x27, x16, x24
    remu   x25, x10, x17
    sh     x9, 458(x2)
    sub    x19, x17, x3
    jal    x18, L5
    rem    x29, x1, x14
L5:
    remu   x26, x5, x3
    lbu    x8, 936(x2)
    add    x10, x9, x19
    sra    x20, x20, x21
    auipc  x26, 0
    jalr   x1, x26, 12
    mulh   x14, x31, x14
L6:
    lb     x16, 27(x2)
    sb     x28, 787(x2)
    divu   x16, x15, x4
    lh     x4, 562(x2)
    mulh   x15, x8, x8
    sll    x20, x31, x8
    mulhsu x5, x16, x5
    bgeu   x19, x25, L7
    mulhu  x31, x1, x24
    xor    x11, x16, x1
L7:
    sll    x18, x4, x16
    jal    x3, L8
    rem    x11, x19, x11
L8:
    xor    x8, x7, x5
    mulhsu x4, x17, x14
    slt    x18, x31, x3
    mulh   x8, x4, x10
    mulhu  x19, x17, x1
    bge    x19, x30, L9
    sll    x10, x22, x10
L9:
    sb     x21, 482(x2)
    slt    x3, x21, x29
    divu   x10, x13, x28
    sll    x20, x22, x25
    bgeu   x7, x8, L10
    divu   x12, x27, x21
L10:
    mulhsu x24, x13, x22
    remu   x23, x23, x10
    auipc  x4, 0x57320
    jal    x5, L11
    div    x14, x12, x1
L11:
    divu   x31, x13, x14
    xori   x22, x24, -959
    and    x15, x8, x16
    sltiu  x28, x21, -1349
    rem    x5, x24, x27
    addi   x19, x8, 424
    rem    x30, x11, x29
    sw     x14, 528(x2)
    rem    x30, x10, x17
    mulhsu x18, x27, x6
    srai   x25, x9, 18
    bgeu   x20, x10, L12
    sltu   x7, x27, x4
    rem    x6, x7, x12
    sltu   x16, x18, x12
L12:
    mulhsu x21, x18, x20
    mulh   x15, x29, x7
    jal    x12, L13
    rem    x10, x23, x4
L13:
    rem    x7, x27, x17
    divu   x16, x5, x6
    jal    x24, L14
    mul    x4, x17, x15
L14:
    auipc  x18, 0x8ec2b
    lhu    x17, 488(x2)
    addi   x29, x22, -519
    auipc  x19, 0
    jalr   x15, x19, 12
    mulhsu x8, x29, x5
L15:
    blt    x11, x28, L16
    div    x27, x23, x26
    divu   x18, x1, x11
L16:
    bltu   x16, x19, L17
    div    x1, x9, x30
    sub    x4, x22, x18
L17:
    mulhu  x23, x5, x17
    sw     x8, 940(x2)
    mul    x6, x21, x5
    auipc  x7, 0
    jalr   x27, x7, 12
    rem    x16, x19, x13
L18:
    blt    x30, x29, L19
    remu   x22, x6, x8
    sll    x11, x18, x4
L19:
    sw     x7, 656(x2)
    lb     x10, 123(x2)
    sb     x23, 93(x2)
    lbu    x30, 1022(x2)
    srl    x12, x7, x18
    mulh   x30, x22, x6
    mul    x21, x27, x6
    xori   x29, x3, 993
    mul    x4, x31, x5
    xor    x6, x22, x5
    lbu    x8, 625(x2)
    lw     x8, 556(x2)
    slli   x29, x1, 19
    or     x14, x18, x10
    bne    x29, x6, L20
    xor    x19, x19, x26
    sll    x26, x14, x26
    add    x25, x4, x13
L20:
    remu   x29, x29, x29
    lh     x30, 720(x2)
    div    x18, x1, x1
    add    x21, x10, x16
    bne    x16, x13, L21
    mulh   x14, x29, x18
L21:
    remu   x9, x29, x23
    remu   x8, x12, x9
    lh     x19, 264(x2)
    mulhsu x1, x7, x31
    mulhu  x19, x6, x17
    srli   x26, x1, 4
    mulh   x10, x27, x17
    sh     x11, 946(x2)
    divu   x17, x31, x1
    srli   x17, x23, 25
    lhu    x13, 452(x2)
    mulhsu x8, x8, x6
    lhu    x21, 934(x2)
    remu   x4, x21, x9
    slli   x13, x29, 29
    xori   x15, x7, -848
    mulhu  x14, x8, x7
    sra    x3, x26, x21
    remu   x26, x9, x12
    mul    x19, x30, x24
    add    x8, x13, x11
    srl    x12, x31, x22
    sh     x13, 554(x2)
    mulh   x8, x22, x6
    mulh   x28, x5, x12
    mulhsu x7, x1, x26
    and    x14, x12, x25
    mulhu  x4, x23, x5
    lw     x20, 732(x2)
    slt    x21, x5, x25
    and    x21, x13, x15
    mulhsu x4, x22, x1
    sw     x9, 336(x2)
    div    x6, x7, x5
    andi   x30, x7, 1382
    sll    x3, x22, x13
    mul    x14, x31, x5
    rem    x9, x27, x16
    auipc  x9, 0xfa0bb
    auipc  x18, 0
    jalr   x19, x18, 12
    divu   x15, x30, x19
L22:
    ori    x18, x18, -7
    mulh   x11, x7, x21
    srl    x30, x30, x11
    mul    x1, x14, x17
    auipc  x31, 0x30632
    addi   x26, x16, -801
    divu   x27, x11, x6
    addi   x23, x19, -1534
    addi   x7, x9, -514
    sw     x1, 512(x2)
    lbu    x21, 62(x2)
    add    x27, x24, x9
    sll    x12, x4, x9
    bltu   x13, x24, L23
    slt    x19, x1, x14
L23:
    sub    x3, x25, x9
    slli   x29, x22, 29
    mulh   x26, x8, x29
    sh     x1, 156(x2)
    mulh   x14, x13, x14
    mul    x13, x22, x4
    mulhsu x26, x20, x1
    lhu    x29, 260(x2)
    srli   x4, x21, 5
    lh     x29, 878(x2)
    rem    x19, x6, x1
    andi   x23, x11, 506
    mul    x16, x18, x14
    auipc  x3, 0
    jalr   x27, x3, 12
    mulhu  x21, x20, x18
L24:
    srai   x28, x19, 1
    bne    x18, x6, L25
    mulhu  x29, x5, x14
    rem    x16, x13, x28
L25:
    xor    x9, x31, x24
    mul    x4, x28, x16
    mulh   x13, x27, x14
    sw     x31, 956(x2)
    lw     x19, 152(x2)
    sh     x5, 176(x2)
    mulhsu x23, x11, x17
    beq    x11, x10, L26
    mulhu  x6, x4, x7
    divu   x14, x8, x4
    mul    x28, x5, x27
L26:
    mul    x16, x24, x29
    sltu   x27, x13, x25
    sub    x15, x17, x11
    slt    x25, x12, x13
    lw     x9, 348(x2)
    mulhu  x19, x17, x14
    divu   x17, x27, x18
    blt    x28, x13, L27
    sra    x22, x26, x17
L27:
    ori    x13, x26, 1059
    div    x5, x6, x8
    div    x3, x16, x20
    sw     x10, 160(x2)
    rem    x6, x16, x27
    divu   x18, x10, x27
    sb     x9, 964(x2)
    srl    x22, x7, x10
    div    x27, x4, x1
    sltiu  x24, x20, 159
    lbu    x8, 512(x2)
    sb     x17, 733(x2)
    mul    x23, x29, x5
    lbu    x1, 101(x2)
    mulh   x17, x15, x8
    sub    x18, x3, x4
    andi   x10, x21, -1144
    divu   x8, x18, x17
    rem    x7, x7, x6
    jal    x17, L28
    rem    x29, x4, x13
L28:
    auipc  x5, 0x218c7
    bne    x23, x12, L29
    xor    x28, x4, x17
    srl    x22, x29, x21
    mul    x10, x1, x4
L29:
    mul    x14, x23, x7
    auipc  x7, 0x8498a
    lbu    x30, 1006(x2)
    sra    x15, x12, x21
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
