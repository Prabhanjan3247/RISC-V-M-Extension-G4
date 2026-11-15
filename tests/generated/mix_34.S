    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x3
    li    x3, 0x4e7b4830
    li    x4, 0x866f200c
    li    x5, 0x2
    li    x6, 0x2
    li    x7, 0x234addbc
    li    x8, 0xe653d4a1
    li    x9, 0x7fffffff
    li    x10, 0x83d01425
    li    x11, 0xc01b9f43
    li    x12, 0xffff0000
    li    x13, 0x3cc6ceee
    li    x14, 0xe8d53528
    li    x15, 0xe89f8822
    li    x16, 0xc07136a9
    li    x17, 0xd33f16ad
    li    x18, 0x36d80526
    li    x19, 0x4757633a
    li    x20, 0x3
    li    x21, 0x2
    li    x22, 0xd7797ad6
    li    x23, 0xffff
    li    x24, 0xfffffffe
    li    x25, 0x80000001
    li    x26, 0x32de4ebe
    li    x27, 0x1
    li    x28, 0x55555555
    li    x29, 0x1
    li    x30, 0xffff0000
    li    x31, 0x2
    xor    x8, x5, x23
    auipc  x31, 0
    jalr   x27, x31, 12
    rem    x31, x16, x20
L0:
    rem    x14, x21, x24
    sltiu  x15, x1, -1211
    srl    x4, x3, x31
    lhu    x24, 422(x2)
    mul    x9, x11, x21
    sh     x20, 920(x2)
    lw     x10, 184(x2)
    srai   x10, x23, 3
    ori    x14, x14, -214
    lw     x10, 20(x2)
    slli   x24, x30, 29
    sh     x19, 854(x2)
    sb     x26, 305(x2)
    sll    x5, x31, x15
    bge    x5, x20, L1
    rem    x10, x30, x18
L1:
    sw     x7, 864(x2)
    auipc  x18, 0
    jalr   x31, x18, 12
    rem    x18, x18, x9
L2:
    sh     x12, 772(x2)
    slti   x5, x3, 954
    ori    x26, x11, -1401
    sll    x24, x27, x19
    auipc  x18, 0xf297f
    add    x16, x11, x25
    mulhu  x27, x6, x11
    remu   x15, x27, x22
    ori    x7, x29, 124
    mulh   x21, x26, x9
    mul    x17, x10, x7
    lbu    x3, 858(x2)
    bne    x6, x18, L3
    divu   x14, x10, x11
    srl    x19, x17, x31
L3:
    xor    x27, x30, x10
    mul    x17, x27, x26
    srli   x28, x22, 5
    jal    x18, L4
    mul    x18, x13, x16
L4:
    srli   x3, x23, 11
    rem    x5, x19, x25
    remu   x15, x14, x16
    lbu    x29, 865(x2)
    mulh   x10, x18, x14
    jal    x30, L5
    rem    x9, x17, x23
L5:
    andi   x1, x6, 236
    auipc  x23, 0x64acc
    mul    x8, x17, x14
    sw     x31, 16(x2)
    addi   x8, x21, -979
    lbu    x31, 110(x2)
    mulhsu x3, x1, x24
    sh     x7, 438(x2)
    add    x16, x12, x29
    lhu    x6, 956(x2)
    jal    x18, L6
    divu   x10, x16, x17
L6:
    slti   x26, x25, -167
    srai   x22, x20, 8
    bge    x13, x17, L7
    mulhu  x24, x10, x10
    mulhsu x13, x4, x22
    mulhsu x12, x11, x20
L7:
    mulhu  x31, x3, x19
    lb     x12, 612(x2)
    bltu   x6, x15, L8
    mulhu  x30, x22, x23
    mulhu  x30, x26, x25
L8:
    remu   x8, x18, x6
    lhu    x7, 924(x2)
    mulhsu x30, x11, x21
    addi   x7, x30, 1410
    mulhsu x6, x30, x24
    mulhu  x27, x3, x12
    lhu    x14, 506(x2)
    sll    x6, x15, x15
    remu   x5, x4, x30
    lhu    x22, 100(x2)
    div    x5, x1, x15
    sub    x18, x18, x14
    bgeu   x10, x14, L9
    srl    x6, x17, x4
    sra    x6, x10, x11
    sll    x28, x7, x20
L9:
    lb     x1, 105(x2)
    addi   x24, x1, -1872
    mulh   x7, x24, x22
    div    x14, x23, x6
    sltu   x25, x23, x14
    bne    x1, x30, L10
    rem    x25, x11, x28
    and    x25, x20, x19
    sll    x12, x26, x5
L10:
    or     x7, x31, x23
    auipc  x18, 0
    jalr   x26, x18, 12
    mulhu  x14, x11, x27
L11:
    srai   x1, x14, 7
    lw     x7, 1004(x2)
    mulh   x9, x7, x10
    lw     x24, 948(x2)
    bltu   x6, x13, L12
    mulhu  x1, x13, x28
    and    x5, x21, x17
    rem    x15, x20, x24
