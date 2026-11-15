    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x6859f90c
    li    x3, 0xffff
    li    x4, 0x2
    li    x5, 0xd902425a
    li    x6, 0x7fffffff
    li    x7, 0x2725252b
    li    x8, 0xdb979606
    li    x9, 0xefc9bf3f
    li    x10, 0xac915a6f
    li    x11, 0x8155e979
    li    x12, 0x5a193942
    li    x13, 0xffff
    li    x14, 0xe7ce2ca
    li    x15, 0xffff
    li    x16, 0x3024f6e3
    li    x17, 0xa16feb04
    li    x18, 0x19be7f97
    li    x19, 0x8d38afcb
    li    x20, 0xd591fad7
    li    x21, 0x4d4cf4dc
    li    x22, 0x80000001
    li    x23, 0x6d82fa52
    li    x24, 0x970d8e4c
    li    x25, 0x55555555
    li    x26, 0x2
    li    x27, 0x4e8b8e70
    li    x28, 0x7cfcf5e8
    li    x29, 0x27607467
    li    x30, 0xa976efd5
    li    x31, 0xffff0000
    sra    x8, x14, x10
    srl    x29, x4, x21
    rem    x27, x27, x7
    and    x8, x19, x14
    sltu   x8, x5, x20
    sll    x30, x17, x15
    remu   x19, x1, x28
    mulhsu x27, x27, x31
    bgeu   x24, x27, L0
    divu   x10, x13, x17
L0:
    or     x18, x31, x24
    rem    x23, x21, x20
    srli   x21, x27, 6
    addi   x20, x26, 1927
    sb     x19, 823(x2)
    sb     x21, 98(x2)
    mul    x30, x11, x17
    slli   x3, x20, 13
    mulhu  x21, x5, x27
    divu   x7, x18, x26
    sb     x29, 296(x2)
    mulhu  x30, x19, x4
    auipc  x22, 0x2b103
    jal    x1, L1
    mulh   x16, x9, x4
L1:
    lb     x30, 959(x2)
    sb     x28, 619(x2)
    lui    x28, 0xad92a
    mulh   x24, x27, x14
    sub    x12, x21, x11
    srl    x10, x19, x7
    sh     x19, 972(x2)
    sw     x29, 124(x2)
    divu   x13, x30, x31
    or     x22, x8, x25
    mul    x25, x28, x27
    bge    x18, x1, L2
    slt    x22, x22, x22
L2:
    sub    x30, x28, x17
    mulh   x6, x8, x1
    lbu    x26, 389(x2)
    blt    x24, x24, L3
    sltu   x27, x1, x7
    add    x18, x5, x10
    remu   x9, x30, x3
L3:
    rem    x28, x15, x14
    sw     x27, 836(x2)
    slt    x30, x25, x26
    divu   x7, x23, x4
    srai   x19, x16, 17
    div    x16, x4, x13
    mulhsu x28, x7, x12
    mulhu  x3, x31, x7
    sh     x31, 36(x2)
    beq    x7, x5, L4
    mulhu  x20, x29, x29
    div    x22, x30, x13
    rem    x10, x30, x5
L4:
    auipc  x26, 0
    jalr   x11, x26, 12
    mulhu  x31, x27, x13
L5:
    add    x12, x30, x11
    bgeu   x15, x15, L6
    add    x21, x16, x20
L6:
    addi   x18, x10, 48
    div    x28, x23, x9
    sb     x20, 788(x2)
    sb     x9, 5(x2)
    sltiu  x30, x6, 1127
    sra    x3, x22, x28
    srl    x1, x29, x3
    sub    x11, x19, x23
    and    x27, x27, x30
    lbu    x24, 717(x2)
    beq    x8, x22, L7
    and    x13, x18, x7
    add    x8, x16, x9
    mulhsu x15, x24, x20
L7:
    remu   x10, x27, x18
    addi   x10, x31, -1147
    sw     x31, 240(x2)
    sb     x7, 205(x2)
    andi   x25, x23, -964
    srl    x3, x10, x15
    ori    x23, x22, 365
    xori   x22, x31, 111
    srl    x15, x26, x26
    lbu    x12, 483(x2)
    auipc  x19, 0
    jalr   x27, x19, 12
    mulhsu x30, x11, x28
L8:
    sltiu  x30, x21, -1132
    slt    x14, x18, x3
    andi   x11, x17, 120
    mulh   x28, x26, x24
    srai   x14, x15, 19
    blt    x10, x30, L9
    or     x18, x1, x20
L9:
    xor    x31, x14, x30
    bge    x5, x23, L10
    sub    x17, x29, x5
    div    x22, x30, x26
L10:
    sra    x4, x10, x27
    bge    x10, x24, L11
    srl    x4, x8, x1
    mul    x10, x22, x25
    xor    x18, x5, x27
L11:
    sh     x13, 832(x2)
    lhu    x16, 554(x2)
    add    x16, x5, x17
    jal    x28, L12
    mulh   x18, x20, x28
L12:
    lh     x22, 610(x2)
    lhu    x24, 510(x2)
    mul    x18, x17, x23
    lhu    x18, 560(x2)
    lb     x23, 694(x2)
    xori   x26, x22, -673
    sh     x13, 634(x2)
    sh     x7, 622(x2)
    sb     x20, 919(x2)
    lw     x10, 940(x2)
    mulh   x3, x11, x28
    beq    x25, x22, L13
    rem    x31, x3, x12
    and    x27, x26, x3
    div    x4, x14, x24
