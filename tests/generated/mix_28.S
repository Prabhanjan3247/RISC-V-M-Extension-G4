    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xa4fd2b7f
    li    x3, 0xa61f70d9
    li    x4, 0x57eec3ea
    li    x5, 0x0
    li    x6, 0xdafb0246
    li    x7, 0xa4c68f2c
    li    x8, 0x80000001
    li    x9, 0x52230a6d
    li    x10, 0x0
    li    x11, 0xfffffffe
    li    x12, 0x4b6b4cb9
    li    x13, 0x693d01f8
    li    x14, 0x2
    li    x15, 0x7fffffff
    li    x16, 0x80000001
    li    x17, 0x13a0c8b5
    li    x18, 0xc58d09e2
    li    x19, 0x0
    li    x20, 0x671c0cc4
    li    x21, 0x2466df4
    li    x22, 0xceebaff1
    li    x23, 0xfa32fa26
    li    x24, 0x80000000
    li    x25, 0x70efdaaf
    li    x26, 0xffffffff
    li    x27, 0xc9ee8bd9
    li    x28, 0xb131a410
    li    x29, 0x7fcdbd20
    li    x30, 0x7d1746ca
    li    x31, 0x4e46d5d8
    sh     x22, 982(x2)
    remu   x12, x16, x15
    mulhsu x10, x9, x26
    mulhu  x26, x18, x12
    sb     x9, 239(x2)
    xori   x30, x24, 1313
    lbu    x21, 644(x2)
    sh     x11, 356(x2)
    lh     x30, 56(x2)
    sw     x8, 640(x2)
    bge    x1, x11, L0
    srl    x8, x23, x27
L0:
    srl    x9, x5, x9
    lb     x29, 36(x2)
    divu   x6, x22, x20
    sub    x16, x28, x23
    sb     x17, 258(x2)
    mulhu  x4, x29, x16
    sh     x16, 734(x2)
    divu   x22, x30, x14
    jal    x11, L1
    mulhu  x20, x12, x12
L1:
    rem    x31, x21, x20
    bgeu   x14, x6, L2
    rem    x9, x17, x5
    slt    x14, x14, x20
L2:
    lh     x28, 444(x2)
    bne    x21, x19, L3
    srl    x23, x28, x18
    add    x28, x18, x15
    mulh   x30, x30, x13
L3:
    div    x31, x4, x5
    slt    x10, x7, x4
    mul    x27, x5, x24
    srli   x31, x3, 27
    auipc  x10, 0
    jalr   x30, x10, 12
    mulhu  x14, x28, x6
L4:
    remu   x6, x14, x7
    sb     x13, 756(x2)
    mulh   x16, x30, x1
    mulhu  x23, x16, x19
    sltiu  x16, x13, -1985
    bgeu   x7, x22, L5
    sub    x14, x31, x11
    mulhu  x8, x19, x16
    mulh   x22, x30, x26
L5:
    blt    x28, x23, L6
    mulh   x23, x23, x23
    mul    x28, x26, x25
L6:
    remu   x6, x14, x7
    sw     x5, 376(x2)
    ori    x25, x27, 1065
    slt    x15, x11, x13
    lb     x22, 309(x2)
    divu   x25, x1, x6
    bne    x12, x7, L7
    divu   x1, x26, x7
    mulhsu x14, x20, x28
L7:
    div    x1, x22, x13
    lui    x3, 0x82275
    andi   x18, x27, 1950
    slt    x7, x13, x14
    auipc  x29, 0
    jalr   x5, x29, 12
    rem    x27, x29, x18
L8:
    bne    x30, x26, L9
    sra    x22, x10, x17
    div    x18, x28, x28
L9:
    sub    x3, x8, x20
    blt    x30, x27, L10
    sub    x23, x14, x21
    div    x6, x16, x26
    add    x28, x12, x30
L10:
    blt    x8, x14, L11
    sll    x11, x26, x24
    sll    x21, x20, x26
L11:
    mulhsu x4, x22, x4
    srli   x13, x20, 19
    lbu    x27, 210(x2)
    remu   x24, x11, x18
    rem    x21, x13, x30
    sb     x4, 667(x2)
    rem    x3, x20, x26
    mulh   x23, x4, x30
    xor    x9, x11, x24
    bge    x9, x8, L12
    slt    x23, x22, x4
L12:
    bne    x27, x19, L13
    remu   x7, x6, x17
    and    x20, x9, x1
L13:
    ori    x6, x23, -51
    sll    x22, x13, x15
    slti   x9, x5, -1722
    divu   x1, x29, x21
    mul    x17, x27, x8
    sra    x5, x28, x9
    sh     x15, 228(x2)
    sll    x4, x10, x9
    sw     x22, 808(x2)
    bne    x12, x31, L14
    slt    x29, x5, x14
L14:
    slti   x22, x22, 840
    xori   x21, x7, 773
    mulhu  x4, x31, x25
    mul    x18, x22, x1
    slti   x7, x17, 1301
    mulh   x12, x18, x3
    sb     x12, 968(x2)
    sh     x28, 104(x2)
    addi   x8, x4, 917
    mul    x27, x1, x27
    xor    x30, x6, x23
    srai   x27, x5, 24
    sh     x21, 130(x2)
    sub    x23, x23, x3
    bltu   x6, x23, L15
    add    x13, x29, x16
