    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x3
    li    x3, 0x55555555
    li    x4, 0xa354989
    li    x5, 0x7fffffff
    li    x6, 0xd1a8cbb1
    li    x7, 0xa48c3263
    li    x8, 0x0
    li    x9, 0x7a5a777a
    li    x10, 0xffff
    li    x11, 0x7dd5d095
    li    x12, 0x5c7571b7
    li    x13, 0x7fffffff
    li    x14, 0x84ffe4a6
    li    x15, 0x2
    li    x16, 0xfb2dbeec
    li    x17, 0x80000001
    li    x18, 0x3efd7d3f
    li    x19, 0x3f3bd8df
    li    x20, 0xbdf4cb77
    li    x21, 0x7fffffff
    li    x22, 0x0
    li    x23, 0x42ac1c11
    li    x24, 0xd2e7e6ea
    li    x25, 0x9e048272
    li    x26, 0x5210473a
    li    x27, 0xf3cd0e5b
    li    x28, 0x35699c15
    li    x29, 0xffff0000
    li    x30, 0xfffffffe
    li    x31, 0xa9fc9620
    mulh   x16, x23, x23
    mul    x20, x7, x7
    xori   x3, x28, 473
    srai   x12, x30, 23
    blt    x8, x11, L0
    srl    x7, x21, x13
    mulhu  x29, x19, x18
L0:
    addi   x12, x12, -90
    sh     x27, 878(x2)
    mulhu  x8, x30, x23
    div    x17, x6, x19
    blt    x3, x4, L1
    remu   x26, x16, x19
    and    x23, x15, x14
    add    x26, x27, x21
L1:
    sw     x4, 396(x2)
    bge    x4, x29, L2
    remu   x28, x12, x28
L2:
    sub    x29, x16, x5
    sw     x25, 716(x2)
    add    x30, x4, x23
    sub    x8, x18, x22
    slli   x12, x27, 18
    sltu   x7, x1, x17
    mulhu  x25, x31, x28
    remu   x21, x6, x14
    sra    x13, x31, x22
    lhu    x26, 738(x2)
    auipc  x6, 0x4d328
    srl    x31, x21, x23
    auipc  x10, 0x64be9
    xori   x31, x24, -1104
    remu   x11, x11, x14
    mulhu  x26, x10, x18
    lbu    x17, 618(x2)
    rem    x29, x9, x24
    lui    x17, 0xf2710
    mulh   x13, x15, x1
    mulhsu x12, x17, x11
    sh     x5, 56(x2)
    sll    x7, x22, x17
    srl    x24, x30, x8
    auipc  x14, 0
    jalr   x23, x14, 12
    mulh   x10, x12, x4
L3:
    rem    x1, x7, x26
    lui    x13, 0xa2d9d
    rem    x13, x20, x9
    addi   x29, x4, -258
    srai   x26, x1, 4
    sw     x17, 160(x2)
    mul    x18, x20, x11
    mulhu  x31, x20, x29
    sw     x26, 404(x2)
    divu   x7, x26, x10
    and    x6, x22, x6
    auipc  x6, 0
    jalr   x31, x6, 12
    remu   x30, x25, x31
L4:
    sltu   x28, x6, x3
    lhu    x16, 384(x2)
    andi   x19, x13, -96
    xori   x17, x27, 822
    lw     x8, 648(x2)
    lh     x10, 396(x2)
    jal    x20, L5
    remu   x4, x11, x15
L5:
    slti   x13, x9, 74
    lw     x23, 56(x2)
    auipc  x16, 0
    jalr   x18, x16, 12
    mulh   x12, x1, x26
L6:
    sh     x14, 152(x2)
    andi   x31, x12, 973
    and    x14, x8, x14
    lh     x20, 50(x2)
    remu   x17, x11, x9
    lhu    x20, 452(x2)
    mulhsu x22, x30, x26
    srai   x18, x18, 15
    sll    x31, x29, x11
    sltiu  x29, x5, -414
    sll    x13, x11, x25
    slli   x10, x13, 20
    blt    x24, x1, L7
    add    x10, x28, x22
    divu   x4, x14, x15
    divu   x21, x20, x1
L7:
    sw     x18, 936(x2)
    div    x16, x26, x23
    mulhu  x1, x15, x10
    mul    x3, x26, x19
    rem    x6, x23, x25
    remu   x13, x15, x26
    srli   x28, x20, 1
    srli   x18, x6, 13
    divu   x20, x26, x10
    sra    x26, x27, x16
    addi   x10, x12, 994
    sll    x5, x5, x21
    mulhsu x21, x16, x18
    lhu    x4, 174(x2)
    sw     x23, 248(x2)
    remu   x4, x6, x1
    sub    x28, x28, x1
    mul    x10, x19, x16
    sb     x8, 7(x2)
    bgeu   x7, x10, L8
    mulhsu x14, x31, x27
    sll    x11, x5, x11
    div    x17, x19, x21
L8:
    addi   x14, x17, -1936
    sw     x4, 624(x2)
    lh     x3, 934(x2)
    rem    x30, x31, x5
    and    x8, x6, x21
    mulh   x6, x12, x13
    auipc  x11, 0
    jalr   x4, x11, 12
    div    x16, x21, x23
