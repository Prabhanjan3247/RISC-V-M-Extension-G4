    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x5db80162
    li    x3, 0x9cab5fb4
    li    x4, 0xffff0000
    li    x5, 0xffff0000
    li    x6, 0xacea600b
    li    x7, 0xfffffffd
    li    x8, 0xffff
    li    x9, 0xffff0000
    li    x10, 0x2
    li    x11, 0x0
    li    x12, 0x77c9cda5
    li    x13, 0x1fb3ca55
    li    x14, 0xb04d634a
    li    x15, 0xffffffff
    li    x16, 0xffffffff
    li    x17, 0xffff0000
    li    x18, 0x191f6dab
    li    x19, 0x6ad734fa
    li    x20, 0xeac4a49c
    li    x21, 0xdde57e38
    li    x22, 0xef056d9e
    li    x23, 0xa779217a
    li    x24, 0x793d6941
    li    x25, 0x7fffffff
    li    x26, 0xcc358c93
    li    x27, 0xf456ed9a
    li    x28, 0xfd45050d
    li    x29, 0xba3da94
    li    x30, 0xc1155e11
    li    x31, 0xcc537905
    auipc  x13, 0
    jalr   x3, x13, 12
    mul    x21, x18, x19
L0:
    xor    x29, x31, x27
    ori    x20, x1, -1180
    xor    x9, x6, x13
    add    x14, x23, x13
    sltu   x25, x24, x22
    divu   x10, x12, x22
    xori   x11, x29, -1647
    sra    x1, x11, x30
    sub    x13, x14, x26
    srli   x11, x31, 30
    rem    x31, x15, x29
    mulhu  x27, x4, x16
    bgeu   x15, x20, L1
    mulhsu x15, x5, x3
    slt    x13, x13, x9
L1:
    bgeu   x26, x5, L2
    mul    x7, x15, x24
    mulhsu x30, x22, x23
    sub    x9, x12, x31
L2:
    sb     x18, 981(x2)
    sb     x23, 33(x2)
    slt    x17, x6, x3
    ori    x10, x11, 1167
    bne    x18, x14, L3
    srl    x27, x19, x8
    slt    x11, x17, x7
L3:
    srai   x24, x29, 29
    srli   x19, x8, 22
    bge    x5, x17, L4
    mulh   x14, x16, x31
    div    x9, x10, x28
L4:
    bltu   x4, x22, L5
    srl    x18, x31, x12
    xor    x21, x16, x7
    srl    x27, x14, x20
L5:
    auipc  x30, 0xab334
    divu   x22, x13, x10
    srli   x5, x16, 6
    srai   x15, x31, 30
    mulhsu x3, x28, x25
    or     x10, x19, x16
    srli   x29, x28, 21
    bne    x25, x29, L6
    sra    x21, x3, x19
    div    x15, x15, x23
L6:
    or     x23, x14, x20
    auipc  x17, 0x3d5da
    sltu   x10, x13, x17
    div    x30, x11, x28
    bltu   x6, x13, L7
    sra    x9, x7, x8
    sltu   x14, x24, x17
L7:
    sw     x6, 788(x2)
    divu   x20, x11, x27
    or     x28, x13, x19
    bne    x15, x30, L8
    add    x9, x24, x20
    rem    x7, x30, x30
L8:
    mul    x14, x3, x12
    lbu    x30, 516(x2)
    srai   x11, x1, 11
    lbu    x19, 43(x2)
    auipc  x12, 0x92c3a
    sltu   x28, x24, x5
    bgeu   x15, x12, L9
    add    x13, x4, x20
    mul    x30, x17, x11
L9:
    sb     x5, 560(x2)
    mulhu  x23, x21, x26
    mulhsu x21, x24, x20
    bltu   x28, x22, L10
    slt    x9, x23, x13
    sll    x24, x30, x24
    mulhu  x9, x31, x15
L10:
    bne    x14, x13, L11
    xor    x29, x17, x31
L11:
    sb     x31, 897(x2)
    addi   x10, x9, -611
    bgeu   x1, x29, L12
    sra    x5, x30, x8
L12:
    sw     x17, 80(x2)
    bltu   x31, x18, L13
    sltu   x28, x12, x17
    srl    x15, x17, x6
    and    x1, x5, x17
L13:
    mulhu  x29, x6, x29
    div    x6, x19, x19
    sw     x4, 256(x2)
    sb     x12, 224(x2)
    sltiu  x9, x1, -1895
    sh     x22, 704(x2)
    remu   x28, x24, x30
    divu   x25, x26, x18
    jal    x16, L14
    remu   x17, x10, x28
L14:
    remu   x26, x13, x9
    andi   x9, x25, -25
    srli   x13, x25, 12
    rem    x21, x11, x24
    divu   x6, x24, x17
    slt    x30, x5, x6
    remu   x5, x25, x28
    jal    x12, L15
    div    x18, x13, x1
L15:
    srai   x25, x15, 27
    bltu   x13, x6, L16
    sra    x10, x6, x20
    or     x26, x5, x6
