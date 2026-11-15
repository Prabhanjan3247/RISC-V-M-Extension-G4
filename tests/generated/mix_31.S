    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x26739b44
    li    x3, 0x52f09fa
    li    x4, 0x8fbb6e71
    li    x5, 0x0
    li    x6, 0x2
    li    x7, 0x3
    li    x8, 0x1dbfb12
    li    x9, 0x7fffffff
    li    x10, 0x657afa20
    li    x11, 0x44755b30
    li    x12, 0xeab4a846
    li    x13, 0x2bb7dc21
    li    x14, 0x373a3f1c
    li    x15, 0x983182cd
    li    x16, 0xffff
    li    x17, 0x80000000
    li    x18, 0x80000000
    li    x19, 0xe7b4287e
    li    x20, 0x29a8b87c
    li    x21, 0xab0496ba
    li    x22, 0x8d3a1778
    li    x23, 0x718a1ba6
    li    x24, 0x7be45bc9
    li    x25, 0x55555555
    li    x26, 0xfffffffd
    li    x27, 0x94abf9f2
    li    x28, 0x750f021f
    li    x29, 0xfacdc47d
    li    x30, 0xfffffffe
    li    x31, 0x8b9758c9
    div    x20, x31, x19
    remu   x21, x20, x11
    bgeu   x15, x15, L0
    or     x11, x16, x13
    mulh   x13, x30, x23
L0:
    mulh   x12, x8, x28
    sh     x8, 520(x2)
    sltu   x21, x6, x19
    mulh   x16, x23, x8
    lw     x22, 72(x2)
    rem    x18, x29, x29
    mul    x9, x3, x19
    lhu    x15, 134(x2)
    rem    x15, x14, x22
    lbu    x9, 787(x2)
    lb     x26, 526(x2)
    mulhsu x1, x1, x14
    ori    x6, x31, -1000
    mulhu  x3, x3, x19
    mulhsu x9, x30, x1
    slli   x8, x16, 27
    srl    x26, x28, x10
    slt    x22, x13, x8
    lbu    x21, 525(x2)
    mulh   x27, x27, x15
    sll    x13, x30, x18
    srai   x27, x13, 10
    mulhu  x3, x29, x13
    jal    x7, L1
    divu   x28, x12, x8
L1:
    remu   x11, x8, x17
    jal    x12, L2
    remu   x28, x4, x5
L2:
    mulhu  x27, x3, x24
    xori   x9, x9, -1665
    or     x13, x17, x1
    mulhsu x12, x15, x21
    srai   x12, x26, 25
    mulhsu x25, x28, x11
    sh     x11, 538(x2)
    mulh   x11, x21, x17
    mul    x10, x31, x31
    slti   x30, x8, 779
    bltu   x6, x18, L3
    sltu   x24, x6, x21
    srl    x10, x27, x9
    sltu   x28, x23, x18
L3:
    bltu   x30, x17, L4
    srl    x21, x15, x25
    or     x17, x22, x25
L4:
    lw     x18, 584(x2)
    lbu    x28, 418(x2)
    slli   x11, x11, 18
    sltu   x18, x15, x15
    remu   x29, x30, x7
    sltu   x11, x27, x1
    remu   x4, x19, x29
    srai   x30, x15, 12
    mulhsu x1, x19, x9
    slli   x20, x7, 30
    remu   x15, x31, x19
    lbu    x18, 589(x2)
    jal    x22, L5
    div    x1, x6, x24
L5:
    beq    x14, x3, L6
    remu   x25, x12, x5
    or     x1, x20, x23
L6:
    auipc  x8, 0
    jalr   x19, x8, 12
    div    x18, x21, x27
L7:
    divu   x29, x5, x3
    beq    x7, x28, L8
    mulhu  x20, x6, x22
L8:
    bne    x11, x23, L9
    srl    x30, x31, x29
    xor    x4, x4, x25
L9:
    slli   x15, x8, 21
    mulhu  x1, x7, x28
    sw     x26, 412(x2)
    sll    x1, x11, x5
    sh     x13, 388(x2)
    auipc  x30, 0x8d5e8
    lhu    x20, 958(x2)
    lb     x22, 880(x2)
    slt    x31, x1, x16
    mulhsu x22, x5, x10
    or     x31, x8, x28
    mulhsu x21, x22, x21
    slti   x29, x23, -1029
    srli   x5, x28, 11
    andi   x3, x21, -625
    div    x24, x3, x15
    sh     x3, 830(x2)
    bltu   x19, x27, L10
    add    x8, x10, x8
L10:
    sb     x22, 151(x2)
    divu   x18, x12, x4
    or     x1, x9, x29
    lw     x10, 916(x2)
    jal    x28, L11
    mul    x18, x5, x26
L11:
    slti   x21, x14, 1735
    sltiu  x22, x14, -1646
    lh     x6, 446(x2)
    auipc  x15, 0
    jalr   x23, x15, 12
    mulhu  x10, x11, x26
L12:
    xor    x31, x26, x7
    lh     x4, 386(x2)
    srai   x1, x3, 3
    xor    x4, x12, x5
    sub    x28, x13, x5
    slli   x14, x26, 1
    ori    x18, x8, -175
    add    x21, x15, x21
    sb     x26, 944(x2)
    srai   x24, x7, 19
    sub    x25, x14, x18
    divu   x25, x12, x26
    beq    x29, x26, L13
    add    x28, x30, x8
