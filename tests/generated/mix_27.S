    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x30244f9e
    li    x3, 0xa9407fe5
    li    x4, 0xb4c8acff
    li    x5, 0x1d1c2d94
    li    x6, 0x5e838477
    li    x7, 0x40f497a5
    li    x8, 0x13a657a4
    li    x9, 0x55555555
    li    x10, 0x55555555
    li    x11, 0x2
    li    x12, 0xaaaaaaaa
    li    x13, 0x43abc46f
    li    x14, 0xce8be32f
    li    x15, 0x63d39e59
    li    x16, 0x5a03341c
    li    x17, 0x826332f9
    li    x18, 0xcb0dd6b3
    li    x19, 0x5d6b7afe
    li    x20, 0x651735c9
    li    x21, 0x6ef2947d
    li    x22, 0x55555555
    li    x23, 0xef2277a
    li    x24, 0xffffffff
    li    x25, 0x77e7553f
    li    x26, 0x93195c27
    li    x27, 0x186b6712
    li    x28, 0xbee9922f
    li    x29, 0xffffffff
    li    x30, 0x7eaedecd
    li    x31, 0xc54eddf2
    lui    x9, 0x70f20
    mulhsu x29, x13, x10
    rem    x3, x3, x17
    beq    x28, x14, L0
    srl    x16, x30, x25
    mulhsu x28, x13, x1
    sub    x28, x11, x16
L0:
    add    x21, x15, x3
    sub    x15, x20, x10
    mul    x11, x3, x7
    mulhsu x18, x31, x9
    mulh   x27, x21, x15
    sltu   x17, x14, x10
    blt    x17, x19, L1
    mul    x20, x11, x5
    sltu   x7, x3, x30
L1:
    lui    x14, 0xf6f60
    mulh   x6, x27, x28
    and    x31, x3, x28
    sb     x31, 301(x2)
    jal    x29, L2
    mulh   x18, x21, x8
L2:
    srai   x17, x27, 29
    mulh   x10, x24, x16
    jal    x21, L3
    mulh   x10, x1, x22
L3:
    srai   x11, x25, 30
    sb     x28, 13(x2)
    rem    x15, x15, x23
    sw     x10, 104(x2)
    addi   x28, x30, 1071
    lhu    x1, 324(x2)
    auipc  x13, 0x18041
    beq    x7, x31, L4
    xor    x13, x19, x24
L4:
    div    x5, x5, x25
    lh     x25, 670(x2)
    bltu   x19, x13, L5
    divu   x12, x31, x6
    mulh   x7, x14, x9
L5:
    mulh   x12, x7, x26
    sh     x26, 826(x2)
    mulhsu x12, x25, x16
    slli   x5, x30, 31
    sltu   x6, x16, x18
    sb     x21, 784(x2)
    mulh   x19, x10, x28
    sb     x9, 133(x2)
    mulhsu x18, x16, x26
    xori   x14, x31, -1318
    sltu   x25, x4, x15
    sb     x7, 430(x2)
    sb     x3, 865(x2)
    divu   x3, x18, x9
    mulh   x14, x31, x10
    sltiu  x24, x22, 1671
    div    x19, x19, x6
    bltu   x27, x7, L6
    slt    x9, x17, x16
L6:
    xori   x25, x30, -251
    mulhsu x17, x17, x3
    mulh   x20, x6, x4
    andi   x28, x12, -1850
    bne    x4, x15, L7
    srl    x20, x9, x27
L7:
    lw     x15, 920(x2)
    sw     x16, 144(x2)
    or     x14, x11, x13
    mulhsu x17, x30, x25
    srl    x30, x19, x25
    srli   x9, x6, 5
    remu   x31, x17, x9
    lh     x9, 826(x2)
    div    x6, x31, x20
    lui    x10, 0x7bab5
    bge    x11, x26, L8
    mulhu  x7, x24, x6
    sra    x10, x26, x18
    add    x4, x25, x17
L8:
    sw     x27, 48(x2)
    slli   x7, x28, 4
    mulh   x7, x31, x9
    rem    x4, x9, x22
    sh     x26, 732(x2)
    auipc  x25, 0
    jalr   x9, x25, 12
    mulh   x11, x11, x26
L9:
    lw     x20, 632(x2)
    lhu    x1, 30(x2)
    slti   x24, x20, -1060
    divu   x14, x9, x17
    remu   x19, x17, x25
    blt    x25, x22, L10
    rem    x7, x1, x11
    mulhsu x9, x19, x16
    and    x22, x1, x15
L10:
    srai   x29, x4, 20
    mul    x10, x19, x24
    mul    x31, x4, x11
    lui    x23, 0x6684
    remu   x18, x17, x21
    add    x3, x8, x17
    sw     x5, 600(x2)
    remu   x13, x16, x20
    divu   x20, x19, x6
    sb     x15, 438(x2)
    xori   x8, x7, 218
    div    x28, x15, x22
    sb     x27, 987(x2)
    mul    x31, x17, x14
    bne    x31, x24, L11
    mulhsu x22, x1, x9
    mulhu  x24, x6, x27
