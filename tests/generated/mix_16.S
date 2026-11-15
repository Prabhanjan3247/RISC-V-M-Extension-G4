    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x1
    li    x3, 0xfffffffd
    li    x4, 0x80000000
    li    x5, 0xd359b658
    li    x6, 0xfffffffd
    li    x7, 0xd10fc21f
    li    x8, 0x1327c66c
    li    x9, 0xfd14f4fb
    li    x10, 0xffff
    li    x11, 0x60f2823
    li    x12, 0x81083462
    li    x13, 0xaaaaaaaa
    li    x14, 0x33d31419
    li    x15, 0x2ebe449f
    li    x16, 0x440dd8fb
    li    x17, 0xffff0000
    li    x18, 0xffff
    li    x19, 0xffff0000
    li    x20, 0xda7df6ce
    li    x21, 0xf9a58220
    li    x22, 0xab085747
    li    x23, 0x451da6a4
    li    x24, 0x80000000
    li    x25, 0xfffffffd
    li    x26, 0x7fcb6e78
    li    x27, 0xffffffff
    li    x28, 0xc55c8c0a
    li    x29, 0x37c20324
    li    x30, 0x2
    li    x31, 0xacb6c6b6
    bgeu   x29, x19, L0
    sll    x11, x6, x3
L0:
    lhu    x4, 132(x2)
    sltiu  x11, x5, -757
    sub    x31, x22, x20
    remu   x10, x10, x30
    divu   x11, x27, x8
    lhu    x19, 30(x2)
    add    x4, x26, x29
    sltiu  x30, x20, -1396
    lui    x23, 0x9eb6d
    bne    x13, x26, L1
    div    x22, x13, x13
    sub    x13, x1, x5
    mulh   x30, x12, x31
L1:
    sw     x31, 568(x2)
    mulh   x12, x12, x21
    srli   x24, x23, 25
    jal    x13, L2
    div    x31, x15, x31
L2:
    sh     x16, 954(x2)
    sh     x25, 642(x2)
    mulh   x11, x5, x3
    auipc  x12, 0xedfba
    sltu   x26, x14, x11
    srl    x11, x18, x22
    srl    x30, x29, x24
    rem    x30, x22, x14
    srli   x22, x7, 25
    mulhu  x13, x15, x25
    sb     x23, 884(x2)
    div    x22, x23, x28
    blt    x28, x17, L3
    sub    x3, x22, x27
    xor    x13, x7, x4
    mul    x23, x11, x15
L3:
    and    x8, x10, x25
    sh     x15, 848(x2)
    mulhu  x9, x29, x29
    addi   x20, x23, 605
    rem    x24, x25, x18
    blt    x18, x1, L4
    xor    x15, x27, x9
    mulhsu x13, x26, x25
    add    x22, x18, x12
L4:
    mulh   x30, x7, x16
    divu   x21, x26, x27
    bge    x22, x12, L5
    or     x25, x31, x1
    rem    x19, x27, x19
L5:
    ori    x16, x9, -29
    remu   x25, x8, x6
    sh     x10, 754(x2)
    srli   x6, x3, 20
    mul    x25, x11, x10
    andi   x18, x13, 1342
    lw     x27, 492(x2)
    sll    x4, x25, x1
    auipc  x11, 0
    jalr   x20, x11, 12
    divu   x15, x9, x21
L6:
    divu   x27, x30, x27
    mulh   x14, x15, x17
    mul    x9, x1, x27
    auipc  x9, 0x806ce
    bne    x1, x24, L7
    or     x20, x4, x8
    sra    x6, x29, x5
    srl    x8, x7, x6
L7:
    sb     x5, 995(x2)
    srli   x14, x24, 17
    andi   x6, x22, 1570
    mulh   x25, x8, x16
    slti   x11, x28, 566
    divu   x6, x10, x30
    slli   x31, x29, 27
    xor    x27, x26, x11
    auipc  x11, 0
    jalr   x19, x11, 12
    rem    x9, x4, x29
L8:
    lbu    x23, 211(x2)
    lui    x13, 0x160c1
    bne    x18, x6, L9
    divu   x23, x30, x9
    or     x24, x3, x15
L9:
    blt    x1, x26, L10
    sll    x20, x31, x15
    div    x10, x19, x12
L10:
    lh     x10, 392(x2)
    blt    x11, x24, L11
    div    x12, x7, x6
    srl    x14, x14, x11
L11:
    lhu    x6, 648(x2)
    add    x29, x25, x26
    mulhsu x16, x23, x8
    beq    x12, x25, L12
    sra    x1, x5, x31
    sltu   x8, x15, x19
