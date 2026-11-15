    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xdfb72a42
    li    x3, 0xf64183f9
    li    x4, 0x3d864836
    li    x5, 0x790d621e
    li    x6, 0x5b2b3501
    li    x7, 0x892bceac
    li    x8, 0xb7fd3f2b
    li    x9, 0xffff0000
    li    x10, 0xfffffffe
    li    x11, 0xa1839c5d
    li    x12, 0xa3a21b6d
    li    x13, 0x6c1ffff3
    li    x14, 0x4d751092
    li    x15, 0x8b8ea504
    li    x16, 0x80000001
    li    x17, 0xbffe9e21
    li    x18, 0x89d41086
    li    x19, 0x2e492dcf
    li    x20, 0xc8061a09
    li    x21, 0x8d474aae
    li    x22, 0xdc904d54
    li    x23, 0x1db4008f
    li    x24, 0xfffffffe
    li    x25, 0xd2b2d7db
    li    x26, 0x649b5c2e
    li    x27, 0x7caa76e7
    li    x28, 0x60ca0137
    li    x29, 0x3ab6e6ed
    li    x30, 0xffff0000
    li    x31, 0xaaaaaaaa
    rem    x15, x1, x3
    rem    x26, x8, x4
    sb     x13, 282(x2)
    sh     x29, 310(x2)
    rem    x28, x10, x5
    mul    x8, x24, x4
    mul    x11, x15, x21
    slli   x4, x4, 11
    lh     x31, 818(x2)
    lb     x16, 212(x2)
    bgeu   x9, x10, L0
    sll    x16, x1, x24
    rem    x30, x13, x26
    rem    x23, x27, x21
L0:
    sltu   x25, x28, x26
    mul    x8, x31, x31
    divu   x28, x6, x22
    mulhsu x8, x28, x19
    slli   x21, x8, 31
    addi   x8, x16, -463
    andi   x27, x18, 1500
    remu   x12, x13, x23
    sb     x20, 236(x2)
    mul    x20, x6, x14
    mulhsu x20, x20, x5
    sb     x30, 644(x2)
    remu   x26, x30, x7
    sltiu  x3, x3, -1265
    beq    x12, x22, L1
    xor    x6, x26, x31
    xor    x22, x11, x31
    rem    x16, x19, x13
L1:
    srl    x23, x21, x14
    lbu    x19, 749(x2)
    bge    x11, x29, L2
    and    x24, x20, x21
    divu   x22, x13, x14
    sltu   x12, x27, x12
L2:
    sb     x22, 814(x2)
    mulh   x10, x10, x26
    add    x26, x26, x30
    addi   x25, x6, 507
    rem    x18, x27, x12
    sw     x17, 912(x2)
    sh     x3, 994(x2)
    bltu   x28, x1, L3
    sra    x3, x26, x1
    srl    x29, x24, x17
    add    x31, x8, x8
L3:
    or     x3, x19, x5
    lui    x7, 0x22fcc
    slt    x23, x18, x27
    mulhsu x7, x1, x16
    srl    x9, x1, x10
    sh     x25, 1018(x2)
    rem    x22, x27, x11
    lbu    x20, 538(x2)
    rem    x14, x16, x16
    lhu    x6, 460(x2)
    sh     x20, 450(x2)
    srl    x12, x24, x4
    div    x20, x22, x15
    slli   x19, x20, 8
    sh     x17, 518(x2)
    div    x21, x26, x25
    rem    x12, x5, x27
    remu   x13, x6, x22
    mulhu  x15, x6, x15
    bgeu   x6, x13, L4
    xor    x26, x1, x22
    mul    x12, x17, x30
    add    x30, x4, x15
L4:
    div    x27, x17, x7
    sw     x20, 816(x2)
    mulhu  x31, x16, x5
    lw     x13, 92(x2)
    jal    x30, L5
    remu   x6, x19, x11
L5:
    and    x16, x25, x9
    rem    x20, x29, x8
    sw     x28, 608(x2)
    blt    x31, x25, L6
    remu   x20, x4, x19
    add    x10, x1, x22
    add    x4, x7, x16
L6:
    slti   x29, x10, 994
    and    x15, x26, x5
    div    x14, x15, x9
    mulh   x28, x26, x28
    xori   x28, x8, 1476
    sb     x6, 661(x2)
    srl    x19, x24, x14
    xor    x8, x8, x29
    srl    x25, x16, x23
    lbu    x4, 38(x2)
    mulhu  x15, x21, x17
    jal    x24, L7
    mulhu  x20, x13, x22
L7:
    addi   x16, x24, 904
    lui    x15, 0x5045b
    sb     x29, 748(x2)
    remu   x24, x29, x6
    lh     x17, 250(x2)
    remu   x14, x29, x16
    rem    x19, x10, x15
    div    x19, x6, x26
    lui    x9, 0x27835
    mulhu  x29, x26, x30
    and    x3, x1, x30
    sb     x30, 162(x2)
    sub    x27, x18, x10
    sh     x23, 690(x2)
    blt    x5, x1, L8
    mulh   x28, x25, x8
    rem    x11, x27, x8
    or     x11, x19, x21