L13:
    div    x11, x14, x8
    sll    x30, x9, x20
    lhu    x23, 846(x2)
    lb     x20, 373(x2)
    divu   x6, x15, x4
    bgeu   x25, x25, L14
    or     x11, x21, x1
    add    x9, x30, x28
L14:
    divu   x8, x26, x23
    jal    x17, L15
    mul    x27, x6, x10
L15:
    mulh   x6, x5, x4
    mulhsu x29, x1, x16
    sh     x14, 184(x2)
    srl    x15, x29, x28
    mulhsu x4, x18, x1
    rem    x21, x20, x6
    div    x4, x28, x23
    slli   x11, x20, 10
    slli   x20, x9, 11
    lui    x23, 0xa18c1
    sltiu  x12, x28, -859
    xor    x15, x7, x20
    bne    x23, x24, L16
    mulhu  x29, x23, x13
L16:
    sltiu  x31, x5, -1064
    lbu    x22, 736(x2)
    divu   x19, x30, x27
    div    x13, x18, x19
    sh     x10, 804(x2)
    add    x16, x1, x31
    jal    x14, L17
    divu   x12, x13, x17
L17:
    lbu    x17, 323(x2)
    sh     x26, 576(x2)
    sh     x4, 634(x2)
    slti   x21, x19, 516
    auipc  x13, 0x85254
    ori    x1, x21, -991
    auipc  x26, 0x6a284
    lw     x31, 880(x2)
    srl    x18, x21, x16
    mulh   x19, x13, x21
    sub    x9, x30, x7
    mulh   x12, x1, x14
    bltu   x8, x16, L18
    div    x17, x31, x4
    mulhu  x10, x17, x28
L18:
    sw     x9, 856(x2)
    div    x15, x9, x10
    lw     x31, 436(x2)
    auipc  x31, 0
    jalr   x7, x31, 12
    rem    x1, x11, x31
L19:
    srl    x12, x24, x28
    srl    x16, x21, x21
    mulh   x6, x17, x9
    slt    x31, x27, x31
    sltu   x28, x25, x21
    remu   x28, x3, x15
    sw     x26, 792(x2)
    lh     x14, 708(x2)
    andi   x4, x11, -659
    slli   x26, x9, 23
    sh     x21, 740(x2)
    sb     x3, 332(x2)
    bne    x8, x19, L20
    slt    x23, x11, x25
L20:
    sb     x29, 676(x2)
    slt    x23, x4, x17
    slti   x6, x3, 327
    srli   x29, x1, 19
    rem    x24, x7, x1
    div    x17, x4, x20
    xori   x13, x14, 1833
    sh     x4, 898(x2)
    jal    x23, L21
    divu   x10, x12, x21
L21:
    lbu    x13, 297(x2)
    lw     x30, 20(x2)
    jal    x3, L22
    mulh   x3, x17, x7
L22:
    bgeu   x24, x15, L23
    xor    x18, x31, x5
    srl    x7, x1, x19
    mulh   x3, x7, x6
L23:
    remu   x10, x18, x4
    sltu   x25, x24, x7
    lb     x26, 2(x2)
    addi   x27, x19, -780
    slti   x11, x25, -469
    slt    x20, x20, x19
    auipc  x22, 0
    jalr   x20, x22, 12
    mulhsu x13, x17, x22
L24:
    ori    x11, x1, -1262
    and    x6, x18, x11
    sb     x30, 328(x2)
    remu   x13, x26, x14
    slt    x16, x25, x19
    sb     x28, 751(x2)
    beq    x25, x26, L25
    mulhsu x22, x15, x21
    divu   x8, x23, x18
L25:
    srli   x28, x31, 9
    mulh   x27, x12, x18
    mulhsu x20, x25, x1
    xori   x6, x14, 1809
    divu   x4, x23, x20
    mulhsu x30, x29, x20
    divu   x16, x9, x1
    srli   x30, x11, 31
    sll    x6, x19, x23
    add    x11, x4, x25
    sw     x18, 628(x2)
    sltu   x5, x11, x14
    mulh   x15, x28, x17
    blt    x18, x7, L26
    remu   x9, x4, x15
L26:
    sub    x16, x22, x5
    lbu    x5, 452(x2)
    sb     x10, 528(x2)
    div    x9, x10, x29
    mulhsu x13, x27, x14
    div    x23, x4, x7
    mul    x12, x5, x9
    blt    x7, x8, L27
    sub    x4, x7, x15
    sub    x22, x16, x14
L27:
    bltu   x27, x29, L28
    or     x16, x20, x10
    sra    x16, x19, x12
L28:
    srai   x8, x28, 12
    sra    x9, x16, x19
    mulhsu x3, x4, x15
    mulhsu x1, x20, x6
    srli   x16, x15, 22
    sh     x12, 582(x2)
    mul    x15, x20, x3
    sb     x15, 652(x2)
    mulh   x12, x24, x25
    rem    x12, x29, x6
    remu   x1, x6, x28
    div    x24, x31, x29
    sh     x20, 666(x2)
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
