    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xffff
    li    x3, 0x0
    li    x4, 0xd98d9b16
    li    x5, 0x2
    li    x6, 0x0
    li    x7, 0xfbc2e966
    li    x8, 0x1
    li    x9, 0x32e3815
    li    x10, 0x5d678e8c
    li    x11, 0xfcd921eb
    li    x12, 0x6a470227
    li    x13, 0xf0e12549
    li    x14, 0x2
    li    x15, 0x52e2323e
    li    x16, 0x70ff910
    li    x17, 0xfffffffd
    li    x18, 0xb10f8664
    li    x19, 0x98395276
    li    x20, 0x21069470
    li    x21, 0x80000000
    li    x22, 0x3e7b3ec2
    li    x23, 0xf75f1ff1
    li    x24, 0xc4be9d1f
    li    x25, 0xa29c15b1
    li    x26, 0x55555555
    li    x27, 0x3
    li    x28, 0xffff
    li    x29, 0x59b56c3f
    li    x30, 0xffffffff
    li    x31, 0xc6eb4ac0
    ori    x4, x21, -1027
    divu   x24, x23, x8
    bge    x20, x20, L0
    or     x19, x14, x30
L0:
    remu   x3, x18, x29
    or     x18, x27, x3
    mul    x28, x13, x26
    lhu    x6, 840(x2)
    blt    x20, x30, L1
    divu   x16, x22, x29
L1:
    sw     x23, 852(x2)
    div    x5, x19, x10
    or     x25, x20, x15
    rem    x13, x26, x28
    lhu    x25, 6(x2)
    xori   x15, x12, 1377
    mul    x5, x31, x18
    bne    x30, x8, L2
    mulhu  x1, x21, x1
    srl    x5, x9, x5
L2:
    bge    x8, x18, L3
    srl    x4, x3, x7
    sltu   x3, x26, x10
L3:
    sb     x11, 786(x2)
    sltu   x25, x31, x4
    sltu   x27, x10, x21
    mulhu  x24, x12, x6
    sll    x27, x7, x18
    sltiu  x15, x14, -2029
    auipc  x9, 0
    jalr   x21, x9, 12
    mulh   x6, x24, x1
L4:
    sb     x20, 711(x2)
    lw     x22, 576(x2)
    div    x19, x22, x17
    xori   x16, x1, 8
    sb     x14, 412(x2)
    mulh   x7, x24, x17
    slti   x1, x13, -369
    jal    x30, L5
    mulhsu x22, x8, x19
L5:
    sw     x21, 32(x2)
    sll    x9, x27, x11
    sra    x29, x17, x29
    bge    x18, x24, L6
    div    x5, x1, x15
    mul    x11, x26, x8
    div    x23, x15, x28
L6:
    slt    x17, x1, x24
    mulhu  x18, x17, x21
    div    x27, x9, x18
    add    x25, x1, x16
    lb     x10, 729(x2)
    slli   x26, x15, 1
    sb     x29, 903(x2)
    auipc  x27, 0
    jalr   x25, x27, 12
    remu   x26, x17, x29
L7:
    rem    x20, x19, x24
    srl    x20, x23, x4
    lh     x4, 388(x2)
    sh     x22, 76(x2)
    rem    x4, x13, x10
    mulhsu x5, x22, x3
    bne    x14, x27, L8
    mul    x7, x18, x24
    mulhsu x31, x23, x14
L8:
    mulhu  x4, x18, x22
    divu   x25, x4, x7
    srl    x25, x12, x11
    mul    x8, x20, x3
    jal    x6, L9
    mulhu  x1, x17, x26
L9:
    bne    x14, x21, L10
    mulhsu x21, x16, x30
    rem    x24, x14, x17
L10:
    remu   x14, x1, x14
    and    x29, x3, x23
    sltiu  x24, x13, 1972
    slt    x9, x16, x10
    divu   x7, x28, x27
    mul    x27, x15, x12
    lhu    x30, 136(x2)
    lbu    x15, 155(x2)
    mulhsu x24, x4, x4
    slt    x25, x19, x20
    div    x19, x29, x9
    srli   x28, x21, 13
    sw     x4, 512(x2)
    sw     x26, 900(x2)
    bge    x29, x10, L11
    mulhu  x4, x12, x3
    sll    x21, x6, x17
    xor    x16, x27, x6
L11:
    beq    x8, x1, L12
    mul    x16, x22, x15
    sll    x4, x30, x24
L12:
    bge    x5, x26, L13
    remu   x17, x27, x9
L13:
    divu   x8, x13, x6
    mulhsu x4, x11, x19
    divu   x23, x1, x15
    lh     x31, 106(x2)
    mulhsu x13, x3, x17
    srli   x6, x16, 1
    slt    x5, x15, x23
    sh     x25, 746(x2)
    mulh   x7, x9, x11
    auipc  x23, 0
    jalr   x19, x23, 12
    div    x26, x12, x16
L14:
    mulh   x4, x9, x20
    auipc  x26, 0
    jalr   x4, x26, 12
    mulh   x10, x22, x10
L15:
    div    x10, x31, x24
    lbu    x10, 435(x2)
    bgeu   x25, x19, L16
    sll    x27, x20, x9
    srl    x25, x18, x6
    and    x1, x7, x27
