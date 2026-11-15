    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xec3474bc
    li    x3, 0x2
    li    x4, 0xffff
    li    x5, 0x2c573539
    li    x6, 0xd5f2ae7d
    li    x7, 0xbb4b8094
    li    x8, 0x3958e5d5
    li    x9, 0x55555555
    li    x10, 0xf159d542
    li    x11, 0x483d83d9
    li    x12, 0xaaaaaaaa
    li    x13, 0xffffffff
    li    x14, 0x7474aedf
    li    x15, 0x80000000
    li    x16, 0x2f19d7a3
    li    x17, 0xdcab8a8c
    li    x18, 0x2
    li    x19, 0xaa72cbb1
    li    x20, 0x503d784b
    li    x21, 0xd9766028
    li    x22, 0x55555555
    li    x23, 0x3ca010ac
    li    x24, 0xe6a0f29
    li    x25, 0x5b20e519
    li    x26, 0x637e5c3e
    li    x27, 0xb5a64fb2
    li    x28, 0x80000001
    li    x29, 0xfffffffe
    li    x30, 0xa18e41e7
    li    x31, 0x86bc3944
    sb     x12, 499(x2)
    rem    x9, x26, x20
    rem    x22, x3, x16
    lw     x4, 856(x2)
    remu   x5, x17, x12
    mulhsu x23, x4, x31
    bne    x27, x21, L0
    slt    x24, x15, x1
L0:
    mulh   x10, x25, x4
    or     x11, x14, x9
    andi   x17, x4, -1219
    div    x10, x22, x31
    lh     x5, 402(x2)
    slli   x11, x25, 17
    mulhu  x23, x1, x14
    lbu    x11, 448(x2)
    lw     x18, 920(x2)
    or     x9, x24, x7
    divu   x20, x3, x10
    auipc  x17, 0xb93d7
    xori   x5, x27, 737
    remu   x22, x4, x21
    bgeu   x23, x18, L1
    mulhsu x8, x19, x19
    srl    x28, x20, x5
L1:
    srl    x23, x11, x14
    mulhu  x5, x9, x9
    lbu    x16, 84(x2)
    srli   x24, x13, 1
    rem    x4, x9, x18
    auipc  x26, 0x275f3
    ori    x6, x17, 1976
    sra    x19, x14, x30
    sltiu  x24, x1, 1002
    srai   x22, x24, 30
    ori    x29, x1, 1786
    sw     x29, 184(x2)
    jal    x18, L2
    rem    x20, x4, x7
L2:
    sw     x16, 932(x2)
    bgeu   x8, x30, L3
    srl    x6, x25, x10
    slt    x10, x22, x20
    mulhsu x8, x31, x29
L3:
    slti   x1, x8, 446
    or     x7, x18, x25
    lui    x16, 0x2fac9
    and    x19, x30, x10
    sltiu  x22, x6, -300
    andi   x24, x23, -1611
    div    x20, x17, x31
    add    x5, x31, x14
    bgeu   x25, x1, L4
    mulhsu x6, x7, x3
    mulh   x16, x16, x7
    remu   x20, x8, x31
L4:
    mulh   x20, x17, x19
    lbu    x14, 220(x2)
    beq    x22, x24, L5
    or     x17, x6, x18
    add    x24, x21, x18
L5:
    ori    x16, x21, 1254
    srli   x14, x18, 10
    lh     x26, 530(x2)
    srai   x7, x19, 1
    bne    x10, x20, L6
    remu   x24, x6, x15
    xor    x4, x29, x11
    and    x3, x13, x30
L6:
    blt    x14, x29, L7
    slt    x1, x24, x23
    slt    x8, x12, x28
    srl    x8, x15, x17
L7:
    slli   x6, x4, 8
    remu   x12, x1, x21
    sw     x18, 996(x2)
    add    x19, x10, x22
    div    x27, x8, x13
    sb     x9, 343(x2)
    divu   x28, x26, x6
    add    x3, x7, x10
    lbu    x14, 79(x2)
    sltu   x13, x23, x27
    rem    x28, x26, x29
    mulhsu x18, x10, x24
    ori    x22, x3, -1149
    remu   x28, x31, x18
    mulh   x9, x21, x30
    xor    x8, x4, x29
    srli   x23, x20, 1
    xori   x13, x30, -1675
    mul    x15, x8, x21
    divu   x21, x27, x16
    sll    x9, x4, x20
    beq    x10, x18, L8
    xor    x7, x10, x24
    mulh   x8, x11, x25
    sll    x29, x26, x15
L8:
    addi   x1, x3, 1137
    rem    x9, x19, x30
    srl    x1, x22, x12
    slti   x3, x30, 187
    divu   x11, x31, x31
    sw     x11, 828(x2)
    beq    x26, x3, L9
    div    x3, x29, x19
    add    x27, x28, x22
L9:
    sh     x10, 728(x2)
    addi   x4, x13, -1936
    add    x18, x12, x27
    and    x25, x28, x13
    xori   x9, x21, -1214
    slti   x5, x23, 1588
    and    x20, x4, x3
    bge    x7, x5, L10
    add    x4, x30, x20
