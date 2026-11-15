    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xf5edb069
    li    x3, 0xd623adf6
    li    x4, 0xbf6cd234
    li    x5, 0x95a7b51a
    li    x6, 0x82045e5f
    li    x7, 0xb69cbc75
    li    x8, 0x46ef2380
    li    x9, 0x415a793
    li    x10, 0xffffffff
    li    x11, 0xea88c708
    li    x12, 0xdd1c1b5
    li    x13, 0xaeb18bd9
    li    x14, 0xffffffff
    li    x15, 0x39587aaf
    li    x16, 0x90bae5a1
    li    x17, 0xc9e2eab
    li    x18, 0x5f15a6b1
    li    x19, 0x2
    li    x20, 0x5f76e45b
    li    x21, 0xfb2a36ac
    li    x22, 0xaaaaaaaa
    li    x23, 0x786c48b8
    li    x24, 0x4eebaac0
    li    x25, 0x73e18790
    li    x26, 0x9f69db7b
    li    x27, 0x26425a7e
    li    x28, 0xebee20c6
    li    x29, 0xe8a4b551
    li    x30, 0x3
    li    x31, 0x9be80a0d
    divu   x15, x17, x17
    mulh   x21, x8, x4
    add    x7, x19, x31
    sltiu  x19, x18, -1294
    divu   x31, x24, x8
    divu   x30, x25, x12
    rem    x25, x4, x21
    xori   x24, x18, -1075
    xor    x13, x28, x8
    addi   x26, x29, 1973
    mulh   x20, x19, x29
    or     x27, x29, x24
    bgeu   x11, x23, L0
    mulhu  x1, x1, x17
    add    x20, x1, x29
    mulhu  x31, x29, x12
L0:
    sh     x9, 54(x2)
    slt    x4, x19, x17
    lhu    x28, 634(x2)
    sh     x31, 812(x2)
    mulhu  x4, x6, x30
    addi   x1, x17, -625
    mulhsu x9, x20, x26
    auipc  x22, 0
    jalr   x31, x22, 12
    mulh   x24, x30, x13
L1:
    lw     x13, 840(x2)
    rem    x24, x13, x5
    xor    x8, x24, x13
    lui    x23, 0x9b337
    div    x8, x8, x6
    rem    x13, x18, x25
    auipc  x6, 0
    jalr   x5, x6, 12
    mulhsu x1, x26, x14
L2:
    slli   x7, x1, 22
    auipc  x7, 0x37a4c
    lhu    x27, 724(x2)
    mulhu  x28, x19, x19
    divu   x25, x15, x6
    lbu    x11, 303(x2)
    remu   x22, x18, x18
    mulhsu x14, x20, x13
    mulhsu x1, x9, x20
    bge    x27, x26, L3
    xor    x26, x19, x10
L3:
    mulhsu x9, x19, x24
    slli   x24, x29, 25
    auipc  x15, 0
    jalr   x16, x15, 12
    mul    x27, x8, x21
L4:
    div    x13, x4, x27
    xori   x5, x9, -1267
    lbu    x4, 45(x2)
    sh     x25, 994(x2)
    sltiu  x5, x26, 1798
    slli   x1, x23, 23
    mulh   x21, x18, x17
    lhu    x5, 294(x2)
    lbu    x22, 468(x2)
    xor    x4, x13, x25
    rem    x18, x7, x3
    blt    x5, x15, L5
    sra    x6, x31, x20
    mul    x23, x3, x29
L5:
    beq    x15, x22, L6
    divu   x27, x29, x28
    divu   x23, x30, x18
    div    x25, x5, x31
L6:
    slli   x30, x14, 4
    addi   x27, x1, -1590
    bge    x14, x21, L7
    or     x24, x17, x6
    or     x15, x12, x13
L7:
    add    x10, x14, x29
    slt    x22, x25, x19
    bltu   x29, x28, L8
    sra    x30, x24, x31
    srl    x6, x14, x7
    xor    x17, x22, x14
L8:
    remu   x21, x11, x15
    ori    x25, x20, -360
    mul    x1, x31, x12
    srai   x19, x6, 28
    lb     x24, 233(x2)
    mul    x18, x31, x21
    srai   x24, x12, 23
    lh     x3, 260(x2)
    sh     x9, 302(x2)
    rem    x21, x31, x8
    addi   x1, x29, -1556
    lw     x22, 892(x2)
    remu   x11, x6, x18
    mul    x23, x27, x8
    srl    x6, x27, x12
    sltiu  x31, x13, -102
    divu   x3, x18, x17
    lui    x29, 0xd856c
    sub    x17, x15, x28
    lhu    x19, 78(x2)
    add    x27, x19, x9
    divu   x30, x26, x19
    mulhu  x22, x16, x5
    ori    x25, x22, -312
    sw     x1, 716(x2)
    addi   x26, x3, -114
    mulh   x9, x4, x21
    sra    x19, x24, x23
    sub    x20, x1, x6
    bgeu   x26, x4, L9
    xor    x8, x18, x1
    slt    x22, x22, x19
L9:
    bgeu   x28, x18, L10
    sltu   x24, x8, x23
    sra    x1, x17, x30
L10:
    lbu    x21, 262(x2)
    slti   x13, x6, 376
    bge    x25, x5, L11
    sll    x22, x23, x14
    divu   x16, x27, x17