L9:
    andi   x20, x28, -599
    rem    x28, x16, x28
    addi   x27, x9, -1096
    lw     x18, 28(x2)
    sh     x26, 174(x2)
    divu   x15, x31, x14
    srli   x16, x16, 26
    auipc  x19, 0
    jalr   x25, x19, 12
    div    x26, x5, x28
L10:
    mulhsu x11, x6, x29
    bne    x27, x15, L11
    xor    x24, x1, x26
    slt    x28, x22, x25
L11:
    rem    x27, x13, x20
    lb     x3, 1020(x2)
    bltu   x17, x18, L12
    sltu   x26, x17, x5
    sra    x16, x12, x21
    sub    x1, x24, x21
L12:
    mulhu  x31, x11, x16
    mulhu  x1, x13, x12
    sh     x11, 576(x2)
    slt    x15, x9, x21
    add    x29, x8, x30
    div    x24, x22, x25
    sw     x4, 624(x2)
    sll    x26, x21, x26
    lbu    x30, 976(x2)
    slt    x22, x3, x21
    remu   x13, x7, x7
    sub    x31, x26, x3
    slti   x12, x5, 167
    bltu   x14, x10, L13
    mul    x19, x3, x18
    sll    x14, x10, x19
    and    x30, x21, x17
L13:
    sltiu  x23, x22, 383
    lw     x19, 932(x2)
    lhu    x15, 996(x2)
    srli   x11, x9, 17
    blt    x26, x10, L14
    mulh   x28, x21, x12
    divu   x23, x12, x3
L14:
    div    x9, x25, x6
    addi   x30, x23, 1703
    jal    x28, L15
    rem    x12, x30, x16
L15:
    mul    x21, x9, x12
    mul    x15, x21, x10
    divu   x19, x13, x13
    div    x7, x24, x31
    add    x21, x29, x1
    or     x25, x25, x31
    sll    x15, x17, x18
    divu   x1, x19, x11
    mul    x31, x28, x15
    sra    x16, x15, x18
    jal    x9, L16
    mulhsu x5, x21, x20
L16:
    remu   x6, x12, x22
    blt    x30, x16, L17
    divu   x30, x25, x14
L17:
    rem    x5, x12, x13
    srai   x27, x18, 16
    jal    x9, L18
    mulh   x28, x17, x28
L18:
    sb     x27, 162(x2)
    sh     x14, 576(x2)
    rem    x27, x21, x1
    remu   x9, x23, x31
    lh     x16, 120(x2)
    add    x11, x6, x23
    mulhu  x14, x31, x16
    div    x3, x16, x1
    sll    x6, x22, x29
    addi   x14, x6, 1116
    lb     x18, 638(x2)
    slli   x30, x1, 7
    sb     x4, 872(x2)
    sw     x18, 180(x2)
    lhu    x5, 320(x2)
    divu   x24, x3, x11
    or     x4, x22, x8
    mulhsu x17, x19, x20
    slli   x28, x10, 31
    sw     x21, 592(x2)
    sw     x30, 900(x2)
    rem    x9, x29, x14
    mulhsu x24, x19, x4
    mulh   x15, x19, x28
    sw     x28, 244(x2)
    mulhu  x19, x28, x23
    sb     x14, 64(x2)
    add    x15, x16, x5
    mulh   x17, x14, x12
    auipc  x21, 0
    jalr   x13, x21, 12
    div    x10, x1, x13
L19:
    sw     x8, 708(x2)
    mul    x22, x6, x5
    lbu    x11, 438(x2)
    sh     x28, 642(x2)
    remu   x28, x21, x29
    sll    x6, x12, x12
    mulhsu x27, x12, x7
    remu   x5, x17, x30
    sb     x27, 212(x2)
    sh     x10, 642(x2)
    sltiu  x25, x5, 672
    andi   x18, x10, -755
    mulh   x8, x1, x31
    sh     x21, 448(x2)
    divu   x27, x12, x14
    mulh   x16, x6, x3
    lbu    x23, 525(x2)
    beq    x18, x30, L20
    srl    x12, x27, x15
L20:
    sh     x9, 510(x2)
    lhu    x1, 980(x2)
    sub    x28, x24, x27
    bge    x23, x17, L21
    mulh   x7, x14, x1
    mulhsu x23, x12, x6
    or     x12, x10, x17
L21:
    mulh   x15, x10, x14
    bge    x29, x20, L22
    rem    x5, x6, x13
    sll    x3, x25, x12
    add    x28, x21, x7
L22:
    lbu    x30, 921(x2)
    bge    x13, x28, L23
    slt    x25, x17, x8
L23:
    sw     x4, 784(x2)
    and    x26, x21, x5
    bgeu   x27, x13, L24
    or     x27, x9, x20
    remu   x13, x17, x3
    div    x27, x7, x27
L24:
    sra    x15, x17, x22
    slt    x8, x23, x11
    slti   x7, x16, -886
    mulh   x14, x9, x9
    beq    x22, x30, L25
    mulhu  x13, x24, x22
    or     x18, x4, x9
    sltu   x29, x18, x30
L25:
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
