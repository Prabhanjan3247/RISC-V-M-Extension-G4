    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xea743fae
    li    x3, 0xffff
    li    x4, 0x6c70009f
    li    x5, 0x21855bdd
    li    x6, 0x55555555
    li    x7, 0xe05afe02
    li    x8, 0x71194f23
    li    x9, 0x72e5e1de
    li    x10, 0xbf47412e
    li    x11, 0x0
    li    x12, 0x6d9b3805
    li    x13, 0x4178161d
    li    x14, 0x86235fc0
    li    x15, 0x1
    li    x16, 0x2b3c179b
    li    x17, 0xffffffff
    li    x18, 0xca8c799f
    li    x19, 0xc6a95ffa
    li    x20, 0xc9304f85
    li    x21, 0x2
    li    x22, 0xc09e92ff
    li    x23, 0x55555555
    li    x24, 0x3
    li    x25, 0x51b49326
    li    x26, 0x9d6cd5f1
    li    x27, 0x4f8ef6e5
    li    x28, 0xfffffffd
    li    x29, 0x2e686d7e
    li    x30, 0x40c87335
    li    x31, 0xffff0000
    remu   x11, x15, x25
    blt    x8, x24, L0
    srl    x7, x13, x28
    or     x11, x10, x11
    mulhu  x29, x21, x9
L0:
    mulhu  x21, x21, x12
    sb     x23, 251(x2)
    srl    x21, x16, x21
    sub    x13, x29, x28
    auipc  x16, 0
    jalr   x20, x16, 12
    divu   x20, x14, x13
L1:
    divu   x14, x25, x13
    lb     x13, 20(x2)
    add    x21, x1, x29
    sb     x5, 111(x2)
    lb     x14, 535(x2)
    sltu   x1, x8, x8
    mulhu  x7, x3, x24
    and    x19, x16, x5
    sb     x11, 111(x2)
    rem    x9, x5, x24
    auipc  x27, 0
    jalr   x27, x27, 12
    mulh   x20, x29, x25
L2:
    sw     x16, 280(x2)
    auipc  x1, 0
    jalr   x26, x1, 12
    div    x15, x31, x13
L3:
    srli   x8, x31, 3
    sll    x10, x22, x31
    jal    x14, L4
    mul    x4, x16, x20
L4:
    sra    x16, x22, x22
    mul    x11, x26, x26
    mulhsu x15, x8, x10
    jal    x21, L5
    mulhsu x8, x12, x7
L5:
    lhu    x30, 62(x2)
    remu   x14, x4, x13
    sub    x29, x1, x13
    slli   x10, x19, 14
    div    x4, x11, x19
    srai   x4, x24, 14
    sltiu  x27, x27, -921
    mulhu  x19, x10, x23
    div    x20, x22, x17
    slt    x26, x7, x13
    andi   x21, x6, 302
    lbu    x19, 100(x2)
    slt    x25, x10, x17
    sw     x6, 624(x2)
    rem    x30, x27, x24
    div    x5, x10, x23
    lw     x12, 980(x2)
    mulhsu x24, x31, x28
    mulh   x11, x26, x15
    mulhu  x22, x8, x31
    addi   x12, x8, -1821
    auipc  x5, 0x40c5f
    ori    x28, x15, 690
    ori    x9, x3, 883
    lbu    x31, 1008(x2)
    sb     x3, 878(x2)
    auipc  x29, 0x5cf2c
    div    x19, x22, x18
    srl    x19, x29, x26
    mul    x15, x16, x31
    sb     x17, 80(x2)
    remu   x14, x5, x24
    blt    x5, x10, L6
    remu   x15, x9, x22
L6:
    mulhu  x16, x23, x1
    remu   x13, x7, x14
    bgeu   x6, x28, L7
    sub    x7, x11, x26
L7:
    srl    x28, x15, x19
    sub    x14, x14, x29
    slt    x21, x19, x25
    srai   x17, x10, 20
    jal    x30, L8
    divu   x19, x4, x29
L8:
    div    x7, x4, x16
    mulhu  x31, x11, x21
    sra    x3, x10, x29
    auipc  x11, 0
    jalr   x24, x11, 12
    mulh   x22, x3, x10
L9:
    lb     x24, 688(x2)
    lb     x25, 883(x2)
    sub    x5, x24, x23
    mul    x18, x29, x6
    divu   x27, x20, x31
    slt    x10, x21, x23
    div    x31, x7, x20
    bge    x10, x16, L10
    mulhsu x26, x19, x6
    add    x27, x10, x14
    mul    x7, x14, x4
L10:
    auipc  x26, 0x8f003
    sb     x4, 0(x2)
    mul    x24, x3, x22
    sll    x1, x1, x17
    mul    x20, x5, x16
    lh     x17, 318(x2)
    mulhu  x3, x13, x16
    mul    x11, x18, x18
    andi   x18, x24, -1259
    bgeu   x14, x29, L11
    mulhu  x11, x14, x9
L11:
    sub    x1, x7, x1
    mulhu  x3, x3, x29
    slt    x1, x1, x11
    mulhu  x26, x16, x4
    bge    x5, x12, L12
    divu   x28, x20, x9
    mulh   x4, x30, x6