L10:
    add    x26, x16, x27
    lui    x9, 0x2ea0d
    sw     x26, 764(x2)
    beq    x24, x8, L11
    div    x11, x7, x6
L11:
    mul    x24, x4, x16
    lui    x4, 0xd7de0
    auipc  x23, 0x15b3d
    sh     x19, 980(x2)
    jal    x27, L12
    div    x5, x10, x31
L12:
    auipc  x17, 0
    jalr   x12, x17, 12
    mulhsu x3, x5, x25
L13:
    bgeu   x27, x27, L14
    sll    x17, x11, x3
    mulh   x13, x20, x8
    add    x28, x26, x28
L14:
    div    x14, x18, x10
    add    x4, x26, x3
    divu   x4, x28, x18
    sll    x7, x9, x8
    mulhu  x1, x12, x21
    mulhu  x3, x23, x13
    jal    x24, L15
    mulhu  x21, x20, x4
L15:
    mulhsu x3, x17, x29
    or     x8, x29, x13
    remu   x19, x17, x21
    lw     x31, 624(x2)
    sra    x18, x31, x17
    sra    x10, x12, x23
    beq    x11, x17, L16
    mul    x30, x29, x19
L16:
    lw     x3, 540(x2)
    slli   x12, x29, 17
    jal    x29, L17
    divu   x17, x10, x13
L17:
    mulhu  x4, x21, x24
    lh     x7, 610(x2)
    and    x5, x5, x5
    sub    x25, x22, x27
    sb     x27, 72(x2)
    mulhu  x14, x19, x31
    jal    x9, L18
    rem    x25, x18, x25
L18:
    mulhu  x6, x13, x17
    slti   x20, x5, 1956
    bne    x6, x13, L19
    or     x13, x13, x31
    rem    x18, x11, x22
    xor    x4, x19, x15
L19:
    rem    x21, x20, x5
    auipc  x17, 0
    jalr   x4, x17, 12
    remu   x1, x11, x11
L20:
    srai   x26, x12, 30
    add    x8, x30, x17
    and    x27, x28, x15
    bgeu   x16, x10, L21
    rem    x15, x7, x5
L21:
    slti   x15, x10, 165
    slt    x16, x19, x18
    xor    x4, x3, x27
    slti   x14, x15, -604
    sh     x19, 824(x2)
    sll    x23, x31, x15
    auipc  x6, 0x460af
    ori    x10, x28, 481
    sra    x5, x4, x29
    sra    x20, x22, x17
    div    x15, x8, x27
    mul    x12, x24, x19
    srai   x7, x26, 25
    lb     x19, 793(x2)
    lhu    x21, 164(x2)
    and    x6, x21, x24
    rem    x21, x25, x10
    mul    x3, x3, x16
    lui    x11, 0xeff02
    rem    x9, x10, x22
    bge    x26, x27, L22
    sll    x25, x14, x21
    sra    x10, x17, x3
L22:
    mulh   x16, x14, x31
    mul    x14, x20, x1
    mul    x21, x27, x1
    sw     x18, 336(x2)
    lhu    x13, 860(x2)
    mulhsu x8, x18, x11
    andi   x18, x23, 1960
    div    x9, x28, x25
    srl    x6, x9, x19
    jal    x26, L23
    divu   x16, x31, x19
L23:
    lw     x7, 4(x2)
    slli   x7, x4, 13
    mul    x13, x18, x13
    slli   x6, x12, 8
    div    x5, x23, x5
    mulh   x18, x17, x23
    mulh   x5, x15, x12
    divu   x9, x9, x20
    remu   x17, x13, x13
    lhu    x30, 350(x2)
    divu   x18, x30, x5
    sh     x31, 204(x2)
    lui    x17, 0xb792b
    sh     x21, 12(x2)
    sb     x12, 534(x2)
    lbu    x15, 462(x2)
    and    x16, x7, x5
    sub    x22, x10, x12
    sw     x14, 468(x2)
    div    x7, x24, x25
    mul    x1, x8, x16
    lui    x22, 0x444ae
    mulh   x10, x22, x31
    mulhsu x16, x11, x9
    bgeu   x23, x30, L24
    mulhsu x21, x5, x18
    slt    x8, x31, x18
L24:
    add    x7, x13, x3
    mulh   x22, x3, x3
    addi   x17, x26, 154
    mulhsu x25, x1, x13
    sltiu  x27, x17, 464
    divu   x11, x19, x5
    and    x19, x28, x3
    bne    x25, x4, L25
    sra    x7, x1, x8
    and    x25, x18, x29
    mulhsu x14, x28, x21
L25:
    sw     x29, 340(x2)
    sh     x23, 540(x2)
    xori   x29, x10, 181
    mulh   x31, x6, x21
    lbu    x11, 513(x2)
    sb     x29, 1003(x2)
    sltu   x9, x29, x30
    auipc  x7, 0xf0678
    sw     x22, 200(x2)
    sb     x29, 554(x2)
    beq    x12, x9, L26
    sltu   x9, x30, x21
    sll    x4, x5, x17
L26:
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
