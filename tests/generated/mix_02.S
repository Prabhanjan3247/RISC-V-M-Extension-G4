    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x14d5a442
    li    x3, 0x80000001
    li    x4, 0x5e09cfe
    li    x5, 0xb3664ca1
    li    x6, 0x7fffffff
    li    x7, 0xa5289661
    li    x8, 0xa86dc766
    li    x9, 0xfffffffe
    li    x10, 0x3f03a4ad
    li    x11, 0xffff0000
    li    x12, 0x14e11ed3
    li    x13, 0x38c4d386
    li    x14, 0x7dea6f1d
    li    x15, 0x80000001
    li    x16, 0x31ca19aa
    li    x17, 0xc849a238
    li    x18, 0xa4bf8b2e
    li    x19, 0x91281d03
    li    x20, 0x0
    li    x21, 0xcbac2dfc
    li    x22, 0x458a9292
    li    x23, 0x7fffffff
    li    x24, 0xe84da520
    li    x25, 0xa6b90278
    li    x26, 0x40bb7be9
    li    x27, 0xfffffffd
    li    x28, 0xa2745710
    li    x29, 0xf195e9b8
    li    x30, 0xfffffffe
    li    x31, 0xffff0000
    sh     x25, 564(x2)
    sub    x18, x3, x25
    xor    x14, x16, x19
    remu   x6, x24, x10
    sh     x4, 606(x2)
    mulhsu x30, x31, x1
    div    x19, x12, x6
    sh     x27, 44(x2)
    divu   x30, x22, x16
    lb     x28, 130(x2)
    ori    x18, x17, 29
    srai   x14, x26, 7
    xori   x19, x29, 778
    xor    x15, x15, x1
    sh     x22, 596(x2)
    andi   x30, x23, 1318
    ori    x19, x25, 1998
    slti   x4, x14, -514
    div    x30, x18, x16
    remu   x10, x18, x30
    bge    x22, x10, L0
    rem    x6, x1, x4
L0:
    srli   x7, x28, 8
    lui    x26, 0x53a02
    addi   x12, x18, -1701
    xori   x16, x18, 719
    sh     x20, 972(x2)
    mulh   x29, x14, x20
    bne    x31, x21, L1
    or     x8, x6, x16
L1:
    remu   x29, x31, x10
    sub    x25, x10, x8
    sub    x5, x12, x20
    remu   x8, x14, x14
    andi   x11, x17, -1429
    sra    x8, x6, x9
    div    x13, x6, x26
    bge    x17, x5, L2
    divu   x25, x16, x10
L2:
    mul    x11, x9, x28
    rem    x10, x7, x18
    mulhu  x28, x5, x11
    lh     x20, 688(x2)
    mulhu  x31, x18, x5
    sb     x27, 683(x2)
    sltiu  x4, x27, 624
    bge    x14, x7, L3
    sra    x4, x6, x13
    div    x1, x27, x25
    sub    x22, x6, x14
L3:
    sub    x4, x28, x23
    sb     x7, 794(x2)
    and    x12, x19, x9
    and    x31, x3, x7
    addi   x3, x24, 908
    rem    x13, x25, x20
    add    x12, x13, x4
    auipc  x9, 0
    jalr   x3, x9, 12
    mul    x29, x22, x3
L4:
    sltiu  x28, x14, 628
    blt    x16, x26, L5
    divu   x8, x29, x10
L5:
    ori    x31, x9, -1654
    bne    x6, x14, L6
    sll    x10, x21, x27
    mulh   x18, x20, x18
    divu   x9, x9, x18
L6:
    lh     x27, 0(x2)
    auipc  x20, 0
    jalr   x24, x20, 12
    mul    x24, x15, x5
L7:
    bne    x6, x27, L8
    slt    x12, x9, x29
    sll    x11, x19, x28
L8:
    div    x11, x17, x10
    xor    x4, x21, x30
    srai   x29, x13, 12
    sw     x16, 176(x2)
    mulhu  x24, x15, x4
    sb     x8, 907(x2)
    mulhu  x16, x13, x6
    bge    x18, x1, L9
    sra    x18, x26, x15
    mulh   x12, x25, x26
L9:
    mulhu  x26, x25, x29
    sh     x6, 232(x2)
    and    x27, x19, x27
    bne    x27, x12, L10
    sll    x24, x9, x16
    mulh   x25, x25, x17
L10:
    mul    x20, x3, x19
    sll    x16, x16, x9
    div    x28, x10, x12
    div    x9, x15, x22
    slli   x10, x8, 7
    mulh   x17, x7, x14
    mulhsu x7, x12, x5
    jal    x4, L11
    rem    x22, x12, x17
L11:
    xor    x23, x27, x6
    jal    x19, L12
    mulh   x18, x31, x18
L12:
    sb     x18, 398(x2)
    mulhsu x20, x21, x25
    remu   x17, x3, x21
    mulh   x16, x12, x17
    rem    x3, x5, x14
    srli   x14, x11, 17
    bltu   x16, x18, L13
    sra    x15, x18, x20
L13:
    sw     x25, 952(x2)
    xori   x24, x3, -499
    bne    x8, x14, L14
    xor    x24, x14, x3
    divu   x15, x23, x19