L12:
    auipc  x22, 0x59ed7
    lh     x10, 178(x2)
    div    x27, x30, x16
    divu   x1, x1, x15
    srai   x15, x14, 11
    add    x5, x23, x25
    andi   x7, x12, 1870
    sw     x26, 560(x2)
    sra    x31, x16, x13
    sh     x16, 60(x2)
    slli   x6, x28, 10
    mulh   x12, x10, x27
    sw     x1, 396(x2)
    sltu   x13, x27, x1
    and    x27, x3, x23
    slli   x6, x18, 30
    mulh   x8, x30, x5
    remu   x14, x20, x25
    sb     x18, 854(x2)
    lbu    x30, 18(x2)
    sb     x13, 539(x2)
    mulhu  x11, x15, x8
    lb     x17, 463(x2)
    mul    x1, x28, x18
    add    x27, x7, x14
    bltu   x24, x13, L13
    sra    x15, x13, x26
L13:
    sw     x14, 36(x2)
    rem    x11, x16, x21
    lui    x30, 0x52491
    lw     x26, 716(x2)
    bge    x12, x10, L14
    mul    x24, x7, x19
    sra    x11, x16, x3
    sll    x5, x12, x17
L14:
    srli   x1, x25, 1
    bgeu   x13, x10, L15
    xor    x29, x22, x13
    mulh   x3, x10, x29
L15:
    mulhsu x11, x7, x22
    bge    x27, x21, L16
    mulhsu x11, x19, x16
    slt    x8, x31, x3
    mulh   x14, x13, x17
L16:
    xori   x18, x9, 365
    bne    x14, x3, L17
    add    x3, x31, x11
L17:
    sh     x5, 230(x2)
    mulhsu x23, x31, x12
    remu   x25, x16, x22
    slt    x5, x3, x11
    slti   x20, x15, -1895
    sh     x10, 804(x2)
    mulhsu x30, x16, x30
    mulh   x5, x18, x22
    and    x18, x23, x19
    sll    x12, x15, x5
    divu   x15, x3, x30
    auipc  x3, 0x1b711
    slti   x20, x29, 1502
    blt    x4, x10, L18
    xor    x16, x25, x26
    remu   x23, x13, x24
    remu   x16, x26, x6
L18:
    sb     x20, 237(x2)
    mul    x7, x26, x24
    sw     x23, 468(x2)
    beq    x5, x27, L19
    sll    x20, x13, x20
    slt    x22, x8, x20
    mulhsu x26, x3, x15
L19:
    slli   x9, x14, 31
    jal    x11, L20
    div    x15, x9, x19
L20:
    sub    x9, x23, x11
    sh     x1, 684(x2)
    div    x20, x7, x17
    mulhsu x26, x17, x27
    sh     x26, 944(x2)
    lb     x22, 956(x2)
    sh     x25, 244(x2)
    sb     x14, 276(x2)
    mulh   x24, x6, x18
    sh     x25, 974(x2)
    mulhsu x30, x7, x15
    mul    x17, x29, x26
    mul    x22, x5, x20
    mulh   x10, x6, x31
    ori    x20, x3, -1598
    andi   x5, x28, -1729
    add    x25, x14, x6
    div    x31, x13, x7
    sb     x3, 696(x2)
    sub    x22, x20, x5
    bne    x3, x6, L21
    rem    x8, x3, x26
L21:
    slli   x6, x22, 3
    sub    x28, x27, x30
    sra    x15, x18, x20
    sltiu  x19, x15, 678
    xor    x1, x24, x25
    lhu    x20, 38(x2)
    or     x16, x25, x9
    srai   x1, x3, 21
    rem    x11, x4, x8
    beq    x18, x12, L22
    and    x6, x23, x5
    mul    x18, x23, x29
    sra    x22, x14, x7
L22:
    mulhsu x19, x30, x7
    jal    x19, L23
    mulhsu x17, x3, x23
L23:
    mulhu  x6, x23, x30
    mulhu  x15, x8, x9
    divu   x20, x9, x30
    sub    x10, x24, x9
    lhu    x5, 574(x2)
    sltiu  x25, x21, -1827
    srai   x29, x5, 13
    div    x29, x17, x17
    sw     x19, 652(x2)
    mulhsu x27, x13, x30
    sub    x28, x23, x1
    bgeu   x10, x8, L24
    sra    x26, x23, x6
    or     x8, x3, x6
L24:
    remu   x24, x6, x13
    lb     x30, 476(x2)
    lui    x14, 0x7b259
    rem    x17, x19, x20
    remu   x31, x10, x23
    mul    x10, x9, x28
    ori    x30, x26, -1739
    div    x9, x9, x4
    sltiu  x5, x7, 1856
    mul    x8, x28, x23
    slt    x6, x4, x25
    srl    x29, x28, x5
    mulhu  x1, x31, x17
    blt    x10, x24, L25
    remu   x17, x14, x21
    mul    x7, x25, x31
    remu   x3, x6, x24
L25:
    ori    x27, x4, 1402
    bge    x23, x26, L26
    srl    x10, x26, x20
    mulhsu x8, x21, x28
L26:
    slti   x14, x11, -720
    bge    x31, x15, L27
    remu   x6, x17, x12
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