L16:
    mulh   x3, x22, x20
    sh     x9, 1008(x2)
    remu   x14, x25, x26
    mulhu  x3, x19, x12
    xori   x9, x27, -191
    rem    x5, x16, x14
    mul    x22, x12, x17
    sw     x1, 992(x2)
    or     x28, x27, x22
    lbu    x14, 344(x2)
    div    x25, x18, x7
    sb     x11, 779(x2)
    mulh   x10, x25, x15
    beq    x28, x5, L17
    sltu   x20, x17, x7
L17:
    sw     x1, 88(x2)
    slli   x16, x16, 8
    lbu    x12, 524(x2)
    mulhsu x21, x1, x6
    jal    x4, L18
    div    x15, x14, x15
L18:
    rem    x26, x26, x27
    divu   x23, x14, x25
    slt    x26, x26, x3
    mulhu  x10, x26, x17
    bge    x5, x24, L19
    sra    x8, x26, x30
L19:
    bgeu   x28, x8, L20
    sra    x29, x3, x31
    mulhsu x31, x19, x7
    rem    x5, x5, x17
L20:
    sb     x21, 388(x2)
    auipc  x18, 0x4f45c
    xori   x21, x27, 765
    beq    x16, x10, L21
    rem    x27, x31, x29
    slt    x3, x9, x1
L21:
    mulhsu x22, x20, x18
    slt    x15, x14, x19
    or     x3, x11, x27
    remu   x21, x20, x16
    divu   x26, x23, x1
    xori   x28, x23, 167
    mulhu  x22, x25, x15
    rem    x29, x30, x6
    add    x13, x29, x22
    lh     x29, 168(x2)
    sb     x5, 517(x2)
    sll    x20, x16, x23
    auipc  x3, 0
    jalr   x23, x3, 12
    mulhu  x31, x17, x8
L22:
    mulh   x31, x8, x6
    div    x31, x12, x6
    addi   x22, x18, -363
    slti   x22, x11, -1410
    srli   x28, x8, 11
    slt    x3, x9, x31
    divu   x1, x16, x4
    xor    x20, x3, x1
    div    x15, x22, x12
    sh     x30, 762(x2)
    mul    x19, x27, x27
    slti   x1, x4, 1261
    bgeu   x16, x31, L23
    sub    x30, x22, x29
    srl    x24, x8, x5
    slt    x28, x17, x8
L23:
    add    x30, x30, x6
    bge    x8, x15, L24
    divu   x27, x17, x26
    mul    x19, x22, x25
L24:
    divu   x22, x30, x26
    xori   x21, x3, 489
    mulh   x13, x6, x28
    rem    x11, x11, x27
    mulhsu x17, x3, x30
    lhu    x15, 618(x2)
    andi   x15, x25, 1375
    sh     x30, 636(x2)
    sltiu  x29, x7, 732
    slli   x12, x29, 16
    lb     x28, 585(x2)
    ori    x8, x13, 1302
    mulhsu x13, x19, x23
    srli   x21, x29, 7
    sb     x19, 575(x2)
    auipc  x15, 0
    jalr   x24, x15, 12
    mulh   x11, x11, x3
L25:
    div    x19, x19, x10
    divu   x10, x4, x29
    remu   x1, x8, x17
    and    x1, x21, x17
    auipc  x12, 0x4cef8
    div    x19, x17, x21
    sll    x12, x6, x19
    bge    x13, x29, L26
    divu   x14, x30, x6
    mulhsu x10, x30, x8
    divu   x8, x8, x24
L26:
    div    x7, x28, x23
    sb     x21, 402(x2)
    lh     x1, 604(x2)
    remu   x17, x31, x18
    auipc  x9, 0
    jalr   x1, x9, 12
    div    x13, x25, x20
L27:
    srl    x26, x31, x11
    rem    x28, x3, x7
    ori    x31, x18, 1614
    rem    x3, x29, x24
    sb     x4, 82(x2)
    and    x26, x18, x16
    ori    x19, x19, -871
    sw     x9, 988(x2)
    bltu   x30, x6, L28
    mul    x27, x10, x22
L28:
    auipc  x27, 0x3b157
    srli   x20, x15, 21
    sb     x18, 224(x2)
    beq    x30, x15, L29
    sra    x8, x25, x26
    sltu   x19, x27, x29
L29:
    bne    x7, x17, L30
    or     x23, x22, x10
    sltu   x29, x30, x8
L30:
    mulhu  x12, x11, x26
    bgeu   x18, x31, L31
    xor    x30, x30, x16
    divu   x17, x15, x15
    sub    x4, x4, x31
L31:
    bltu   x13, x13, L32
    sll    x26, x28, x7
    slt    x8, x25, x4
L32:
    add    x6, x18, x15
    lhu    x27, 584(x2)
    sw     x14, 480(x2)
    ori    x14, x1, 203
    andi   x10, x20, -973
    remu   x7, x26, x11
    sub    x28, x24, x7
    mul    x12, x8, x19
    sw     x31, 364(x2)
    or     x15, x22, x22
    lui    x24, 0xfcd7
    srli   x14, x18, 20
    mulh   x20, x18, x9
    andi   x21, x23, 316
    add    x27, x26, x25
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