L8:
    mulh   x20, x9, x4
    jal    x30, L9
    mulh   x18, x9, x14
L9:
    auipc  x10, 0xcbbb
    bgeu   x22, x11, L10
    sra    x27, x13, x9
    sub    x5, x8, x26
    sra    x18, x26, x26
L10:
    srai   x28, x17, 18
    mulhsu x14, x7, x27
    div    x17, x28, x15
    mul    x8, x6, x8
    div    x27, x19, x26
    lbu    x16, 942(x2)
    sb     x11, 298(x2)
    sw     x5, 284(x2)
    sltiu  x22, x12, -1982
    and    x13, x8, x5
    mul    x25, x5, x9
    auipc  x16, 0xe260c
    srli   x3, x29, 2
    andi   x29, x8, 141
    sll    x17, x21, x25
    rem    x18, x18, x29
    auipc  x4, 0
    jalr   x15, x4, 12
    mul    x11, x22, x5
L11:
    bltu   x5, x3, L12
    xor    x8, x26, x29
L12:
    addi   x31, x17, -1365
    lw     x16, 340(x2)
    sb     x21, 273(x2)
    lui    x28, 0xa1331
    sltiu  x24, x23, 1300
    div    x30, x18, x3
    mulhsu x4, x30, x31
    divu   x24, x28, x25
    div    x7, x24, x24
    sw     x27, 184(x2)
    slt    x20, x8, x12
    lhu    x5, 798(x2)
    div    x1, x4, x7
    mulh   x17, x11, x28
    lw     x23, 832(x2)
    rem    x31, x29, x9
    sb     x23, 615(x2)
    sltiu  x11, x24, -1995
    or     x26, x18, x7
    mulhu  x24, x5, x31
    lbu    x4, 651(x2)
    slli   x23, x30, 16
    andi   x16, x5, -1984
    mulh   x31, x7, x21
    auipc  x3, 0xd05c1
    slli   x1, x5, 28
    sw     x23, 380(x2)
    beq    x6, x29, L13
    slt    x6, x30, x16
    mulhu  x9, x20, x16
L13:
    mulhsu x4, x6, x27
    slli   x16, x9, 25
    sw     x30, 640(x2)
    rem    x13, x9, x3
    mulhu  x17, x24, x13
    remu   x5, x27, x13
    sh     x25, 510(x2)
    srli   x6, x22, 28
    srai   x28, x19, 12
    lhu    x3, 968(x2)
    bltu   x11, x10, L14
    xor    x4, x16, x23
    sra    x19, x4, x20
    sub    x22, x27, x13
L14:
    rem    x22, x17, x8
    rem    x14, x5, x27
    sb     x7, 573(x2)
    div    x11, x30, x26
    srl    x31, x13, x23
    sh     x7, 704(x2)
    slt    x12, x9, x20
    slli   x22, x8, 21
    jal    x17, L15
    rem    x9, x13, x14
L15:
    jal    x31, L16
    remu   x15, x10, x12
L16:
    mulhsu x8, x14, x25
    or     x6, x15, x23
    slli   x17, x25, 19
    divu   x26, x13, x25
    lhu    x28, 790(x2)
    xor    x24, x13, x15
    blt    x15, x21, L17
    sra    x20, x28, x24
    srl    x28, x4, x18
L17:
    mul    x7, x25, x19
    sub    x13, x26, x21
    divu   x3, x10, x11
    sub    x7, x15, x29
    div    x10, x24, x23
    mulh   x9, x28, x14
    sb     x6, 476(x2)
    mulh   x15, x11, x5
    sw     x9, 664(x2)
    andi   x13, x20, 36
    lbu    x29, 989(x2)
    or     x22, x12, x25
    mulhsu x24, x21, x23
    sh     x16, 324(x2)
    blt    x22, x15, L18
    sll    x9, x25, x20
    mulhu  x19, x15, x26
    mul    x27, x22, x9
L18:
    mul    x11, x3, x18
    slt    x3, x8, x18
    addi   x22, x8, -89
    mulh   x6, x9, x1
    slt    x14, x29, x6
    sw     x23, 280(x2)
    divu   x4, x14, x6
    rem    x13, x30, x10
    slt    x20, x15, x3
    mulhu  x8, x23, x17
    sltu   x31, x17, x13
    sh     x6, 504(x2)
    mulhu  x31, x19, x23
    sh     x17, 914(x2)
    sw     x30, 92(x2)
    sub    x5, x8, x23
    lb     x28, 420(x2)
    mulhsu x31, x10, x15
    auipc  x17, 0xa3c7f
    add    x31, x21, x5
    remu   x3, x10, x8
    divu   x11, x12, x10
    sra    x11, x15, x20
    blt    x25, x19, L19
    add    x9, x10, x3
    sltu   x27, x1, x26
L19:
    lb     x5, 562(x2)
    sh     x10, 1014(x2)
    sb     x24, 847(x2)
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
