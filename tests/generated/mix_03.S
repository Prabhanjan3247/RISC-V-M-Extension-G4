    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xaaaaaaaa
    li    x3, 0x6131215f
    li    x4, 0xe45586a8
    li    x5, 0x6aa0eba9
    li    x6, 0xb39b1ac0
    li    x7, 0x9531bb08
    li    x8, 0x19580fe2
    li    x9, 0x464827c7
    li    x10, 0x3e4245e7
    li    x11, 0x1c67514a
    li    x12, 0x7fb34727
    li    x13, 0xf7f61455
    li    x14, 0xb3cbae0f
    li    x15, 0xd1f77f2f
    li    x16, 0xcbc6dbc8
    li    x17, 0xaeaf1e24
    li    x18, 0x0
    li    x19, 0x3
    li    x20, 0x9851e35
    li    x21, 0x4a265947
    li    x22, 0x933a1e4c
    li    x23, 0xffffffff
    li    x24, 0xf74a0f2f
    li    x25, 0x57eabf94
    li    x26, 0x80000001
    li    x27, 0xf2908b1a
    li    x28, 0x4668ee77
    li    x29, 0x5c2d174d
    li    x30, 0xaaaaaaaa
    li    x31, 0x1
    srl    x10, x24, x25
    mulhu  x25, x10, x25
    divu   x5, x7, x6
    bltu   x22, x1, L0
    sll    x29, x15, x22
    mulh   x9, x29, x14
    remu   x11, x28, x13
L0:
    mulhsu x23, x15, x18
    jal    x23, L1
    remu   x6, x5, x8
L1:
    mulh   x15, x27, x31
    sw     x16, 832(x2)
    xor    x1, x12, x24
    divu   x31, x4, x25
    slt    x9, x22, x22
    and    x22, x14, x13
    rem    x11, x19, x6
    rem    x18, x12, x28
    slti   x11, x29, -957
    lhu    x14, 742(x2)
    mulhu  x26, x29, x10
    srai   x3, x31, 10
    mulhsu x25, x24, x21
    sub    x9, x5, x17
    andi   x17, x4, -1672
    bne    x10, x21, L2
    and    x18, x10, x17
L2:
    sltiu  x22, x7, -927
    lhu    x21, 384(x2)
    or     x21, x8, x31
    sw     x21, 772(x2)
    lw     x21, 104(x2)
    sub    x16, x20, x1
    sh     x29, 994(x2)
    sll    x4, x31, x15
    jal    x30, L3
    div    x25, x15, x5
L3:
    mulhu  x24, x27, x24
    lbu    x24, 650(x2)
    srli   x10, x26, 26
    mul    x13, x12, x30
    divu   x29, x26, x18
    sll    x6, x9, x22
    sh     x15, 204(x2)
    sw     x18, 676(x2)
    srai   x14, x31, 19
    sb     x26, 644(x2)
    remu   x31, x26, x4
    mulhu  x25, x11, x20
    lb     x9, 828(x2)
    sra    x24, x30, x19
    beq    x15, x11, L4
    srl    x9, x22, x13
L4:
    srli   x18, x13, 9
    or     x5, x23, x18
    slli   x6, x1, 27
    sw     x4, 976(x2)
    lw     x1, 52(x2)
    sll    x30, x28, x10
    slli   x16, x12, 7
    mulhsu x21, x9, x1
    sw     x4, 580(x2)
    mul    x11, x3, x12
    sltiu  x11, x11, 1118
    mulh   x20, x14, x10
    or     x26, x9, x5
    sltiu  x13, x9, -1258
    mulhu  x31, x1, x6
    sltu   x4, x22, x7
    mulh   x17, x22, x26
    divu   x12, x10, x12
    slti   x27, x1, 260
    mul    x10, x15, x19
    ori    x22, x1, -1432
    sw     x5, 644(x2)
    sh     x29, 978(x2)
    xori   x22, x23, 66
    sltiu  x3, x7, 1227
    ori    x26, x24, 1360
    jal    x4, L5
    rem    x30, x18, x29
L5:
    srl    x20, x25, x24
    mul    x16, x10, x18
    lui    x21, 0x7d286
    slli   x3, x1, 22
    divu   x21, x30, x19
    lhu    x31, 626(x2)
    sh     x20, 168(x2)
    slt    x27, x10, x18
    mulhsu x16, x18, x12
    mulh   x28, x7, x21
    slt    x10, x16, x14
    sb     x1, 789(x2)
    mulh   x28, x27, x10
    bltu   x15, x25, L6
    divu   x10, x26, x28
L6:
    lhu    x10, 952(x2)
    mul    x8, x7, x28
    beq    x15, x21, L7
    remu   x10, x27, x5
    mulh   x9, x25, x30
    divu   x17, x31, x4
L7:
    srli   x7, x31, 16
    lh     x28, 804(x2)
    auipc  x15, 0
    jalr   x17, x15, 12
    mul    x9, x22, x27