L13:
    lb     x19, 294(x2)
    remu   x19, x4, x8
    divu   x29, x9, x1
    mulh   x4, x25, x22
    or     x23, x24, x18
    mulhu  x6, x15, x6
    divu   x21, x5, x15
    rem    x30, x4, x13
    sltiu  x23, x12, 1139
    jal    x8, L14
    mulhu  x24, x10, x30
L14:
    mulh   x20, x27, x17
    andi   x30, x15, -623
    sh     x28, 244(x2)
    auipc  x27, 0x68016
    sub    x30, x13, x10
    remu   x4, x26, x4
    mul    x6, x12, x30
    divu   x4, x20, x6
    sh     x29, 652(x2)
    sltu   x25, x26, x28
    sub    x21, x12, x18
    sw     x15, 848(x2)
    auipc  x11, 0
    jalr   x28, x11, 12
    mulh   x7, x22, x12
L15:
    sltu   x28, x30, x6
    lhu    x9, 608(x2)
    bltu   x7, x31, L16
    mulhsu x28, x15, x14
    sra    x5, x1, x21
    sra    x5, x7, x3
L16:
    sb     x25, 113(x2)
    sb     x24, 1014(x2)
    mulh   x5, x15, x8
    and    x17, x10, x11
    mul    x6, x8, x25
    srai   x12, x8, 10
    auipc  x19, 0
    jalr   x28, x19, 12
    remu   x10, x17, x15
L17:
    divu   x29, x24, x6
    add    x14, x25, x5
    sltiu  x29, x26, -1069
    ori    x10, x18, -922
    jal    x13, L18
    mulhu  x1, x24, x27
L18:
    sw     x25, 1016(x2)
    beq    x5, x27, L19
    sra    x27, x15, x27
L19:
    sub    x20, x15, x10
    mul    x27, x4, x6
    or     x30, x14, x9
    mulh   x23, x28, x1
    sub    x22, x14, x15
    srli   x11, x14, 20
    div    x28, x17, x8
    lhu    x1, 2(x2)
    sltiu  x9, x5, -1624
    and    x12, x1, x3
    bltu   x24, x8, L20
    mul    x20, x17, x27
    sltu   x10, x19, x5
L20:
    and    x28, x7, x5
    slli   x30, x23, 14
    xori   x24, x21, 2035
    sw     x29, 736(x2)
    mulh   x8, x25, x12
    sub    x20, x5, x21
    mulhsu x13, x14, x12
    remu   x18, x13, x29
    mulhu  x17, x21, x1
    jal    x23, L21
    mulhsu x22, x27, x30
L21:
    divu   x12, x19, x15
    slti   x24, x27, 1023
    blt    x30, x7, L22
    sub    x13, x10, x10
L22:
    mul    x1, x13, x26
    lb     x12, 433(x2)
    divu   x7, x5, x28
    srli   x12, x12, 19
    xor    x19, x1, x5
    bne    x14, x21, L23
    mulhsu x5, x24, x23
    add    x10, x17, x8
    divu   x26, x16, x22
L23:
    blt    x23, x3, L24
    slt    x28, x21, x13
    srl    x12, x29, x27
L24:
    blt    x9, x4, L25
    mulhsu x27, x31, x28
L25:
    sb     x19, 388(x2)
    beq    x10, x28, L26
    divu   x21, x25, x13
L26:
    blt    x28, x31, L27
    sltu   x19, x24, x23
L27:
    mulh   x21, x30, x18
    blt    x13, x12, L28
    add    x31, x6, x31
    or     x26, x31, x26
L28:
    mulhu  x18, x5, x15
    auipc  x12, 0
    jalr   x23, x12, 12
    mul    x22, x20, x28
L29:
    sw     x16, 288(x2)
    sb     x28, 57(x2)
    sra    x15, x5, x15
    srai   x9, x10, 17
    sh     x26, 228(x2)
    slt    x23, x4, x18
    rem    x9, x20, x8
    sw     x1, 472(x2)
    lh     x5, 662(x2)
    sw     x28, 140(x2)
    sra    x8, x22, x5
    remu   x7, x29, x23
    sw     x11, 952(x2)
    mul    x21, x25, x19
    sh     x14, 306(x2)
    divu   x31, x1, x14
    rem    x4, x15, x6
    sb     x20, 489(x2)
    jal    x3, L30
    divu   x19, x25, x5
L30:
    auipc  x8, 0
    jalr   x21, x8, 12
    mulhu  x17, x16, x1
L31:
    remu   x24, x15, x6
    rem    x13, x11, x3
    remu   x25, x28, x31
    div    x25, x3, x29
    jal    x1, L32
    mulh   x27, x26, x3
L32:
    sltu   x17, x5, x9
    lb     x27, 878(x2)
    lw     x19, 364(x2)
    mul    x1, x11, x11
    jal    x11, L33
    mulhu  x30, x27, x30
L33:
    auipc  x25, 0xcb978
    lui    x21, 0xd5e2e
    lb     x4, 873(x2)
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