L11:
    mulh   x31, x3, x27
    lb     x27, 227(x2)
    div    x20, x20, x30
    rem    x9, x31, x4
    div    x15, x9, x30
    bgeu   x30, x25, L12
    mul    x20, x21, x14
    mulhu  x10, x14, x15
L12:
    srli   x6, x31, 24
    lui    x12, 0xc53e9
    sb     x25, 69(x2)
    ori    x18, x7, 1936
    auipc  x16, 0x9120a
    sb     x22, 612(x2)
    mulhsu x31, x31, x26
    bge    x3, x31, L13
    div    x17, x16, x19
    sll    x30, x1, x4
L13:
    sltu   x1, x16, x29
    and    x4, x19, x15
    mulh   x7, x16, x28
    mulhu  x8, x21, x21
    sltu   x4, x21, x26
    srli   x20, x12, 7
    slt    x19, x22, x14
    lw     x19, 260(x2)
    lh     x27, 148(x2)
    beq    x26, x31, L14
    mulh   x24, x11, x20
    remu   x29, x9, x4
L14:
    sh     x4, 734(x2)
    lw     x15, 328(x2)
    andi   x5, x31, -654
    rem    x11, x1, x9
    div    x23, x10, x1
    lw     x16, 968(x2)
    xori   x11, x15, -1467
    div    x24, x31, x6
    sb     x13, 435(x2)
    lw     x20, 352(x2)
    bne    x21, x7, L15
    sra    x19, x5, x25
L15:
    bge    x30, x29, L16
    or     x18, x21, x6
    sll    x11, x13, x20
L16:
    divu   x1, x7, x26
    bne    x25, x26, L17
    mulh   x23, x6, x25
L17:
    sb     x11, 119(x2)
    auipc  x24, 0
    jalr   x3, x24, 12
    div    x13, x18, x4
L18:
    mulhu  x8, x28, x13
    add    x27, x10, x7
    mulh   x5, x4, x22
    jal    x22, L19
    mulhsu x4, x23, x22
L19:
    srai   x28, x27, 20
    andi   x7, x22, 931
    sw     x6, 512(x2)
    div    x12, x20, x9
    sw     x17, 864(x2)
    lhu    x9, 352(x2)
    sb     x27, 481(x2)
    jal    x11, L20
    mul    x25, x23, x9
L20:
    sb     x23, 239(x2)
    jal    x30, L21
    mulhsu x4, x13, x14
L21:
    auipc  x5, 0x7df82
    divu   x5, x12, x31
    sltu   x28, x30, x11
    addi   x10, x14, 1619
    rem    x7, x7, x15
    sh     x27, 72(x2)
    lh     x18, 878(x2)
    bne    x27, x15, L22
    slt    x27, x9, x17
    sltu   x9, x1, x27
    slt    x7, x10, x3
L22:
    mulhsu x5, x10, x31
    mulh   x5, x29, x17
    mul    x30, x21, x25
    srai   x11, x24, 13
    rem    x12, x3, x20
    andi   x25, x9, -703
    sb     x8, 126(x2)
    mul    x17, x21, x12
    andi   x30, x22, -1895
    sw     x5, 772(x2)
    srai   x3, x4, 26
    xor    x26, x18, x29
    sw     x27, 744(x2)
    beq    x17, x21, L23
    divu   x18, x1, x11
L23:
    mulhu  x8, x19, x31
    rem    x21, x8, x21
    sh     x3, 238(x2)
    sb     x17, 45(x2)
    slt    x29, x11, x21
    auipc  x8, 0
    jalr   x4, x8, 12
    rem    x10, x14, x3
L24:
    rem    x9, x16, x7
    or     x31, x15, x30
    auipc  x12, 0x5cefb
    jal    x15, L25
    rem    x8, x6, x24
L25:
    divu   x15, x29, x7
    andi   x5, x4, 187
    lhu    x12, 218(x2)
    and    x23, x27, x5
    remu   x1, x14, x20
    auipc  x21, 0x19115
    addi   x22, x24, 1229
    slt    x15, x28, x12
    srli   x29, x22, 14
    mulhsu x1, x13, x18
    div    x24, x7, x19
    addi   x27, x9, 230
    auipc  x6, 0x9d27e
    beq    x3, x10, L26
    and    x14, x1, x22
    sltu   x17, x18, x22
L26:
    divu   x6, x13, x4
    div    x27, x8, x19
    sll    x13, x27, x14
    jal    x16, L27
    mulhsu x20, x18, x8
L27:
    mul    x3, x5, x19
    mulh   x7, x7, x9
    div    x25, x23, x30
    bge    x26, x25, L28
    mul    x17, x25, x4
L28:
    lui    x3, 0xe93d8
    sltu   x4, x20, x26
    sw     x23, 632(x2)
    rem    x13, x16, x21
    ori    x13, x30, -1944
    ori    x29, x8, 350
    sh     x3, 646(x2)
    sw     x21, 68(x2)
    blt    x15, x23, L29
    sub    x16, x12, x23
    mulh   x12, x25, x10
L29:
    beq    x28, x4, L30
    div    x13, x25, x13
L30:
    sw     x30, 364(x2)
    jal    x1, L31
    mulhu  x5, x22, x30
L31:
    auipc  x6, 0
    jalr   x3, x6, 12
    remu   x26, x14, x10
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