L12:
    add    x18, x24, x4
    lbu    x17, 920(x2)
    divu   x27, x17, x21
    sb     x8, 347(x2)
    srai   x4, x25, 12
    mul    x28, x6, x17
    sw     x5, 856(x2)
    sub    x6, x28, x20
    bltu   x21, x5, L13
    sra    x31, x1, x23
    sltu   x17, x28, x12
L13:
    or     x30, x12, x3
    slt    x28, x12, x5
    srl    x27, x28, x18
    divu   x20, x16, x8
    mulh   x6, x10, x5
    andi   x23, x24, -729
    slt    x28, x25, x15
    sll    x18, x27, x7
    srai   x29, x21, 11
    mulhsu x24, x25, x11
    mulhsu x1, x25, x11
    mulhsu x18, x9, x16
    sw     x3, 744(x2)
    sub    x19, x18, x20
    sh     x11, 22(x2)
    mulh   x16, x31, x19
    mulh   x9, x9, x25
    auipc  x29, 0x2d933
    xor    x30, x25, x15
    sw     x18, 960(x2)
    bne    x31, x16, L14
    mulh   x22, x18, x6
    mulhu  x24, x29, x20
L14:
    sub    x7, x5, x8
    sltiu  x14, x3, 1687
    mulhsu x6, x8, x19
    and    x14, x21, x30
    sltu   x9, x6, x17
    rem    x29, x12, x29
    sub    x8, x29, x25
    add    x25, x24, x27
    mulhu  x30, x30, x25
    addi   x25, x24, 1839
    mulh   x7, x26, x31
    bne    x9, x22, L15
    mulhsu x15, x12, x19
    slt    x3, x21, x29
L15:
    srli   x19, x1, 6
    slt    x5, x14, x4
    mul    x6, x7, x13
    mulh   x13, x28, x7
    mulh   x4, x10, x19
    bltu   x22, x10, L16
    or     x8, x11, x5
L16:
    srai   x6, x27, 13
    jal    x22, L17
    mulh   x28, x9, x13
L17:
    lw     x7, 264(x2)
    mulhu  x24, x27, x27
    andi   x24, x14, -371
    ori    x16, x17, 1193
    mul    x13, x11, x31
    rem    x18, x24, x12
    mulhsu x10, x6, x26
    sltu   x28, x30, x4
    sw     x11, 1000(x2)
    remu   x14, x14, x3
    remu   x4, x9, x21
    mul    x23, x13, x12
    rem    x13, x16, x1
    slli   x12, x15, 16
    sw     x18, 416(x2)
    andi   x21, x7, 1136
    xori   x16, x5, -1965
    auipc  x11, 0x412ec
    div    x27, x28, x3
    bge    x7, x1, L18
    xor    x19, x9, x28
    div    x28, x15, x14
L18:
    auipc  x17, 0
    jalr   x12, x17, 12
    rem    x18, x20, x14
L19:
    srl    x25, x11, x19
    mulhsu x3, x23, x30
    rem    x7, x27, x7
    remu   x15, x20, x12
    remu   x4, x5, x1
    remu   x15, x23, x1
    mulhsu x7, x29, x1
    beq    x4, x22, L20
    div    x21, x18, x10
    sub    x7, x17, x18
L20:
    rem    x25, x27, x6
    div    x8, x4, x29
    xori   x10, x15, 1105
    mulhsu x22, x8, x5
    sra    x30, x16, x16
    slli   x11, x4, 23
    lh     x11, 592(x2)
    and    x23, x14, x16
    divu   x29, x7, x4
    ori    x20, x3, -328
    mulh   x6, x25, x15
    sb     x20, 853(x2)
    mulhsu x16, x28, x4
    mulhu  x26, x5, x7
    blt    x25, x31, L21
    mulhsu x13, x23, x1
    div    x22, x25, x26
L21:
    lui    x21, 0x2e57e
    div    x7, x12, x14
    jal    x18, L22
    mulhu  x17, x5, x17
L22:
    sw     x12, 604(x2)
    mul    x24, x15, x30
    sh     x29, 6(x2)
    div    x13, x21, x26
    mul    x28, x30, x20
    xor    x28, x22, x19
    mul    x1, x16, x22
    divu   x5, x30, x11
    addi   x5, x8, -98
    divu   x15, x3, x10
    lw     x30, 404(x2)
    andi   x30, x4, 668
    lbu    x4, 862(x2)
    beq    x4, x3, L23
    sll    x24, x30, x11
L23:
    blt    x14, x4, L24
    mulhu  x13, x31, x17
    slt    x25, x23, x9
L24:
    lui    x26, 0x11af5
    mulhsu x13, x11, x20
    beq    x29, x22, L25
    divu   x22, x28, x4
    and    x22, x18, x21
    mulh   x11, x20, x21
L25:
    sub    x27, x11, x7
    mulhu  x8, x22, x14
    sh     x29, 652(x2)
    jal    x12, L26
    div    x6, x10, x16
L26:
    or     x1, x12, x20
    mul    x25, x14, x13
    xor    x31, x15, x25
    lh     x7, 670(x2)
    sltiu  x26, x15, -1427
    auipc  x15, 0
    jalr   x24, x15, 12
    mulhu  x10, x1, x22
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