L12:
    sb     x29, 421(x2)
    remu   x15, x28, x17
    lh     x19, 620(x2)
    mulhsu x22, x25, x15
    rem    x31, x5, x7
    sll    x10, x10, x5
    xori   x28, x4, 1702
    addi   x6, x28, 1547
    remu   x9, x26, x3
    divu   x18, x17, x6
    or     x21, x5, x30
    add    x11, x15, x27
    mulhu  x31, x1, x13
    divu   x7, x6, x31
    slti   x30, x18, -755
    remu   x22, x15, x18
    sra    x23, x31, x24
    div    x15, x8, x17
    mulh   x25, x7, x19
    sb     x26, 190(x2)
    srli   x27, x4, 1
    slt    x1, x12, x30
    ori    x19, x13, 163
    divu   x25, x15, x8
    lbu    x19, 627(x2)
    sltu   x23, x22, x22
    auipc  x22, 0xb3993
    slt    x24, x29, x5
    srli   x12, x17, 5
    xori   x7, x21, 2009
    srl    x6, x27, x14
    lw     x29, 712(x2)
    div    x11, x24, x31
    slti   x28, x4, 1076
    slti   x24, x18, 658
    rem    x12, x22, x5
    divu   x22, x1, x9
    sltiu  x21, x26, 1478
    bgeu   x22, x11, L13
    mulh   x1, x22, x9
L13:
    jal    x27, L14
    mulh   x15, x31, x7
L14:
    xor    x30, x17, x12
    srl    x12, x24, x13
    sb     x11, 129(x2)
    mulhsu x10, x17, x4
    srai   x14, x5, 8
    bge    x7, x3, L15
    mulhsu x21, x24, x29
    divu   x4, x31, x7
L15:
    sb     x17, 1013(x2)
    bge    x16, x25, L16
    slt    x12, x4, x4
L16:
    andi   x27, x23, -1092
    sll    x7, x25, x4
    lhu    x14, 866(x2)
    blt    x8, x17, L17
    sltu   x6, x14, x5
    sll    x7, x11, x7
    mulhsu x10, x4, x26
L17:
    lh     x25, 552(x2)
    remu   x7, x12, x21
    sltu   x4, x4, x8
    lui    x29, 0x9c6e3
    sw     x31, 400(x2)
    sh     x12, 502(x2)
    sw     x20, 720(x2)
    srl    x19, x15, x19
    ori    x14, x17, 694
    remu   x22, x8, x6
    bgeu   x6, x7, L18
    sub    x23, x13, x23
    and    x7, x21, x1
    and    x13, x7, x30
L18:
    jal    x12, L19
    div    x21, x11, x1
L19:
    lw     x31, 800(x2)
    sw     x30, 408(x2)
    sltiu  x29, x20, -1017
    lui    x20, 0x879c8
    mulhsu x26, x20, x11
    mulh   x21, x8, x18
    mul    x28, x11, x31
    lbu    x26, 423(x2)
    lbu    x26, 950(x2)
    lb     x3, 469(x2)
    bgeu   x14, x15, L20
    sub    x31, x11, x15
L20:
    bne    x31, x5, L21
    remu   x11, x26, x28
    sub    x26, x21, x1
L21:
    sw     x31, 336(x2)
    mul    x11, x20, x12
    mulh   x17, x23, x19
    mulh   x25, x11, x13
    sb     x28, 380(x2)
    lw     x24, 444(x2)
    addi   x20, x22, 1191
    xori   x5, x7, -989
    divu   x5, x30, x17
    bltu   x8, x3, L22
    mulh   x16, x20, x5
    srl    x21, x14, x10
L22:
    ori    x15, x28, 776
    bne    x5, x30, L23
    or     x29, x1, x10
L23:
    blt    x31, x13, L24
    rem    x23, x10, x26
    srl    x13, x14, x26
L24:
    slli   x3, x9, 17
    bgeu   x31, x30, L25
    mulh   x30, x31, x28
    or     x19, x5, x4
L25:
    auipc  x26, 0xf8517
    lbu    x28, 494(x2)
    lbu    x9, 594(x2)
    srli   x26, x23, 23
    and    x12, x7, x15
    xori   x20, x17, 1969
    divu   x18, x12, x3
    sltiu  x22, x17, -1557
    bgeu   x9, x4, L26
    xor    x22, x1, x13
    mulh   x19, x20, x21
    add    x18, x3, x23
L26:
    divu   x12, x19, x15
    remu   x6, x26, x10
    sra    x7, x31, x7
    slti   x3, x29, -983
    sh     x3, 326(x2)
    slti   x7, x5, 962
    srli   x6, x21, 4
    jal    x20, L27
    divu   x17, x25, x12
L27:
    lb     x20, 570(x2)
    sh     x16, 886(x2)
    lw     x26, 380(x2)
    lw     x7, 664(x2)
    addi   x25, x20, 1884
    and    x31, x18, x14
    remu   x18, x26, x3
    bgeu   x17, x23, L28
    mulh   x11, x4, x3
L28:
    slti   x12, x20, -1362
    andi   x25, x11, 900
    blt    x9, x5, L29
    sltu   x6, x26, x12
L29:
    slti   x29, x8, 875
    sub    x3, x26, x19
    rem    x7, x3, x13
    bltu   x9, x7, L30
    sub    x5, x25, x29
    slt    x20, x26, x4
L30:
    mulhsu x28, x6, x24
    ori    x14, x27, -1313
    andi   x12, x1, -1920
    sub    x6, x27, x5
    mulhu  x7, x24, x4
    andi   x16, x15, -1034
    ori    x23, x15, 739
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
