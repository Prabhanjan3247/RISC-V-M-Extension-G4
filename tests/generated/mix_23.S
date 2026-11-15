    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x22d85458
    li    x3, 0x941f0726
    li    x4, 0xbd3444b4
    li    x5, 0xaaaaaaaa
    li    x6, 0xc7c09dbb
    li    x7, 0x3
    li    x8, 0x2
    li    x9, 0xaaaaaaaa
    li    x10, 0xc0130e27
    li    x11, 0x31918e50
    li    x12, 0xaaaaaaaa
    li    x13, 0x50824cff
    li    x14, 0x9c5678f7
    li    x15, 0xc55083f9
    li    x16, 0x97e95621
    li    x17, 0xd58a3b64
    li    x18, 0xbb0825d5
    li    x19, 0xcae97dd4
    li    x20, 0xb7272797
    li    x21, 0x8e771b57
    li    x22, 0x1
    li    x23, 0x9d285dc3
    li    x24, 0xe621168b
    li    x25, 0x86a8bdc6
    li    x26, 0xfffffffe
    li    x27, 0x77cb0ee1
    li    x28, 0x2ac1a595
    li    x29, 0x7b6159e0
    li    x30, 0xaaaaaaaa
    li    x31, 0xe1f5657
    remu   x29, x15, x30
    srli   x12, x13, 22
    divu   x3, x15, x17
    xori   x11, x21, -49
    divu   x9, x23, x14
    xor    x18, x12, x28
    bgeu   x15, x15, L0
    sra    x17, x19, x5
L0:
    bne    x5, x23, L1
    rem    x6, x7, x31
    and    x24, x28, x27
    sub    x23, x16, x13
L1:
    div    x30, x7, x10
    sw     x5, 216(x2)
    sw     x14, 684(x2)
    beq    x13, x28, L2
    mulhsu x13, x11, x20
    mulhsu x30, x26, x25
    sra    x7, x24, x20
L2:
    mul    x31, x16, x22
    divu   x29, x29, x10
    remu   x29, x5, x29
    sb     x24, 445(x2)
    remu   x9, x4, x17
    bge    x10, x3, L3
    mul    x25, x21, x24
L3:
    mulh   x5, x25, x11
    andi   x26, x17, 119
    lhu    x27, 170(x2)
    auipc  x22, 0xe2c5d
    lui    x28, 0xa31de
    divu   x3, x30, x1
    lh     x7, 158(x2)
    lh     x26, 812(x2)
    bltu   x18, x11, L4
    add    x6, x8, x22
    divu   x14, x6, x13
L4:
    andi   x29, x29, -1607
    bge    x16, x30, L5
    srl    x21, x9, x26
L5:
    mul    x4, x8, x21
    lb     x10, 303(x2)
    srl    x23, x22, x4
    sh     x10, 690(x2)
    rem    x16, x14, x6
    mulhsu x1, x16, x1
    divu   x4, x27, x23
    mulhsu x12, x5, x7
    div    x15, x28, x25
    and    x23, x9, x18
    lbu    x29, 55(x2)
    sb     x24, 366(x2)
    mulh   x21, x4, x27
    xor    x23, x28, x13
    sltu   x24, x30, x3
    rem    x27, x16, x17
    div    x5, x28, x10
    slti   x27, x24, 484
    addi   x20, x3, 1082
    slti   x14, x12, 58
    divu   x18, x28, x28
    sb     x12, 78(x2)
    jal    x27, L6
    mulhu  x10, x27, x12
L6:
    sub    x13, x23, x10
    lbu    x26, 59(x2)
    jal    x28, L7
    div    x27, x12, x23
L7:
    divu   x17, x27, x21
    andi   x3, x20, 1462
    slt    x23, x20, x19
    remu   x24, x11, x3
    ori    x20, x21, -678
    mulh   x11, x31, x27
    jal    x17, L8
    div    x4, x12, x6
L8:
    sltiu  x14, x6, 1523
    sh     x21, 884(x2)
    srl    x13, x27, x22
    sw     x1, 80(x2)
    div    x9, x18, x15
    jal    x13, L9
    remu   x16, x4, x30
L9:
    xor    x12, x15, x30
    lw     x16, 684(x2)
    sub    x15, x24, x27
    mulhu  x3, x22, x1
    mulhu  x30, x20, x29
    srl    x15, x30, x26
    mulh   x10, x25, x13
    bltu   x28, x22, L10
    sra    x21, x19, x26
    mul    x24, x20, x10
    rem    x10, x26, x20
L10:
    addi   x11, x27, 1533
    lui    x11, 0x7303e
    lb     x25, 967(x2)
    sub    x3, x28, x26
    divu   x12, x5, x15
    addi   x27, x28, 1028
    lui    x17, 0x3b80
    andi   x20, x31, 655
    srli   x5, x5, 15
    addi   x25, x24, -1492
    sh     x13, 366(x2)
    mul    x16, x9, x28
    mul    x10, x12, x29
    lhu    x29, 504(x2)
    auipc  x10, 0
    jalr   x17, x10, 12
    div    x23, x25, x19
L11:
    or     x16, x13, x3
    lw     x4, 892(x2)
    mulhu  x26, x26, x17
    sb     x7, 633(x2)
    srl    x25, x17, x17
    auipc  x23, 0
    jalr   x7, x23, 12
    mulhsu x16, x4, x30
