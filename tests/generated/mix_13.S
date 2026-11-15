    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x222f7d73
    li    x3, 0x8632a4cf
    li    x4, 0xcc2566ce
    li    x5, 0x80000001
    li    x6, 0x1
    li    x7, 0xa130ae8f
    li    x8, 0xe5bf25c6
    li    x9, 0x513a51e2
    li    x10, 0xf71c14c8
    li    x11, 0x519bc743
    li    x12, 0x74ca4d6b
    li    x13, 0xffff
    li    x14, 0x41b5af03
    li    x15, 0xab91d0b7
    li    x16, 0x755c4a6e
    li    x17, 0xbcef11f4
    li    x18, 0xffff0000
    li    x19, 0x1f68e63b
    li    x20, 0x1f99bf3c
    li    x21, 0x52b89dc1
    li    x22, 0x2
    li    x23, 0x248c43a6
    li    x24, 0xfffffffe
    li    x25, 0xb57f62ac
    li    x26, 0xadb1bf7b
    li    x27, 0x8d33d733
    li    x28, 0xfffffffe
    li    x29, 0x6d4ec7f2
    li    x30, 0xffffffff
    li    x31, 0xbf0d1d3f
    sw     x5, 584(x2)
    addi   x27, x14, 1051
    div    x17, x15, x13
    divu   x12, x28, x12
    mulh   x31, x7, x28
    bltu   x22, x16, L0
    sub    x30, x30, x12
    sltu   x13, x23, x6
    sub    x15, x15, x6
L0:
    bne    x20, x13, L1
    rem    x3, x12, x25
L1:
    xori   x5, x20, 625
    bge    x22, x11, L2
    srl    x25, x8, x8
    add    x21, x26, x13
L2:
    sw     x26, 924(x2)
    beq    x16, x15, L3
    or     x6, x22, x25
    add    x7, x10, x31
L3:
    mulh   x11, x26, x14
    beq    x17, x17, L4
    xor    x16, x9, x9
    divu   x8, x17, x7
    mulhu  x31, x22, x4
L4:
    lui    x3, 0x5e577
    srai   x15, x17, 20
    ori    x11, x30, -1030
    xori   x5, x23, -1286
    slt    x28, x18, x18
    mulhsu x10, x11, x10
    bne    x22, x4, L5
    mul    x8, x3, x8
    and    x10, x14, x6
L5:
    sra    x27, x13, x5
    auipc  x21, 0
    jalr   x6, x21, 12
    mulhu  x5, x15, x7
L6:
    xori   x21, x23, 1599
    or     x26, x3, x8
    rem    x26, x19, x12
    lb     x10, 94(x2)
    lb     x1, 626(x2)
    andi   x18, x24, 1256
    andi   x14, x5, -864
    add    x5, x26, x28
    auipc  x27, 0
    jalr   x17, x27, 12
    mulh   x26, x20, x8
L7:
    sltiu  x24, x19, -1343
    ori    x7, x3, 846
    mulhsu x6, x9, x6
    auipc  x19, 0x7b957
    remu   x6, x25, x6
    bgeu   x15, x3, L8
    mul    x11, x1, x5
L8:
    addi   x29, x5, -972
    beq    x28, x1, L9
    and    x16, x18, x20
    rem    x14, x8, x27
L9:
    auipc  x8, 0
    jalr   x21, x8, 12
    mulh   x24, x5, x16
L10:
    slti   x26, x9, -877
    andi   x14, x13, -1089
    remu   x13, x12, x4
    mulh   x10, x30, x28
    sub    x6, x5, x16
    mul    x24, x7, x19
    mulhsu x5, x27, x4
    sltu   x12, x5, x6
    andi   x25, x24, -670
    jal    x22, L11
    remu   x29, x3, x1
L11:
    beq    x6, x30, L12
    and    x23, x17, x4
L12:
    div    x8, x21, x12
    mulhsu x1, x3, x8
    mulhu  x1, x9, x10
    xori   x25, x18, -866
    divu   x24, x15, x5
    lhu    x24, 684(x2)
    mulhu  x14, x25, x30
    mul    x9, x17, x26
    lui    x22, 0x54d32
    sub    x13, x14, x17
    lw     x13, 376(x2)
    mulhsu x13, x18, x8
    auipc  x12, 0x39c9c
    auipc  x14, 0
    jalr   x31, x14, 12
    remu   x13, x7, x6
L13:
    slli   x17, x29, 24
    mul    x12, x23, x16
    xor    x15, x18, x11
    srl    x12, x11, x6
    sltu   x12, x19, x7
    mulhsu x21, x28, x5
    mul    x13, x29, x10
    sw     x24, 764(x2)
    lbu    x13, 547(x2)
    mulh   x22, x17, x9
    andi   x22, x8, -1103
    mulhu  x5, x21, x20
    bgeu   x22, x23, L14
    rem    x5, x31, x31
L14:
    andi   x14, x4, -1890
    mulh   x5, x26, x27
    sw     x14, 880(x2)
    mulhu  x21, x24, x6
    remu   x12, x16, x23
    mulhsu x7, x9, x27
    lb     x1, 236(x2)
    mul    x11, x23, x27
    mulh   x24, x1, x28
    bgeu   x15, x27, L15
    slt    x29, x4, x31
    rem    x26, x13, x16