L15:
    remu   x22, x5, x13
    mulhsu x9, x31, x18
    bne    x24, x10, L16
    xor    x6, x21, x18
    slt    x14, x20, x16
L16:
    lbu    x20, 64(x2)
    mulh   x9, x23, x6
    ori    x10, x26, 997
    ori    x27, x21, -1556
    lui    x1, 0x871b0
    div    x31, x7, x27
    srai   x29, x9, 9
    srai   x5, x26, 3
    slti   x27, x27, -1629
    jal    x20, L17
    divu   x15, x30, x18
L17:
    sb     x21, 705(x2)
    beq    x10, x30, L18
    div    x26, x16, x23
    sltu   x6, x20, x12
    and    x21, x8, x24
L18:
    divu   x16, x6, x6
    sh     x25, 816(x2)
    or     x25, x26, x8
    slli   x29, x17, 19
    bltu   x7, x8, L19
    add    x9, x23, x28
    and    x10, x7, x10
    mulh   x4, x4, x30
L19:
    remu   x29, x3, x11
    and    x22, x12, x15
    mulhu  x25, x9, x21
    or     x17, x30, x20
    div    x19, x5, x11
    remu   x25, x8, x23
    xor    x21, x6, x11
    auipc  x7, 0
    jalr   x14, x7, 12
    div    x8, x22, x6
L20:
    mulhsu x22, x23, x11
    remu   x4, x1, x31
    auipc  x24, 0
    jalr   x28, x24, 12
    mulhu  x8, x22, x25
L21:
    divu   x3, x15, x23
    mulh   x3, x8, x11
    srli   x20, x3, 5
    bne    x13, x14, L22
    mulh   x10, x12, x3
    sra    x4, x11, x31
L22:
    lw     x9, 992(x2)
    mulhsu x10, x14, x29
    sub    x11, x11, x8
    bne    x18, x4, L23
    sll    x15, x23, x14
L23:
    rem    x25, x1, x5
    srai   x1, x9, 26
    auipc  x10, 0
    jalr   x21, x10, 12
    mulhsu x14, x18, x14
L24:
    jal    x18, L25
    mulhu  x30, x11, x16
L25:
    and    x12, x22, x7
    mul    x1, x4, x24
    jal    x14, L26
    mulhu  x5, x9, x22
L26:
    lb     x10, 593(x2)
    or     x11, x4, x26
    srai   x9, x10, 1
    divu   x24, x27, x13
    divu   x21, x28, x14
    remu   x13, x11, x15
    slti   x21, x4, 782
    sra    x30, x29, x25
    sb     x6, 853(x2)
    lui    x21, 0x982f
    bltu   x7, x10, L27
    divu   x14, x29, x23
    sll    x3, x16, x4
L27:
    slli   x29, x16, 31
    sb     x22, 53(x2)
    auipc  x10, 0
    jalr   x20, x10, 12
    mulhu  x9, x28, x24
L28:
    sw     x14, 180(x2)
    bge    x16, x1, L29
    remu   x17, x1, x10
    slt    x28, x1, x1
    div    x28, x1, x29
L29:
    addi   x11, x13, 348
    sh     x23, 294(x2)
    div    x15, x21, x17
    mulhu  x20, x6, x23
    jal    x25, L30
    div    x1, x25, x14
L30:
    bgeu   x3, x11, L31
    sra    x4, x11, x24
L31:
    divu   x6, x26, x15
    srli   x23, x29, 29
    andi   x1, x28, 1247
    mul    x9, x28, x24
    beq    x23, x5, L32
    add    x31, x4, x14
    or     x9, x17, x8
    remu   x31, x3, x28
L32:
    mulh   x6, x17, x28
    mulhu  x24, x9, x28
    rem    x7, x15, x23
    lb     x14, 1000(x2)
    remu   x30, x7, x9
    lhu    x4, 324(x2)
    rem    x1, x15, x22
    srai   x15, x16, 14
    div    x9, x24, x6
    beq    x7, x17, L33
    xor    x29, x30, x1
    sub    x26, x27, x8
    sub    x18, x4, x8
L33:
    ori    x25, x21, -853
    sh     x6, 244(x2)
    auipc  x30, 0
    jalr   x14, x30, 12
    rem    x13, x30, x14
L34:
    sw     x16, 656(x2)
    and    x18, x19, x8
    mulhu  x5, x21, x5
    jal    x4, L35
    remu   x14, x30, x7
L35:
    jal    x6, L36
    mulh   x8, x28, x22
L36:
    sub    x23, x30, x5
    and    x17, x11, x23
    and    x27, x29, x16
    mulh   x28, x28, x18
    slt    x3, x14, x1
    sh     x11, 628(x2)
    lh     x6, 958(x2)
    lbu    x30, 247(x2)
    div    x14, x12, x29
    slli   x18, x25, 13
    mulh   x26, x1, x15
    blt    x29, x31, L37
    sll    x28, x27, x29
L37:
    sh     x28, 462(x2)
    remu   x12, x9, x10
    lb     x19, 139(x2)
    mulhsu x30, x22, x3
    sb     x29, 264(x2)
    ori    x1, x21, 806
    sb     x14, 240(x2)
    divu   x20, x26, x22
    mulhsu x28, x15, x9
    srl    x22, x29, x4
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