L12:
    lh     x12, 36(x2)
    divu   x16, x8, x23
    lh     x4, 74(x2)
    sh     x1, 546(x2)
    lb     x13, 40(x2)
    lw     x4, 300(x2)
    div    x7, x14, x28
    srl    x19, x10, x20
    mulhu  x10, x16, x13
    mul    x14, x25, x9
    xor    x15, x20, x24
    lbu    x29, 111(x2)
    sb     x27, 1003(x2)
    divu   x24, x18, x15
    srl    x19, x3, x19
    auipc  x13, 0
    jalr   x23, x13, 12
    mul    x27, x23, x1
L13:
    mul    x29, x19, x26
    mulhu  x1, x22, x17
    srai   x21, x19, 2
    lw     x7, 260(x2)
    remu   x16, x7, x14
    slti   x21, x21, 1881
    sw     x29, 1012(x2)
    sub    x10, x11, x1
    lh     x7, 536(x2)
    slti   x3, x23, -1790
    jal    x9, L14
    divu   x14, x29, x31
L14:
    divu   x9, x5, x9
    sb     x30, 172(x2)
    lb     x4, 289(x2)
    lb     x27, 422(x2)
    auipc  x28, 0
    jalr   x30, x28, 12
    remu   x21, x25, x27
L15:
    lhu    x8, 396(x2)
    lhu    x25, 1000(x2)
    srai   x14, x31, 2
    mulh   x6, x22, x12
    rem    x12, x23, x15
    remu   x7, x3, x11
    sltiu  x10, x10, 1842
    auipc  x5, 0x6f8a1
    and    x24, x19, x30
    sra    x24, x12, x17
    sb     x9, 1017(x2)
    sb     x15, 823(x2)
    auipc  x6, 0
    jalr   x29, x6, 12
    mulh   x14, x4, x23
L16:
    slt    x10, x26, x22
    mulh   x30, x15, x19
    remu   x1, x26, x14
    auipc  x8, 0xb54f6
    mulhu  x12, x17, x9
    sh     x18, 316(x2)
    mul    x7, x9, x3
    rem    x31, x14, x31
    div    x27, x18, x30
    mul    x3, x25, x30
    divu   x30, x31, x13
    bgeu   x14, x1, L17
    sra    x31, x7, x17
L17:
    sb     x3, 419(x2)
    sub    x27, x26, x22
    and    x21, x6, x10
    lhu    x14, 816(x2)
    auipc  x29, 0x7c5af
    lbu    x14, 336(x2)
    bne    x12, x25, L18
    sra    x22, x11, x31
L18:
    lw     x23, 348(x2)
    divu   x19, x21, x17
    mulh   x17, x27, x6
    srli   x11, x27, 15
    srli   x18, x31, 30
    blt    x24, x10, L19
    sub    x6, x11, x5
    srl    x17, x26, x14
L19:
    slti   x5, x6, 1714
    mulhu  x30, x1, x20
    or     x12, x15, x9
    sub    x24, x22, x5
    srai   x17, x18, 7
    or     x8, x21, x26
    sb     x28, 448(x2)
    div    x21, x14, x10
    jal    x30, L20
    rem    x13, x13, x12
L20:
    mulhu  x14, x27, x8
    div    x10, x20, x18
    sll    x18, x23, x14
    sb     x31, 58(x2)
    mulhu  x3, x24, x6
    sll    x28, x24, x18
    sh     x10, 524(x2)
    sh     x25, 396(x2)
    ori    x29, x11, -310
    div    x8, x29, x6
    lh     x18, 514(x2)
    sra    x21, x25, x16
    sb     x11, 718(x2)
    mulhu  x29, x31, x19
    auipc  x29, 0
    jalr   x13, x29, 12
    mulh   x31, x31, x25
L21:
    srli   x28, x16, 31
    xori   x24, x6, 1891
    sltiu  x31, x9, 1027
    remu   x5, x27, x30
    mulhu  x21, x6, x6
    bgeu   x4, x10, L22
    sra    x21, x5, x27
    and    x3, x21, x15
    divu   x28, x15, x12
L22:
    bne    x13, x13, L23
    slt    x18, x31, x12
    rem    x30, x11, x30
    srl    x25, x8, x16
L23:
    lw     x12, 840(x2)
    srl    x17, x19, x23
    sub    x22, x17, x24
    blt    x26, x25, L24
    div    x27, x17, x20
    divu   x16, x20, x20
    rem    x14, x9, x24
L24:
    lhu    x7, 466(x2)
    jal    x11, L25
    mulhsu x24, x11, x10
L25:
    lbu    x24, 647(x2)
    xori   x14, x18, 692
    remu   x12, x21, x20
    auipc  x21, 0
    jalr   x1, x21, 12
    rem    x5, x12, x8
L26:
    sb     x31, 300(x2)
    slti   x30, x29, -233
    slli   x3, x4, 24
    jal    x22, L27
    mulhu  x19, x15, x25
L27:
    lh     x7, 946(x2)
    slli   x1, x12, 25
    mul    x12, x21, x10
    or     x15, x8, x26
    add    x17, x11, x16
    and    x11, x28, x1
    rem    x23, x12, x17
    jal    x27, L28
    rem    x24, x24, x31
L28:
    slti   x15, x23, 1683
    mul    x22, x11, x8
    mulhu  x8, x6, x13
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
