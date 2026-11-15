    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x80000000
    li    x3, 0x66a07ccd
    li    x4, 0x38e3205b
    li    x5, 0x1440ef47
    li    x6, 0x6f07e023
    li    x7, 0x55555555
    li    x8, 0xffff
    li    x9, 0x3
    li    x10, 0x0
    li    x11, 0xfa239212
    li    x12, 0x1
    li    x13, 0xd2e3cd29
    li    x14, 0x1
    li    x15, 0xeb645536
    li    x16, 0xf1e0d92e
    li    x17, 0x112ee762
    li    x18, 0x1955776e
    li    x19, 0x0
    li    x20, 0xbc90ea83
    li    x21, 0x3e13caea
    li    x22, 0x6777979
    li    x23, 0xcbca17c
    li    x24, 0x366ccc8b
    li    x25, 0x57191b1e
    li    x26, 0xfffffffd
    li    x27, 0xf233f61b
    li    x28, 0x980d1ea6
    li    x29, 0xe7e98c0
    li    x30, 0xc76a5cbb
    li    x31, 0x1cd077ab
    lh     x15, 534(x2)
    lbu    x10, 123(x2)
    auipc  x7, 0
    jalr   x10, x7, 12
    div    x15, x13, x22
L0:
    andi   x4, x12, 2031
    sltu   x25, x3, x26
    lb     x28, 498(x2)
    sh     x3, 974(x2)
    sb     x27, 749(x2)
    remu   x8, x25, x6
    rem    x14, x4, x22
    srai   x19, x21, 12
    rem    x31, x9, x18
    mulhu  x19, x20, x12
    or     x22, x23, x4
    xor    x9, x23, x24
    add    x12, x8, x10
    mulh   x31, x23, x15
    sra    x18, x18, x10
    sw     x21, 396(x2)
    sw     x21, 424(x2)
    srl    x20, x13, x22
    sll    x20, x3, x12
    div    x28, x12, x20
    bltu   x12, x8, L1
    and    x31, x7, x5
    mulh   x23, x8, x8
L1:
    mul    x12, x20, x19
    auipc  x26, 0xa4a07
    and    x13, x20, x16
    slt    x12, x3, x15
    mul    x14, x1, x29
    mul    x7, x5, x26
    sw     x25, 640(x2)
    div    x26, x26, x11
    mulh   x30, x6, x22
    slti   x30, x30, -434
    blt    x18, x15, L2
    div    x3, x1, x26
    or     x19, x18, x7
    mul    x1, x14, x17
L2:
    add    x31, x24, x24
    bge    x5, x17, L3
    div    x27, x27, x15
    sra    x29, x28, x30
L3:
    slli   x27, x27, 8
    lb     x29, 144(x2)
    mulhsu x6, x6, x3
    sub    x27, x25, x28
    mulh   x25, x25, x27
    sw     x3, 252(x2)
    add    x18, x9, x28
    lw     x20, 200(x2)
    divu   x28, x21, x21
    mulhsu x25, x8, x13
    sra    x9, x24, x7
    divu   x24, x13, x14
    sltu   x1, x28, x14
    lbu    x25, 69(x2)
    div    x10, x11, x5
    mulh   x25, x22, x9
    add    x20, x13, x30
    div    x22, x1, x15
    sw     x10, 400(x2)
    sltiu  x1, x3, 287
    lbu    x30, 782(x2)
    lw     x5, 788(x2)
    sw     x1, 212(x2)
    bne    x18, x3, L4
    slt    x24, x11, x1
    mulhsu x23, x23, x31
L4:
    lui    x9, 0xf766a
    sb     x8, 241(x2)
    slti   x28, x30, -1209
    bge    x10, x1, L5
    srl    x31, x19, x13
    div    x7, x25, x26
L5:
    bne    x11, x25, L6
    slt    x12, x22, x25
    sltu   x6, x17, x25
L6:
    mul    x11, x9, x11
    mul    x25, x29, x21
    sb     x20, 535(x2)
    jal    x29, L7
    remu   x29, x10, x24
L7:
    mulh   x16, x23, x15
    addi   x3, x1, 1418
    sb     x15, 17(x2)
    sub    x5, x6, x27
    slti   x6, x9, -798
    and    x9, x1, x23
    srai   x19, x17, 3
    divu   x28, x14, x5
    rem    x3, x24, x16
    lw     x7, 1016(x2)
    mul    x10, x14, x17
    sub    x29, x31, x12
    sub    x14, x24, x29
    jal    x13, L8
    mulhu  x11, x14, x26
L8:
    beq    x5, x6, L9
    sub    x31, x4, x1
L9:
    slti   x28, x21, -1573
    bge    x23, x8, L10
    sll    x18, x19, x7
    sll    x23, x10, x13
L10:
    bltu   x17, x21, L11
    xor    x30, x16, x23
    srl    x12, x5, x19
L11:
    lb     x18, 74(x2)
    slt    x23, x7, x7
    lbu    x12, 662(x2)
    xor    x19, x14, x15
    bge    x31, x6, L12
    sra    x3, x10, x12