L11:
    srai   x3, x16, 3
    srl    x6, x26, x5
    addi   x7, x30, 592
    bne    x4, x12, L12
    sll    x22, x12, x5
    mul    x28, x24, x3
    sltu   x4, x27, x11
L12:
    rem    x9, x8, x13
    mulhsu x18, x3, x21
    auipc  x30, 0
    jalr   x19, x30, 12
    mul    x23, x27, x13
L13:
    divu   x26, x23, x8
    mulhsu x19, x15, x27
    slt    x6, x23, x28
    srl    x28, x9, x23
    rem    x14, x25, x17
    sh     x10, 274(x2)
    lbu    x11, 770(x2)
    sh     x27, 616(x2)
    srl    x12, x25, x16
    sh     x9, 478(x2)
    srli   x25, x13, 4
    bgeu   x27, x13, L14
    sub    x23, x10, x23
    or     x9, x20, x26
    sra    x14, x25, x5
L14:
    lh     x11, 734(x2)
    bne    x22, x25, L15
    or     x18, x18, x25
    sll    x18, x11, x28
L15:
    sw     x16, 440(x2)
    ori    x23, x20, -529
    lhu    x28, 408(x2)
    mulh   x18, x18, x15
    add    x11, x22, x11
    divu   x1, x29, x15
    lb     x15, 261(x2)
    mulh   x6, x20, x18
    bltu   x31, x23, L16
    mulhu  x19, x7, x9
    xor    x14, x31, x24
L16:
    sra    x13, x15, x23
    lb     x31, 825(x2)
    jal    x3, L17
    mul    x12, x12, x24
L17:
    lh     x3, 326(x2)
    sw     x16, 952(x2)
    sub    x1, x6, x17
    sw     x7, 972(x2)
    mulhsu x28, x21, x6
    srl    x17, x22, x26
    lui    x12, 0xeb2c
    lw     x27, 60(x2)
    xori   x24, x24, 1622
    auipc  x29, 0
    jalr   x26, x29, 12
    mulh   x4, x1, x20
L18:
    auipc  x20, 0
    jalr   x25, x20, 12
    mul    x9, x6, x31
L19:
    bge    x13, x22, L20
    sub    x25, x12, x24
L20:
    rem    x8, x20, x1
    ori    x5, x17, 1727
    and    x18, x18, x28
    sltu   x5, x12, x9
    sra    x5, x25, x12
    mulhu  x23, x1, x30
    remu   x1, x21, x10
    mulhu  x8, x17, x25
    bge    x21, x30, L21
    sra    x7, x27, x29
    div    x23, x3, x19
    mulh   x28, x10, x7
L21:
    lui    x30, 0x149ef
    remu   x8, x5, x14
    beq    x17, x21, L22
    srl    x26, x8, x18
    sra    x12, x11, x28
    and    x8, x13, x17
L22:
    sh     x26, 92(x2)
    sb     x25, 822(x2)
    rem    x15, x18, x17
    addi   x4, x22, -1601
    sra    x16, x23, x18
    bne    x16, x19, L23
    sll    x28, x31, x24
L23:
    blt    x27, x9, L24
    sll    x26, x16, x24
    sltu   x5, x13, x24
    mulhu  x31, x4, x7
L24:
    lhu    x23, 458(x2)
    blt    x10, x12, L25
    or     x27, x28, x13
L25:
    rem    x16, x8, x18
    bltu   x26, x19, L26
    div    x13, x20, x17
L26:
    jal    x30, L27
    remu   x28, x12, x17
L27:
    rem    x26, x17, x5
    addi   x18, x24, 1521
    rem    x24, x9, x3
    slli   x23, x17, 5
    divu   x20, x9, x29
    auipc  x21, 0
    jalr   x9, x21, 12
    mulh   x14, x17, x26
L28:
    sra    x19, x25, x9
    xori   x8, x15, 528
    rem    x31, x7, x20
    auipc  x31, 0
    jalr   x12, x31, 12
    mulhsu x30, x23, x21
L29:
    mul    x28, x8, x31
    srai   x16, x7, 0
    blt    x3, x24, L30
    divu   x1, x25, x17
    divu   x10, x16, x21
    mulhsu x23, x5, x8
L30:
    lui    x20, 0x5f059
    rem    x10, x15, x1
    auipc  x24, 0
    jalr   x21, x24, 12
    remu   x5, x8, x3
L31:
    rem    x17, x13, x20
    xori   x23, x21, -1545
    sh     x8, 488(x2)
    sw     x28, 56(x2)
    sw     x29, 432(x2)
    ori    x10, x18, 1819
    divu   x26, x30, x16
    sb     x4, 96(x2)
    mulhu  x10, x5, x8
    remu   x23, x4, x1
    srai   x27, x14, 8
    lbu    x28, 983(x2)
    and    x8, x5, x19
    divu   x5, x12, x24
    sb     x31, 938(x2)
    sh     x19, 356(x2)
    bge    x20, x17, L32
    div    x22, x23, x24
L32:
    add    x3, x29, x4
    sh     x10, 654(x2)
    sub    x21, x14, x15
    div    x17, x6, x13
    blt    x23, x30, L33
    or     x22, x1, x23
    sltu   x11, x17, x30
L33:
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