L15:
    lhu    x20, 580(x2)
    lw     x26, 812(x2)
    sh     x4, 16(x2)
    div    x23, x23, x25
    addi   x23, x20, 1986
    sltiu  x8, x31, 216
    slli   x13, x23, 18
    auipc  x12, 0x6f338
    add    x19, x31, x20
    mulhu  x7, x24, x9
    remu   x4, x4, x21
    xori   x17, x30, 1049
    mulh   x17, x17, x28
    mulhu  x21, x27, x15
    bltu   x9, x27, L16
    sltu   x14, x21, x12
L16:
    xori   x4, x15, 48
    lbu    x29, 655(x2)
    sh     x6, 96(x2)
    srli   x14, x22, 22
    sb     x31, 369(x2)
    rem    x10, x1, x4
    lbu    x24, 806(x2)
    auipc  x18, 0x58d68
    remu   x8, x8, x17
    mulh   x27, x30, x17
    slti   x28, x16, -1648
    bge    x14, x11, L17
    and    x29, x9, x29
    sll    x6, x19, x26
L17:
    rem    x11, x26, x25
    remu   x7, x23, x20
    remu   x16, x6, x7
    slt    x4, x15, x12
    mul    x14, x16, x23
    mulhu  x8, x30, x29
    lh     x10, 1008(x2)
    sltiu  x7, x6, -1209
    srli   x15, x14, 3
    sw     x24, 828(x2)
    div    x23, x15, x31
    mulhu  x3, x21, x31
    or     x24, x26, x21
    divu   x20, x25, x4
    andi   x12, x5, -1714
    beq    x17, x23, L18
    remu   x6, x19, x7
    mulhsu x5, x19, x22
L18:
    mulhu  x21, x10, x9
    sub    x9, x4, x24
    sw     x22, 596(x2)
    sb     x31, 74(x2)
    jal    x6, L19
    mulhu  x29, x1, x12
L19:
    mulhsu x19, x9, x11
    add    x24, x24, x7
    lb     x12, 597(x2)
    bgeu   x14, x15, L20
    add    x19, x21, x4
    srl    x5, x6, x25
L20:
    srai   x31, x13, 5
    lw     x4, 408(x2)
    div    x29, x29, x6
    sll    x9, x26, x30
    remu   x13, x20, x5
    blt    x15, x3, L21
    or     x29, x8, x22
    sll    x21, x20, x29
L21:
    ori    x31, x4, 1433
    beq    x19, x23, L22
    mulhu  x22, x13, x9
L22:
    divu   x24, x13, x13
    srl    x5, x3, x10
    sw     x1, 860(x2)
    bgeu   x14, x24, L23
    mulhsu x27, x13, x14
L23:
    lui    x1, 0xd79ec
    lui    x12, 0x374e1
    andi   x18, x29, 579
    srl    x17, x17, x9
    mulh   x1, x29, x17
    remu   x21, x12, x27
    beq    x29, x6, L24
    div    x24, x29, x12
    divu   x6, x31, x7
    rem    x1, x8, x1
L24:
    auipc  x15, 0xadb18
    beq    x28, x26, L25
    mulh   x6, x6, x27
    mulhsu x7, x20, x21
L25:
    mulh   x17, x18, x17
    lbu    x1, 408(x2)
    sb     x12, 737(x2)
    sh     x16, 60(x2)
    blt    x22, x27, L26
    srl    x13, x14, x10
L26:
    mulhu  x14, x1, x25
    slti   x21, x3, -990
    sub    x7, x22, x21
    sw     x10, 368(x2)
    remu   x29, x10, x4
    ori    x11, x31, 159
    div    x20, x31, x5
    ori    x29, x1, 1391
    sll    x1, x28, x9
    lbu    x30, 703(x2)
    ori    x21, x21, 959
    slt    x23, x13, x25
    rem    x31, x22, x16
    mul    x1, x12, x25
    xor    x22, x16, x9
    lw     x29, 408(x2)
    sb     x6, 218(x2)
    lw     x31, 636(x2)
    sb     x8, 266(x2)
    srl    x29, x10, x23
    div    x24, x6, x29
    lhu    x10, 852(x2)
    bgeu   x19, x13, L27
    sltu   x6, x1, x11
L27:
    sub    x10, x21, x21
    rem    x25, x13, x11
    sltiu  x8, x10, 493
    sll    x6, x7, x20
    ori    x6, x29, 1251
    lw     x27, 856(x2)
    slt    x10, x12, x15
    lbu    x6, 903(x2)
    mulh   x5, x24, x17
    slt    x24, x28, x9
    bge    x19, x6, L28
    slt    x5, x3, x19
    divu   x17, x1, x30
L28:
    sh     x19, 394(x2)
    blt    x28, x25, L29
    sra    x9, x20, x28
    sub    x14, x1, x12
    and    x13, x9, x8
L29:
    remu   x15, x23, x26
    xori   x17, x29, -733
    srli   x24, x4, 10
    srli   x28, x21, 25
    sw     x15, 248(x2)
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
