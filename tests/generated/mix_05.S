    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xaaaaaaaa
    li    x3, 0x960bfc2
    li    x4, 0xc7d426e3
    li    x5, 0x3
    li    x6, 0xffff0000
    li    x7, 0xfffffffe
    li    x8, 0xa2ccd6fd
    li    x9, 0xc2dad23f
    li    x10, 0xffff
    li    x11, 0x517f215f
    li    x12, 0x11c71691
    li    x13, 0xffffffff
    li    x14, 0x1
    li    x15, 0x3
    li    x16, 0xa0411ea9
    li    x17, 0x91caa4cd
    li    x18, 0x738f82a4
    li    x19, 0xf40c2996
    li    x20, 0xbbf75e58
    li    x21, 0x5b1eee56
    li    x22, 0x62267c71
    li    x23, 0x5bd6a203
    li    x24, 0xf8f7413a
    li    x25, 0x3
    li    x26, 0xaaaaaaaa
    li    x27, 0xaac14ced
    li    x28, 0x55555555
    li    x29, 0xffffffff
    li    x30, 0x2a4f783
    li    x31, 0x3
    sw     x22, 156(x2)
    rem    x9, x4, x21
    sll    x5, x8, x26
    srli   x31, x7, 14
    sltiu  x10, x1, 1177
    lb     x19, 149(x2)
    sub    x26, x29, x24
    add    x11, x21, x22
    lb     x13, 597(x2)
    srli   x3, x14, 4
    mulh   x18, x27, x28
    bltu   x22, x17, L0
    div    x6, x14, x13
L0:
    sltu   x22, x26, x4
    sb     x31, 436(x2)
    xor    x15, x21, x26
    mulhu  x14, x13, x19
    lui    x10, 0x381fa
    mulh   x23, x8, x1
    auipc  x8, 0x6843f
    remu   x1, x3, x24
    srli   x7, x20, 25
    mulh   x16, x13, x31
    srai   x13, x25, 26
    remu   x1, x10, x11
    andi   x11, x21, -1931
    bne    x12, x7, L1
    slt    x7, x24, x23
L1:
    jal    x13, L2
    mulhu  x15, x21, x13
L2:
    sw     x28, 248(x2)
    lw     x20, 12(x2)
    sb     x20, 345(x2)
    sub    x28, x24, x10
    sh     x28, 142(x2)
    sh     x20, 928(x2)
    addi   x27, x30, 167
    remu   x16, x10, x24
    mulhu  x11, x17, x26
    mulhsu x1, x22, x8
    sra    x10, x23, x26
    sh     x28, 450(x2)
    xori   x30, x23, 1209
    blt    x25, x15, L3
    sub    x1, x5, x18
L3:
    xori   x17, x27, -1318
    slli   x27, x5, 26
    andi   x24, x28, -896
    divu   x28, x26, x7
    mulh   x9, x14, x17
    sh     x5, 740(x2)
    divu   x18, x3, x26
    lhu    x29, 558(x2)
    divu   x1, x21, x4
    div    x22, x25, x23
    mul    x27, x7, x1
    sb     x6, 878(x2)
    beq    x6, x31, L4
    sub    x26, x6, x26
L4:
    rem    x20, x29, x9
    mulh   x1, x7, x30
    xor    x20, x19, x22
    sb     x25, 658(x2)
    lbu    x31, 969(x2)
    jal    x16, L5
    mulhsu x28, x4, x4
L5:
    divu   x8, x29, x20
    mulhu  x29, x1, x4
    slli   x27, x31, 2
    sra    x22, x9, x8
    add    x30, x4, x28
    sb     x30, 276(x2)
    slt    x25, x23, x21
    and    x27, x17, x16
    rem    x14, x5, x17
    xori   x15, x16, 983
    bgeu   x1, x10, L6
    sltu   x12, x6, x4
    div    x29, x14, x12
    mulh   x30, x29, x24
L6:
    mulhsu x18, x25, x30
    slt    x17, x13, x27
    div    x20, x28, x30
    or     x6, x5, x7
    lb     x18, 272(x2)
    bgeu   x8, x13, L7
    and    x21, x23, x14
L7:
    mulhu  x25, x22, x20
    mulhu  x29, x7, x6
    lw     x29, 508(x2)
    mul    x19, x27, x30
    xori   x4, x9, 685
    slli   x24, x24, 6
    sltu   x15, x7, x13
    mul    x25, x23, x28
    mul    x4, x10, x29
    lui    x24, 0x1b272
    bltu   x9, x6, L8
    sll    x16, x12, x13
    sltu   x15, x13, x21
L8:
    lb     x1, 568(x2)
    addi   x11, x3, -1638
    ori    x9, x9, 1219
    bne    x5, x3, L9
    sltu   x10, x19, x16
    add    x26, x28, x25
    mulh   x7, x26, x1
L9:
    sltiu  x30, x9, 778
    divu   x29, x5, x21
    bne    x25, x18, L10
    xor    x28, x5, x1
L10:
    remu   x4, x6, x6
    slli   x16, x23, 1
    srl    x24, x30, x6
    rem    x28, x19, x9
    bge    x31, x10, L11
    add    x15, x9, x25