L12:
    mulhu  x12, x8, x21
    div    x18, x8, x6
    lw     x9, 568(x2)
    sw     x26, 668(x2)
    ori    x18, x26, -684
    sll    x10, x31, x4
    slli   x8, x10, 24
    remu   x9, x1, x10
    bltu   x15, x20, L13
    mulhu  x20, x26, x25
    mulh   x11, x20, x14
    mulh   x24, x18, x18
L13:
    sw     x6, 432(x2)
    sll    x3, x17, x27
    sb     x18, 553(x2)
    lw     x31, 196(x2)
    bne    x24, x11, L14
    sub    x1, x31, x21
    sub    x27, x20, x16
L14:
    sw     x4, 984(x2)
    blt    x20, x6, L15
    div    x12, x19, x7
    xor    x3, x10, x25
    mulhsu x6, x15, x10
L15:
    sb     x18, 610(x2)
    rem    x29, x20, x30
    mulh   x25, x5, x26
    sw     x24, 760(x2)
    ori    x25, x21, -502
    slli   x29, x30, 25
    slli   x17, x21, 1
    rem    x11, x5, x12
    mulhu  x21, x24, x28
    xori   x3, x9, 74
    xori   x1, x9, 237
    divu   x1, x26, x5
    mulh   x27, x25, x20
    mul    x19, x23, x11
    sb     x15, 92(x2)
    slti   x1, x20, 1064
    jal    x29, L16
    mul    x21, x16, x7
L16:
    beq    x5, x7, L17
    mul    x30, x23, x23
    mulhu  x29, x7, x29
    add    x22, x1, x20
L17:
    jal    x8, L18
    mul    x17, x11, x29
L18:
    srai   x19, x18, 26
    mulhsu x26, x27, x23
    slti   x5, x10, -479
    div    x28, x8, x20
    mulhu  x22, x1, x8
    bltu   x24, x28, L19
    mulhsu x31, x29, x14
    mulhsu x1, x1, x6
L19:
    divu   x19, x26, x14
    sltu   x11, x8, x28
    srl    x11, x19, x27
    lh     x25, 450(x2)
    mulh   x11, x22, x23
    jal    x16, L20
    mul    x8, x6, x25
L20:
    sltiu  x12, x1, 1523
    bge    x26, x6, L21
    mulh   x20, x21, x12
    sub    x18, x6, x25
    mul    x19, x6, x31
L21:
    sll    x23, x11, x10
    lw     x7, 308(x2)
    mul    x3, x19, x14
    mulhu  x18, x27, x4
    bge    x25, x7, L22
    rem    x19, x9, x21
L22:
    addi   x5, x9, 1577
    slti   x19, x11, -469
    divu   x22, x16, x11
    xori   x13, x7, -270
    lbu    x8, 359(x2)
    auipc  x31, 0
    jalr   x30, x31, 12
    mulh   x30, x9, x5
L23:
    sw     x3, 660(x2)
    sh     x15, 584(x2)
    xor    x8, x14, x6
    srl    x20, x22, x19
    sw     x18, 792(x2)
    add    x13, x27, x17
    lw     x13, 364(x2)
    auipc  x7, 0
    jalr   x19, x7, 12
    div    x26, x27, x1
L24:
    blt    x7, x13, L25
    srl    x20, x12, x6
    div    x18, x7, x10
    mulhu  x12, x20, x7
L25:
    mul    x11, x10, x1
    ori    x16, x9, -1981
    divu   x3, x19, x30
    divu   x8, x25, x30
    auipc  x12, 0xf80a0
    mulhu  x20, x28, x30
    ori    x31, x5, -1971
    or     x18, x28, x14
    sra    x1, x30, x31
    mulhsu x24, x8, x26
    slli   x22, x18, 23
    div    x10, x18, x4
    mul    x26, x12, x7
    andi   x19, x12, 1925
    slt    x20, x28, x20
    sra    x8, x3, x31
    divu   x8, x25, x4
    lw     x1, 40(x2)
    sh     x21, 370(x2)
    lb     x13, 121(x2)
    xori   x14, x5, -140
    andi   x28, x24, -1736
    srai   x8, x10, 17
    auipc  x29, 0
    jalr   x4, x29, 12
    mulh   x12, x20, x13
L26:
    and    x4, x9, x9
    slli   x19, x25, 23
    sb     x18, 729(x2)
    sw     x26, 256(x2)
    divu   x4, x7, x7
    bgeu   x8, x12, L27
    or     x20, x15, x17
    sll    x21, x13, x13
L27:
    mulhsu x27, x8, x1
    bltu   x17, x1, L28
    xor    x8, x7, x6
    xor    x23, x8, x11
    div    x23, x16, x21
L28:
    auipc  x17, 0
    jalr   x19, x17, 12
    divu   x6, x25, x27
L29:
    bgeu   x27, x28, L30
    mul    x3, x6, x3
    or     x7, x3, x12
L30:
    mulh   x30, x8, x28
    mulhsu x28, x30, x17
    srl    x8, x25, x1
    lbu    x16, 416(x2)
    remu   x11, x11, x24
    jal    x3, L31
    div    x29, x30, x6
L31:
    ori    x15, x15, 638
    div    x5, x27, x4
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