L8:
    sll    x25, x17, x3
    xor    x12, x10, x1
    ori    x24, x12, -2026
    ori    x26, x7, -868
    mulh   x5, x8, x30
    mul    x26, x31, x21
    divu   x17, x29, x10
    lb     x20, 212(x2)
    srl    x19, x8, x5
    divu   x1, x21, x31
    lhu    x30, 358(x2)
    div    x1, x30, x12
    or     x16, x23, x24
    mulhsu x19, x25, x11
    sub    x7, x4, x27
    remu   x20, x7, x15
    mul    x4, x4, x17
    andi   x28, x26, 212
    divu   x5, x7, x24
    mulhsu x13, x25, x17
    lui    x16, 0x39ae1
    lh     x18, 190(x2)
    mulh   x30, x26, x30
    xor    x10, x18, x24
    sw     x22, 60(x2)
    auipc  x30, 0
    jalr   x6, x30, 12
    mulhsu x27, x25, x22
L9:
    mulhsu x31, x24, x10
    srl    x12, x1, x12
    div    x11, x6, x12
    mulhsu x1, x5, x24
    sub    x6, x20, x10
    mulh   x26, x11, x10
    srl    x12, x8, x28
    sb     x8, 293(x2)
    sb     x18, 330(x2)
    bne    x17, x17, L10
    or     x13, x3, x28
    mulhsu x7, x7, x18
L10:
    mulhsu x29, x18, x11
    slli   x16, x27, 13
    rem    x26, x22, x12
    mul    x26, x8, x12
    srai   x12, x12, 17
    add    x26, x19, x11
    slt    x8, x19, x22
    mul    x18, x27, x11
    rem    x11, x30, x27
    jal    x24, L11
    mulhu  x31, x7, x1
L11:
    xor    x22, x9, x14
    mul    x11, x18, x18
    srli   x30, x27, 5
    ori    x10, x3, 129
    bltu   x11, x14, L12
    xor    x13, x10, x6
L12:
    sub    x24, x17, x8
    sub    x27, x14, x26
    remu   x30, x12, x20
    divu   x3, x22, x26
    sll    x4, x30, x9
    mulh   x5, x10, x13
    div    x26, x12, x25
    srai   x23, x17, 6
    xori   x11, x16, -357
    rem    x21, x30, x10
    div    x10, x10, x14
    slt    x17, x1, x12
    rem    x6, x29, x1
    jal    x25, L13
    mulh   x11, x5, x6
L13:
    lh     x29, 706(x2)
    remu   x18, x9, x22
    rem    x22, x25, x9
    auipc  x27, 0
    jalr   x25, x27, 12
    rem    x19, x28, x16
L14:
    bge    x25, x11, L15
    mulh   x17, x27, x14
    mulhsu x9, x30, x11
    divu   x1, x17, x29
L15:
    and    x10, x5, x23
    xor    x17, x6, x18
    sltu   x17, x14, x30
    sb     x16, 1017(x2)
    slt    x10, x31, x10
    addi   x1, x7, -380
    slli   x13, x26, 4
    sb     x9, 862(x2)
    lhu    x15, 582(x2)
    mulhu  x8, x7, x20
    mulhu  x25, x1, x9
    div    x29, x5, x28
    lh     x31, 724(x2)
    andi   x23, x7, -1929
    beq    x1, x4, L16
    rem    x14, x31, x7
    sra    x1, x29, x8
    mulh   x24, x31, x11
L16:
    sub    x25, x26, x27
    sh     x21, 852(x2)
    xor    x13, x27, x28
    lh     x27, 846(x2)
    bgeu   x8, x12, L17
    divu   x15, x11, x3
    or     x19, x31, x14
L17:
    mulh   x23, x31, x12
    lb     x25, 972(x2)
    mulhsu x22, x17, x23
    sh     x6, 310(x2)
    beq    x7, x30, L18
    or     x29, x12, x31
L18:
    lbu    x4, 718(x2)
    mulhsu x19, x9, x6
    bltu   x10, x29, L19
    and    x21, x9, x23
    sll    x11, x20, x5
    sub    x15, x23, x13
L19:
    mulhu  x7, x10, x26
    rem    x9, x4, x19
    sh     x27, 968(x2)
    or     x10, x7, x10
    srli   x26, x18, 5
    sw     x24, 8(x2)
    sra    x23, x17, x5
    mulhsu x21, x24, x23
    lh     x14, 756(x2)
    lbu    x8, 460(x2)
    sltu   x13, x13, x22
    bne    x1, x26, L20
    rem    x29, x8, x16
    add    x12, x28, x21
L20:
    rem    x3, x6, x21
    bne    x12, x19, L21
    and    x29, x12, x5
L21:
    blt    x8, x10, L22
    div    x18, x15, x10
    sltu   x11, x27, x31
    divu   x31, x25, x19
L22:
    srli   x7, x20, 30
    mulhu  x19, x8, x15
    add    x29, x7, x6
    lui    x3, 0xaf4c5
    remu   x19, x31, x4
    sra    x18, x13, x3
    sw     x28, 184(x2)
    mulhu  x16, x16, x18
    sra    x9, x20, x24
    remu   x4, x1, x27
    beq    x23, x5, L23
    srl    x5, x27, x12
    and    x11, x23, x29
    xor    x18, x24, x8
L23:
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