L16:
    ori    x7, x22, -1425
    divu   x29, x13, x23
    auipc  x3, 0x26822
    xor    x17, x5, x3
    sb     x9, 688(x2)
    sltiu  x22, x3, 1112
    mulhu  x9, x15, x6
    div    x25, x12, x17
    sll    x21, x12, x29
    div    x11, x12, x25
    sb     x18, 99(x2)
    add    x16, x18, x24
    sw     x18, 736(x2)
    remu   x21, x31, x22
    div    x4, x25, x25
    add    x18, x10, x15
    srl    x18, x19, x19
    andi   x6, x18, 370
    mulh   x19, x19, x26
    sw     x28, 180(x2)
    or     x13, x21, x25
    mulh   x10, x16, x24
    bne    x9, x24, L17
    sra    x20, x26, x26
L17:
    ori    x31, x13, 1746
    mulhsu x10, x23, x31
    mulhu  x3, x31, x30
    lb     x21, 483(x2)
    sb     x11, 455(x2)
    remu   x9, x22, x9
    slti   x15, x27, -959
    xor    x30, x8, x7
    divu   x25, x11, x20
    div    x30, x15, x24
    srai   x1, x28, 18
    sb     x17, 424(x2)
    div    x11, x12, x6
    sb     x11, 262(x2)
    addi   x11, x1, 422
    sb     x27, 452(x2)
    sb     x6, 827(x2)
    divu   x5, x8, x16
    auipc  x30, 0
    jalr   x13, x30, 12
    rem    x30, x9, x3
L18:
    mul    x22, x21, x5
    lbu    x26, 416(x2)
    xori   x18, x3, -1328
    and    x14, x10, x31
    mulh   x27, x1, x28
    sra    x24, x3, x13
    mulhu  x13, x26, x30
    sltiu  x7, x8, 654
    lh     x28, 46(x2)
    lbu    x28, 678(x2)
    sb     x9, 751(x2)
    rem    x9, x6, x31
    xori   x25, x30, -1262
    divu   x11, x24, x1
    xor    x25, x11, x27
    div    x22, x10, x17
    mulh   x3, x24, x9
    lw     x22, 1012(x2)
    auipc  x5, 0
    jalr   x6, x5, 12
    divu   x15, x13, x19
L19:
    beq    x17, x20, L20
    add    x29, x8, x7
    mulh   x18, x26, x17
L20:
    srli   x17, x9, 26
    lw     x1, 500(x2)
    sub    x10, x23, x30
    remu   x21, x4, x3
    beq    x6, x16, L21
    and    x31, x20, x31
    div    x6, x17, x10
L21:
    sra    x29, x31, x23
    rem    x24, x1, x8
    mulh   x23, x13, x27
    lbu    x17, 239(x2)
    div    x26, x20, x15
    auipc  x11, 0
    jalr   x14, x11, 12
    mulhu  x27, x26, x8
L22:
    sb     x5, 935(x2)
    sb     x16, 334(x2)
    divu   x18, x30, x9
    sb     x15, 639(x2)
    bne    x1, x16, L23
    divu   x29, x18, x30
L23:
    auipc  x15, 0
    jalr   x16, x15, 12
    mulh   x25, x17, x20
L24:
    lbu    x1, 12(x2)
    remu   x21, x22, x6
    srli   x29, x19, 23
    or     x1, x11, x1
    slli   x23, x13, 19
    bge    x10, x19, L25
    srl    x15, x7, x24
L25:
    xori   x6, x22, -655
    sw     x26, 472(x2)
    div    x31, x15, x20
    mul    x29, x26, x10
    remu   x10, x24, x18
    mulh   x19, x22, x20
    lhu    x18, 238(x2)
    addi   x5, x24, 1755
    lui    x14, 0xa2e29
    lb     x13, 378(x2)
    mulhu  x16, x22, x4
    sra    x7, x6, x10
    divu   x11, x31, x3
    lb     x29, 964(x2)
    remu   x30, x1, x6
    slli   x4, x31, 7
    slti   x9, x30, -1940
    mulh   x7, x27, x6
    sw     x6, 284(x2)
    lb     x8, 913(x2)
    slli   x21, x13, 5
    mulhsu x4, x1, x13
    sb     x19, 673(x2)
    auipc  x8, 0
    jalr   x31, x8, 12
    div    x26, x8, x28
L26:
    or     x31, x25, x11
    sh     x25, 266(x2)
    sh     x4, 532(x2)
    sltiu  x5, x24, -624
    remu   x30, x5, x29
    addi   x14, x8, -1068
    beq    x10, x24, L27
    sub    x7, x28, x19
    sltu   x22, x8, x1
L27:
    xor    x5, x4, x27
    blt    x25, x23, L28
    or     x5, x8, x19
L28:
    or     x28, x15, x19
    divu   x12, x28, x7
    sh     x17, 550(x2)
    remu   x19, x23, x25
    blt    x28, x23, L29
    sll    x24, x12, x15
    sll    x30, x18, x17
L29:
    mulh   x7, x13, x15
    mulhu  x17, x12, x10
    sra    x7, x30, x7
    ori    x29, x5, -188
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
