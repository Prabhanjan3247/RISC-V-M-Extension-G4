    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xa9307e6f
    li    x3, 0xba8a170
    li    x4, 0xac8873cb
    li    x5, 0xf6aa1b0b
    li    x6, 0x2504aaf6
    li    x7, 0x423d3e47
    li    x8, 0xaaaaaaaa
    li    x9, 0x3ca9d06b
    li    x10, 0x3b3a69c2
    li    x11, 0xb8e12df6
    li    x12, 0x555f220e
    li    x13, 0x1
    li    x14, 0xffff0000
    li    x15, 0x1496fc36
    li    x16, 0x1
    li    x17, 0x3f3e08ae
    li    x18, 0x37b69298
    li    x19, 0xc219a42c
    li    x20, 0xffff0000
    li    x21, 0x3a01fa6a
    li    x22, 0xffff0000
    li    x23, 0x6fa1874
    li    x24, 0xffff
    li    x25, 0xbe8ea632
    li    x26, 0x70e95f0c
    li    x27, 0xe0dff8b8
    li    x28, 0x38acbf22
    li    x29, 0x80000001
    li    x30, 0x5c152932
    li    x31, 0x8a0362b2
    bge    x1, x6, L0
    sll    x22, x22, x6
    add    x25, x4, x8
    div    x26, x31, x10
L0:
    sltiu  x3, x22, 1751
    slti   x11, x31, -972
    xor    x26, x10, x15
    slti   x16, x18, -583
    sltu   x3, x13, x9
    sra    x29, x31, x27
    mul    x6, x11, x3
    lhu    x30, 588(x2)
    remu   x10, x5, x4
    remu   x11, x4, x12
    lhu    x5, 26(x2)
    addi   x11, x5, 1678
    and    x27, x25, x3
    lhu    x20, 530(x2)
    xor    x13, x6, x23
    bge    x21, x27, L1
    mulhu  x15, x19, x8
    srl    x3, x26, x25
L1:
    ori    x26, x15, 413
    srai   x19, x31, 9
    andi   x31, x22, 1554
    auipc  x20, 0
    jalr   x13, x20, 12
    div    x28, x30, x27
L2:
    addi   x26, x7, 1516
    slt    x25, x6, x10
    sub    x13, x13, x17
    beq    x10, x31, L3
    sltu   x10, x29, x31
    divu   x26, x23, x31
    sra    x16, x29, x31
L3:
    sw     x4, 716(x2)
    srai   x17, x24, 17
    slti   x17, x16, 794
    sb     x6, 458(x2)
    rem    x21, x30, x13
    mulhu  x13, x1, x18
    sll    x31, x9, x18
    andi   x24, x28, -497
    lhu    x30, 716(x2)
    mulhu  x5, x6, x24
    lhu    x7, 94(x2)
    lh     x17, 1016(x2)
    sh     x14, 920(x2)
    xor    x24, x13, x11
    slti   x7, x23, 851
    sra    x6, x4, x18
    sra    x29, x1, x4
    blt    x27, x3, L4
    rem    x27, x25, x25
L4:
    divu   x5, x16, x17
    sra    x11, x13, x24
    lhu    x3, 52(x2)
    divu   x8, x20, x17
    and    x19, x4, x25
    sb     x22, 172(x2)
    auipc  x16, 0
    jalr   x21, x16, 12
    mulhu  x4, x22, x12
L5:
    mulh   x8, x3, x13
    lw     x19, 964(x2)
    srl    x5, x3, x3
    jal    x31, L6
    mulhu  x9, x28, x11
L6:
    sub    x28, x7, x23
    slti   x3, x8, -1832
    bne    x6, x12, L7
    mulh   x18, x29, x31
    srl    x28, x11, x1
L7:
    addi   x16, x19, 1842
    mulhsu x29, x19, x27
    sra    x6, x8, x20
    slti   x4, x6, -1464
    slli   x4, x8, 17
    divu   x17, x14, x13
    or     x30, x13, x10
    sw     x17, 780(x2)
    add    x13, x16, x14
    sh     x19, 228(x2)
    mul    x8, x11, x21
    lb     x26, 881(x2)
    sb     x15, 739(x2)
    sw     x5, 704(x2)
    sltiu  x1, x24, 1787
    jal    x5, L8
    rem    x27, x6, x30
L8:
    rem    x31, x25, x14
    sltiu  x8, x17, -1781
    sh     x7, 986(x2)
    slli   x11, x17, 10
    xori   x17, x15, -1947
    remu   x6, x10, x22
    jal    x28, L9
    rem    x17, x9, x16
L9:
    sb     x8, 641(x2)
    mulhsu x17, x17, x6
    mulhsu x6, x27, x15
    sw     x8, 16(x2)
    sw     x23, 1012(x2)
    mulhu  x13, x13, x14
    ori    x26, x31, -967
    mul    x4, x22, x28
    mulhsu x13, x30, x3
    bge    x25, x13, L10
    mul    x19, x6, x19
L10:
    rem    x11, x6, x5
    divu   x6, x14, x9
    lhu    x25, 348(x2)
    beq    x26, x19, L11
    sltu   x20, x31, x19