L11:
    sh     x15, 400(x2)
    bgeu   x23, x27, L12
    div    x5, x24, x15
L12:
    addi   x28, x20, 95
    srli   x17, x13, 28
    mul    x31, x15, x27
    addi   x29, x17, 613
    sll    x3, x12, x29
    mulh   x23, x4, x3
    remu   x12, x13, x14
    divu   x10, x5, x18
    mulh   x6, x16, x11
    div    x27, x27, x11
    rem    x9, x25, x18
    sb     x7, 135(x2)
    beq    x4, x17, L13
    divu   x24, x29, x9
    slt    x4, x14, x17
    sra    x28, x20, x21
L13:
    auipc  x9, 0
    jalr   x8, x9, 12
    rem    x12, x25, x3
L14:
    bge    x5, x31, L15
    divu   x3, x16, x15
L15:
    remu   x31, x8, x22
    addi   x12, x10, 1312
    auipc  x16, 0
    jalr   x11, x16, 12
    rem    x16, x14, x13
L16:
    div    x7, x23, x26
    mulhu  x30, x24, x28
    sh     x20, 368(x2)
    lb     x15, 794(x2)
    srl    x28, x22, x28
    rem    x27, x20, x31
    auipc  x24, 0
    jalr   x3, x24, 12
    remu   x3, x11, x19
L17:
    addi   x28, x18, -223
    or     x5, x23, x20
    lb     x28, 103(x2)
    mulhsu x22, x30, x16
    sw     x29, 908(x2)
    xor    x28, x29, x3
    bgeu   x28, x22, L18
    slt    x13, x29, x13
    mulh   x21, x15, x10
    slt    x26, x21, x21
L18:
    divu   x6, x30, x12
    ori    x12, x11, -651
    divu   x6, x7, x15
    auipc  x23, 0
    jalr   x6, x23, 12
    mul    x12, x24, x5
L19:
    srli   x13, x7, 11
    auipc  x1, 0
    jalr   x30, x1, 12
    div    x27, x24, x13
L20:
    rem    x6, x1, x19
    div    x29, x5, x6
    slti   x1, x16, -489
    lb     x28, 966(x2)
    beq    x26, x12, L21
    sltu   x7, x10, x23
    or     x30, x14, x28
L21:
    mulhu  x27, x23, x23
    beq    x7, x6, L22
    or     x17, x22, x10
L22:
    beq    x4, x21, L23
    rem    x5, x28, x20
    sltu   x1, x17, x21
L23:
    remu   x26, x12, x15
    divu   x1, x14, x28
    bgeu   x13, x4, L24
    mulhu  x8, x13, x27
    div    x26, x19, x18
    divu   x14, x27, x5
L24:
    bgeu   x19, x21, L25
    xor    x10, x8, x24
L25:
    sltiu  x15, x22, -1016
    slti   x12, x26, -324
    sw     x3, 756(x2)
    remu   x15, x24, x13
    andi   x31, x28, -239
    remu   x6, x13, x13
    mulh   x22, x30, x19
    blt    x21, x20, L26
    sll    x19, x16, x11
    divu   x9, x26, x25
L26:
    mulh   x20, x29, x23
    sltu   x7, x10, x6
    or     x31, x13, x9
    sb     x27, 629(x2)
    mulh   x18, x24, x1
    sh     x3, 356(x2)
    slt    x10, x27, x19
    or     x27, x24, x23
    lb     x29, 445(x2)
    slt    x18, x19, x27
    srl    x13, x1, x22
    mulh   x27, x3, x23
    xori   x24, x10, 985
    lh     x18, 450(x2)
    and    x1, x31, x30
    rem    x9, x31, x21
    divu   x31, x30, x5
    remu   x11, x26, x17
    sll    x20, x16, x31
    divu   x23, x13, x25
    bgeu   x13, x19, L27
    xor    x10, x14, x3
    sll    x9, x8, x22
    mulhsu x29, x16, x30
L27:
    mulh   x19, x22, x5
    sw     x16, 308(x2)
    div    x21, x20, x8
    addi   x17, x29, -1139
    bgeu   x18, x16, L28
    add    x27, x28, x18
L28:
    rem    x15, x31, x9
    addi   x8, x29, -380
    xor    x9, x17, x14
    andi   x11, x1, 1827
    slti   x30, x28, -674
    mulhu  x24, x20, x9
    mulhsu x7, x23, x7
    lw     x19, 268(x2)
    rem    x4, x16, x30
    mulhsu x7, x15, x9
    ori    x16, x6, -816
    beq    x21, x26, L29
    remu   x6, x6, x29
L29:
    mulhu  x18, x7, x9
    mulh   x17, x28, x7
    beq    x25, x11, L30
    rem    x31, x8, x8
    srl    x28, x21, x1
    xor    x30, x14, x15
L30:
    lw     x1, 628(x2)
    and    x15, x17, x18
    mulhu  x25, x29, x23
    lw     x6, 844(x2)
    lw     x21, 164(x2)
    bge    x26, x20, L31
    mulhsu x30, x13, x5
    mulh   x20, x21, x18
    sltu   x11, x17, x18
L31:
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