L14:
    remu   x12, x10, x25
    addi   x12, x11, 1986
    slti   x8, x22, -510
    andi   x26, x9, 1409
    jal    x28, L15
    mulhu  x1, x28, x27
L15:
    srl    x5, x19, x31
    mulhu  x8, x5, x17
    addi   x12, x11, -1987
    sb     x20, 634(x2)
    mulhu  x7, x5, x15
    sh     x16, 42(x2)
    sltiu  x10, x24, -406
    auipc  x4, 0
    jalr   x16, x4, 12
    mulhu  x15, x26, x17
L16:
    sll    x30, x26, x17
    sh     x22, 716(x2)
    srl    x12, x5, x16
    sra    x6, x25, x15
    lw     x6, 172(x2)
    mulhsu x14, x14, x7
    sra    x8, x15, x16
    sh     x21, 874(x2)
    xori   x20, x23, 1912
    lw     x10, 876(x2)
    addi   x20, x18, 237
    jal    x28, L17
    mulhu  x27, x25, x31
L17:
    lbu    x11, 958(x2)
    lui    x6, 0x4dcd3
    and    x1, x3, x10
    or     x11, x22, x29
    sb     x17, 61(x2)
    lh     x27, 842(x2)
    jal    x13, L18
    mul    x11, x8, x21
L18:
    lb     x11, 516(x2)
    mulhsu x13, x7, x5
    slli   x17, x15, 15
    xori   x12, x8, 804
    mul    x11, x17, x3
    xori   x15, x28, -1341
    sh     x3, 690(x2)
    remu   x24, x28, x20
    mulhsu x23, x6, x14
    sh     x5, 372(x2)
    sb     x16, 55(x2)
    srai   x25, x17, 19
    sltu   x20, x23, x28
    div    x24, x12, x6
    divu   x31, x1, x22
    mulhu  x26, x12, x4
    bltu   x16, x15, L19
    add    x8, x11, x8
L19:
    srli   x6, x27, 5
    or     x8, x21, x21
    lb     x26, 205(x2)
    sh     x4, 362(x2)
    blt    x18, x5, L20
    remu   x31, x12, x28
L20:
    remu   x18, x16, x13
    mul    x13, x3, x7
    bltu   x17, x28, L21
    srl    x31, x31, x13
    srl    x11, x18, x19
    sra    x19, x4, x3
L21:
    sw     x3, 204(x2)
    mulhu  x6, x3, x21
    bne    x3, x15, L22
    add    x31, x17, x29
    sra    x4, x6, x30
L22:
    rem    x7, x30, x28
    bgeu   x17, x28, L23
    divu   x3, x24, x10
    slt    x29, x28, x9
    rem    x31, x31, x4
L23:
    or     x19, x5, x10
    lhu    x8, 406(x2)
    add    x3, x4, x30
    mulhsu x22, x3, x24
    srl    x5, x6, x28
    divu   x12, x31, x20
    sw     x19, 308(x2)
    mul    x17, x23, x25
    lw     x15, 512(x2)
    srl    x4, x6, x30
    sll    x10, x20, x4
    mulh   x5, x10, x24
    jal    x30, L24
    mulhsu x3, x8, x7
L24:
    lhu    x22, 500(x2)
    mulh   x14, x27, x25
    lh     x19, 284(x2)
    add    x3, x7, x20
    mulhsu x11, x11, x7
    auipc  x9, 0
    jalr   x5, x9, 12
    mulhu  x12, x17, x25
L25:
    addi   x1, x27, -51
    blt    x16, x25, L26
    sltu   x5, x21, x29
    sll    x8, x3, x21
    sll    x13, x6, x5
L26:
    beq    x26, x4, L27
    xor    x18, x17, x24
L27:
    divu   x10, x3, x5
    sh     x7, 944(x2)
    rem    x29, x5, x4
    bgeu   x5, x27, L28
    mulhu  x30, x31, x30
    sltu   x19, x10, x11
    slt    x13, x19, x22
L28:
    blt    x22, x4, L29
    sll    x17, x3, x18
    rem    x10, x28, x1
    and    x9, x25, x31
L29:
    srli   x9, x22, 19
    beq    x29, x22, L30
    mul    x17, x1, x4
L30:
    lb     x20, 536(x2)
    lh     x29, 68(x2)
    mul    x26, x11, x25
    sw     x13, 44(x2)
    sw     x30, 692(x2)
    sw     x28, 212(x2)
    srli   x12, x6, 3
    div    x14, x18, x10
    mulhu  x11, x3, x26
    sltiu  x5, x13, -1009
    remu   x28, x16, x1
    slt    x14, x12, x14
    mul    x3, x5, x5
    remu   x12, x9, x3
    addi   x26, x24, -1949
    sb     x13, 232(x2)
    sh     x1, 200(x2)
    mulhsu x30, x17, x5
    lh     x11, 268(x2)
    sb     x20, 580(x2)
    beq    x10, x13, L31
    remu   x22, x4, x27
L31:
    mulhu  x20, x1, x1
    sb     x15, 317(x2)
    div    x3, x22, x19
    rem    x21, x12, x22
    mul    x31, x14, x29
    sub    x8, x7, x28
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