L11:
    mul    x17, x9, x17
    mul    x14, x5, x16
    sra    x23, x13, x7
    lhu    x15, 74(x2)
    rem    x10, x25, x4
    divu   x17, x17, x28
    slt    x24, x25, x5
    auipc  x13, 0
    jalr   x23, x13, 12
    mulh   x6, x29, x24
L12:
    and    x10, x15, x12
    lh     x21, 998(x2)
    bne    x6, x20, L13
    sra    x16, x17, x25
L13:
    slti   x19, x18, 56
    rem    x7, x3, x12
    divu   x29, x10, x16
    mulh   x5, x22, x4
    remu   x9, x28, x14
    mulhu  x28, x27, x13
    auipc  x4, 0
    jalr   x6, x4, 12
    mul    x18, x3, x24
L14:
    lh     x26, 426(x2)
    mulhsu x9, x4, x21
    lb     x17, 74(x2)
    sh     x5, 86(x2)
    ori    x12, x20, 2012
    mulhsu x28, x24, x21
    sh     x1, 100(x2)
    sh     x24, 366(x2)
    bgeu   x19, x25, L15
    or     x25, x16, x26
    xor    x16, x15, x9
    sub    x3, x15, x1
L15:
    jal    x10, L16
    remu   x23, x27, x24
L16:
    remu   x21, x1, x3
    sll    x12, x15, x12
    ori    x13, x6, 655
    lhu    x24, 246(x2)
    blt    x8, x31, L17
    srl    x10, x4, x30
    and    x23, x29, x9
    sra    x4, x3, x7
L17:
    mulhu  x7, x1, x31
    addi   x15, x14, 17
    sh     x15, 358(x2)
    slt    x21, x11, x25
    mul    x19, x31, x1
    mulh   x30, x22, x20
    jal    x25, L18
    mulhsu x17, x30, x12
L18:
    lw     x17, 516(x2)
    sb     x30, 477(x2)
    sb     x6, 604(x2)
    lb     x29, 928(x2)
    and    x13, x21, x8
    lhu    x25, 94(x2)
    sh     x29, 128(x2)
    sub    x25, x1, x25
    auipc  x31, 0
    jalr   x20, x31, 12
    divu   x23, x18, x17
L19:
    addi   x5, x12, 940
    sw     x7, 732(x2)
    blt    x6, x16, L20
    mulh   x10, x29, x26
    mulh   x6, x15, x23
    add    x10, x21, x31
L20:
    sub    x11, x24, x20
    xor    x10, x20, x8
    mulhu  x1, x25, x26
    sb     x30, 320(x2)
    slti   x7, x15, 1205
    sh     x16, 760(x2)
    srai   x9, x16, 7
    mulhu  x25, x13, x6
    mul    x28, x30, x28
    srl    x22, x10, x11
    sh     x12, 214(x2)
    sh     x12, 156(x2)
    bltu   x26, x8, L21
    sll    x15, x16, x19
    divu   x24, x27, x6
L21:
    bgeu   x17, x10, L22
    sra    x5, x18, x3
L22:
    beq    x7, x3, L23
    remu   x27, x5, x5
    sub    x23, x22, x3
    sub    x23, x27, x6
L23:
    rem    x5, x22, x31
    bgeu   x11, x11, L24
    mulhsu x12, x8, x7
    remu   x22, x6, x16
L24:
    srli   x10, x11, 20
    xori   x24, x3, 36
    sll    x21, x25, x16
    div    x8, x22, x30
    xori   x4, x13, -1679
    lb     x16, 222(x2)
    div    x22, x20, x15
    lhu    x3, 584(x2)
    lb     x5, 382(x2)
    lw     x25, 368(x2)
    sub    x22, x9, x27
    slli   x24, x3, 5
    jal    x29, L25
    mulhu  x11, x19, x18
L25:
    add    x18, x28, x12
    lh     x23, 722(x2)
    andi   x24, x25, -1795
    bne    x29, x5, L26
    sra    x22, x22, x25
L26:
    rem    x29, x30, x22
    divu   x13, x13, x14
    sltu   x27, x14, x11
    sw     x12, 672(x2)
    rem    x20, x6, x24
    sltu   x13, x17, x9
    div    x29, x17, x30
    xor    x9, x5, x9
    rem    x4, x6, x4
    mulhu  x22, x22, x5
    jal    x13, L27
    rem    x22, x20, x20
L27:
    andi   x26, x25, -1210
    rem    x20, x23, x10
    lh     x3, 590(x2)
    lb     x1, 596(x2)
    sub    x31, x4, x15
    sb     x12, 493(x2)
    divu   x1, x6, x12
    slli   x12, x14, 20
    mul    x23, x12, x12
    rem    x26, x26, x26
    divu   x13, x19, x19
    bgeu   x24, x8, L28
    mulhu  x22, x27, x3
    slt    x12, x12, x17
L28:
    mulhu  x24, x8, x6
    sra    x5, x28, x3
    mulhsu x4, x21, x1
    sll    x17, x5, x16
    sh     x18, 422(x2)
    remu   x5, x24, x29
    sh     x17, 988(x2)
    auipc  x3, 0
    jalr   x21, x3, 12
    remu   x9, x23, x24
L29:
    lh     x15, 240(x2)
    srl    x18, x14, x1
    or     x3, x3, x6
    mulhu  x17, x5, x11
    lhu    x22, 160(x2)
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
