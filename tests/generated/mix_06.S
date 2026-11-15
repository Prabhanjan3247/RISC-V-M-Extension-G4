    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x98f29a4
    li    x3, 0x8ec4c3d5
    li    x4, 0x1edbcb
    li    x5, 0xae67f97d
    li    x6, 0x3
    li    x7, 0xffff0000
    li    x8, 0x9cf32ea9
    li    x9, 0xaa2737db
    li    x10, 0x668f8f4d
    li    x11, 0x5dd49cd
    li    x12, 0x8c79cf81
    li    x13, 0x5850ae15
    li    x14, 0xe754e5a4
    li    x15, 0xfffffffe
    li    x16, 0x7fffffff
    li    x17, 0x8c6a0db0
    li    x18, 0x5d4f5f0f
    li    x19, 0x8684721f
    li    x20, 0xe7b9a2e5
    li    x21, 0x59658ba2
    li    x22, 0x5111826b
    li    x23, 0x26e76d77
    li    x24, 0xbde2c032
    li    x25, 0x3
    li    x26, 0xfa58a307
    li    x27, 0xc95de957
    li    x28, 0x71faf0d2
    li    x29, 0xd78bc1f9
    li    x30, 0xffffffff
    li    x31, 0xc138fc20
    sb     x5, 659(x2)
    sb     x20, 1006(x2)
    jal    x7, L0
    mul    x10, x15, x6
L0:
    andi   x24, x25, -623
    mulhu  x26, x20, x13
    mulh   x26, x24, x24
    divu   x5, x8, x14
    lhu    x7, 76(x2)
    sltu   x21, x5, x12
    divu   x26, x10, x15
    andi   x15, x19, 1012
    lh     x13, 72(x2)
    sub    x29, x22, x5
    divu   x14, x10, x9
    auipc  x16, 0
    jalr   x17, x16, 12
    rem    x9, x23, x27
L1:
    sb     x4, 290(x2)
    mulh   x20, x27, x21
    mul    x15, x26, x28
    mulh   x4, x20, x9
    srl    x19, x31, x19
    div    x9, x27, x15
    remu   x28, x23, x18
    auipc  x27, 0
    jalr   x29, x27, 12
    mulhsu x20, x27, x21
L2:
    remu   x16, x4, x6
    remu   x24, x7, x8
    div    x8, x7, x23
    sh     x6, 332(x2)
    xor    x15, x7, x18
    srl    x28, x16, x5
    lh     x13, 864(x2)
    bne    x12, x10, L3
    mulhu  x5, x31, x28
    add    x17, x24, x29
L3:
    lw     x5, 200(x2)
    or     x24, x31, x25
    mulhsu x29, x17, x7
    sb     x24, 989(x2)
    mulh   x12, x18, x5
    div    x21, x15, x7
    rem    x20, x23, x26
    blt    x25, x13, L4
    div    x29, x5, x25
L4:
    lui    x16, 0xc3dd8
    auipc  x5, 0xa2546
    xori   x4, x24, -1557
    lh     x24, 594(x2)
    sltiu  x28, x1, -216
    lhu    x22, 718(x2)
    div    x17, x15, x9
    sb     x14, 777(x2)
    addi   x29, x7, -2003
    jal    x10, L5
    div    x14, x11, x5
L5:
    div    x13, x9, x30
    lw     x13, 260(x2)
    auipc  x21, 0xa4ec9
    bge    x19, x31, L6
    mulhu  x1, x26, x5
    xor    x14, x1, x5
    and    x3, x28, x14
L6:
    lw     x31, 476(x2)
    lui    x28, 0x6457d
    bltu   x14, x15, L7
    sltu   x3, x30, x13
L7:
    mulhu  x23, x7, x27
    sb     x3, 413(x2)
    sh     x12, 600(x2)
    andi   x4, x5, -1367
    sh     x18, 1008(x2)
    sh     x16, 326(x2)
    bne    x5, x23, L8
    sub    x26, x7, x6
    slt    x3, x26, x14
    remu   x27, x21, x24
L8:
    slti   x16, x12, -1079
    slt    x22, x20, x15
    lh     x29, 448(x2)
    rem    x12, x28, x9
    div    x29, x13, x23
    add    x19, x13, x8
    srli   x22, x6, 0
    sll    x1, x9, x8
    rem    x29, x19, x4
    add    x13, x3, x19
    divu   x20, x13, x5
    sltiu  x27, x28, 1983
    slti   x27, x15, 1973
    srl    x11, x10, x25
    remu   x1, x30, x6
    sltiu  x3, x7, 840
    mulhsu x10, x21, x10
    mul    x9, x28, x7
    auipc  x14, 0
    jalr   x10, x14, 12
    mulhsu x4, x4, x19
L9:
    divu   x28, x19, x22
    auipc  x4, 0xc8571
    div    x14, x13, x30
    rem    x14, x21, x26
    lb     x13, 191(x2)
    sltiu  x11, x24, 697
    blt    x9, x14, L10
    add    x16, x17, x21
L10:
    sw     x24, 16(x2)
    sltu   x6, x24, x27
    slti   x28, x30, -1174
    lhu    x3, 36(x2)
    addi   x13, x6, 454
    rem    x18, x24, x1
    auipc  x11, 0
    jalr   x7, x11, 12
    divu   x6, x5, x22
L11:
    lb     x28, 291(x2)
    remu   x11, x12, x9
    or     x30, x30, x23
    sll    x15, x12, x22
    sll    x10, x3, x4
    lw     x3, 440(x2)
    sub    x14, x25, x6
    sub    x6, x11, x27
    sll    x21, x29, x16
    bgeu   x21, x13, L12
    sll    x16, x22, x8
    div    x4, x14, x8
    slt    x10, x29, x11
L12:
    div    x1, x31, x12
    or     x16, x25, x6
    srl    x23, x22, x28
    mulhu  x23, x5, x29
    slli   x4, x24, 25
    sb     x9, 619(x2)
    slli   x27, x13, 8
    jal    x13, L13
    mulhsu x1, x14, x4
L13:
    bltu   x21, x14, L14
    sra    x16, x20, x26
    and    x6, x25, x31
    mulhsu x15, x19, x14
L14:
    slli   x13, x21, 30
    and    x22, x3, x4
    jal    x13, L15
    remu   x7, x1, x7
L15:
    mulhsu x1, x16, x5
    sltiu  x28, x20, -1767
    bgeu   x3, x6, L16
    mulh   x22, x3, x15
    mul    x7, x31, x14
    sll    x31, x6, x26
L16:
    sb     x24, 335(x2)
    rem    x14, x18, x11
    andi   x25, x22, -201
    sw     x8, 364(x2)
    lh     x15, 604(x2)
    addi   x17, x28, 992
    and    x27, x11, x6
    rem    x18, x7, x5
    mulhsu x1, x19, x10
    lui    x12, 0x58ed2
    bgeu   x9, x6, L17
    sltu   x4, x11, x19
    and    x24, x11, x26
    mulh   x12, x13, x31
L17:
    mulh   x22, x20, x12
    divu   x26, x17, x16
    mulhsu x10, x26, x4
    xor    x7, x10, x23
    srli   x17, x15, 19
    div    x24, x25, x20
    slti   x15, x17, -938
    or     x24, x15, x8
    srli   x24, x29, 30
    sb     x5, 568(x2)
    lbu    x20, 957(x2)
    div    x17, x7, x24
    sw     x14, 272(x2)
    remu   x28, x18, x23
    bltu   x29, x10, L18
    srl    x13, x4, x17
    mulhsu x6, x22, x25
    mul    x10, x22, x15
L18:
    bne    x27, x3, L19
    or     x10, x22, x11
    sll    x25, x3, x9
L19:
    sltiu  x19, x13, 803
    remu   x16, x31, x25
    bgeu   x1, x6, L20
    div    x24, x23, x17
    divu   x28, x12, x16
    sra    x12, x20, x4
L20:
    slli   x19, x10, 0
    bne    x11, x21, L21
    remu   x22, x5, x21
L21:
    bne    x31, x24, L22
    sub    x28, x16, x30
    mulh   x9, x8, x13
L22:
    mulhsu x8, x14, x28
    srl    x19, x24, x30
    divu   x16, x4, x21
    divu   x15, x29, x27
    srli   x5, x26, 13
    mulhu  x29, x7, x31
    ori    x3, x25, 415
    mulhu  x7, x6, x5
    sra    x30, x27, x27
    sw     x13, 216(x2)
    divu   x3, x12, x12
    add    x7, x22, x11
    bltu   x17, x28, L23
    div    x24, x15, x23
    and    x15, x7, x12
    sltu   x20, x22, x28
L23:
    bne    x30, x29, L24
    srl    x20, x19, x1
    remu   x1, x20, x3
    mulh   x5, x10, x1
L24:
    sltu   x11, x13, x23
    slli   x4, x15, 12
    lw     x19, 584(x2)
    sw     x29, 684(x2)
    mulhu  x27, x15, x10
    sw     x14, 232(x2)
    srli   x21, x16, 28
    lhu    x29, 442(x2)
    divu   x10, x18, x8
    mulhsu x22, x8, x27
    lw     x24, 588(x2)
    mulhsu x11, x12, x24
    sh     x7, 912(x2)
    remu   x14, x13, x14
    rem    x22, x3, x26
    mulh   x3, x8, x25
    mulhu  x29, x29, x13
    lh     x31, 144(x2)
    remu   x4, x23, x31
    beq    x16, x23, L25
    div    x1, x15, x9
    mul    x15, x1, x7
L25:
    sh     x9, 756(x2)
    rem    x28, x15, x1
    ori    x23, x9, -424
    mulhsu x17, x25, x10
    rem    x11, x27, x8
    xori   x15, x30, 1072
    srai   x28, x28, 19
    sll    x22, x7, x1
    jal    x23, L26
    rem    x21, x19, x24
L26:
    sh     x7, 480(x2)
    sra    x1, x4, x7
    remu   x23, x18, x22
    divu   x26, x13, x25
    bgeu   x18, x11, L27
    sub    x23, x11, x13
    div    x20, x11, x13
L27:
    lb     x28, 925(x2)
    sb     x8, 85(x2)
    sltu   x29, x27, x14
    lh     x14, 72(x2)
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
