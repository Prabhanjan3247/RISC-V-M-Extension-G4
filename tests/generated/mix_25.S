    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xa3f62913
    li    x3, 0x80000001
    li    x4, 0xaf617d8c
    li    x5, 0xa7dea982
    li    x6, 0x97c0e149
    li    x7, 0xf6a22d67
    li    x8, 0x1
    li    x9, 0xdeb2dc3d
    li    x10, 0xadec87ff
    li    x11, 0x80000001
    li    x12, 0x7fffffff
    li    x13, 0x7fffffff
    li    x14, 0x94a59d85
    li    x15, 0x4f9b61f5
    li    x16, 0x219b964b
    li    x17, 0xa1785cc1
    li    x18, 0xfffffffd
    li    x19, 0x83ba2d3d
    li    x20, 0x1
    li    x21, 0xb4ab0ca0
    li    x22, 0xf4f54db0
    li    x23, 0x7c51b3c9
    li    x24, 0xde357b71
    li    x25, 0xffff
    li    x26, 0x647fe5d3
    li    x27, 0x1
    li    x28, 0xc48692a
    li    x29, 0x4af398d0
    li    x30, 0x23416080
    li    x31, 0x2
    bge    x17, x23, L0
    sra    x9, x7, x22
    sll    x9, x6, x5
L0:
    bgeu   x5, x20, L1
    mul    x17, x28, x10
L1:
    bgeu   x24, x9, L2
    sra    x6, x6, x21
    srl    x29, x21, x20
L2:
    remu   x26, x7, x20
    mul    x18, x24, x24
    lb     x31, 718(x2)
    sw     x5, 888(x2)
    mulh   x22, x17, x31
    jal    x21, L3
    div    x11, x22, x11
L3:
    bltu   x18, x3, L4
    slt    x12, x20, x8
L4:
    xori   x12, x19, -910
    auipc  x22, 0
    jalr   x4, x22, 12
    mulhsu x22, x14, x3
L5:
    jal    x27, L6
    mulhsu x14, x22, x3
L6:
    divu   x12, x9, x7
    slti   x3, x7, -194
    bgeu   x26, x28, L7
    slt    x7, x14, x13
L7:
    divu   x27, x29, x10
    lw     x28, 404(x2)
    sw     x24, 516(x2)
    lw     x8, 808(x2)
    srai   x19, x4, 20
    lb     x21, 262(x2)
    sub    x18, x25, x30
    ori    x18, x29, -958
    sh     x7, 410(x2)
    divu   x7, x28, x3
    rem    x10, x21, x15
    divu   x20, x16, x9
    div    x14, x20, x4
    div    x20, x13, x6
    xor    x13, x1, x21
    mul    x8, x14, x7
    add    x19, x14, x5
    lhu    x6, 634(x2)
    lh     x29, 514(x2)
    rem    x1, x10, x25
    mulh   x20, x19, x21
    sb     x20, 759(x2)
    and    x29, x6, x27
    srli   x8, x4, 8
    bgeu   x30, x5, L8
    and    x13, x14, x29
    sltu   x26, x6, x4
L8:
    sltiu  x29, x20, 983
    remu   x19, x31, x17
    rem    x4, x31, x4
    beq    x27, x11, L9
    sub    x10, x6, x31
L9:
    sw     x3, 716(x2)
    ori    x27, x25, -1305
    div    x30, x25, x26
    mulhsu x1, x8, x7
    sw     x16, 620(x2)
    srl    x18, x18, x30
    sw     x29, 728(x2)
    mulh   x13, x26, x15
    blt    x29, x29, L10
    add    x27, x18, x6
    div    x17, x29, x23
    xor    x7, x21, x23
L10:
    mulh   x8, x7, x14
    rem    x23, x27, x26
    sltiu  x17, x28, 1959
    srai   x15, x22, 13
    sh     x9, 108(x2)
    mul    x23, x5, x11
    auipc  x20, 0
    jalr   x3, x20, 12
    remu   x31, x29, x25
L11:
    sltu   x21, x22, x22
    srli   x29, x8, 21
    xor    x4, x22, x15
    sw     x5, 880(x2)
    slti   x18, x31, 1724
    lui    x12, 0x8ebcc
    slti   x5, x11, 930
    bge    x3, x14, L12
    sltu   x11, x25, x11
    xor    x24, x24, x27
L12:
    mul    x21, x29, x27
    lh     x28, 50(x2)
    mul    x12, x20, x11
    mul    x18, x10, x26
    div    x24, x28, x4
    div    x26, x23, x16
    mulhsu x28, x6, x18
    sw     x8, 148(x2)
    jal    x20, L13
    mul    x11, x30, x1
L13:
    addi   x9, x31, -1082
    mulhsu x17, x20, x24
    auipc  x29, 0
    jalr   x16, x29, 12
    divu   x7, x31, x31
L14:
    mulhsu x30, x6, x4
    sltu   x28, x21, x4
    xori   x27, x4, -569
    bgeu   x30, x20, L15
    or     x6, x17, x29
    remu   x1, x16, x1
    div    x5, x30, x27
L15:
    xori   x16, x22, 329
    divu   x3, x17, x31
    auipc  x24, 0
    jalr   x7, x24, 12
    mulhu  x30, x9, x10
L16:
    rem    x19, x13, x23
    lb     x10, 53(x2)
    mul    x15, x28, x13
    lhu    x5, 14(x2)
    slli   x8, x1, 12
    mul    x11, x8, x23
    sb     x17, 78(x2)
    xori   x30, x9, -1521
    sltu   x27, x1, x21
    auipc  x5, 0
    jalr   x13, x5, 12
    divu   x17, x15, x16
L17:
    blt    x29, x19, L18
    div    x27, x5, x28
    add    x31, x6, x20
    mulhsu x28, x9, x8
L18:
    sh     x22, 238(x2)
    ori    x8, x9, -574
    rem    x24, x8, x26
    addi   x29, x29, 1973
    ori    x28, x21, -928
    remu   x31, x31, x17
    lw     x5, 292(x2)
    lhu    x26, 414(x2)
    lh     x27, 588(x2)
    jal    x3, L19
    rem    x12, x23, x14
L19:
    bne    x26, x24, L20
    xor    x8, x18, x15
    sll    x31, x15, x4
L20:
    div    x5, x29, x28
    sh     x5, 952(x2)
    ori    x7, x14, -105
    lhu    x18, 406(x2)
    remu   x27, x27, x1
    divu   x23, x17, x17
    xor    x15, x23, x3
    rem    x29, x17, x4
    srai   x20, x6, 8
    slli   x31, x6, 15
    lhu    x29, 924(x2)
    bltu   x30, x25, L21
    mulhu  x6, x10, x24
    sra    x8, x3, x25
L21:
    rem    x4, x22, x30
    divu   x25, x20, x13
    sra    x15, x14, x10
    sltu   x28, x30, x20
    lbu    x30, 385(x2)
    srli   x24, x22, 31
    and    x24, x24, x16
    addi   x29, x26, -2012
    or     x21, x22, x26
    bltu   x24, x10, L22
    mulhsu x21, x19, x21
L22:
    andi   x25, x22, -1618
    jal    x6, L23
    rem    x23, x7, x28
L23:
    sltiu  x13, x17, -110
    andi   x6, x19, 778
    beq    x25, x30, L24
    srl    x3, x28, x18
    divu   x15, x20, x21
L24:
    mulh   x23, x8, x24
    blt    x8, x17, L25
    slt    x15, x5, x22
L25:
    srli   x26, x8, 9
    remu   x4, x9, x17
    slti   x8, x24, -161
    blt    x19, x19, L26
    srl    x23, x19, x16
L26:
    divu   x3, x8, x24
    mulhu  x10, x25, x4
    mulhsu x17, x22, x3
    mulhsu x27, x23, x4
    rem    x11, x23, x29
    auipc  x11, 0x67456
    sw     x4, 760(x2)
    remu   x7, x17, x27
    mul    x11, x9, x26
    slt    x8, x14, x8
    mulhu  x9, x6, x3
    bne    x30, x27, L27
    add    x21, x20, x1
    or     x4, x12, x8
    srl    x21, x16, x28
L27:
    mulhu  x21, x21, x28
    lhu    x15, 894(x2)
    lui    x22, 0xe700a
    ori    x6, x10, 1447
    srai   x18, x26, 21
    addi   x30, x1, 443
    lbu    x31, 663(x2)
    bgeu   x10, x10, L28
    and    x14, x21, x21
L28:
    sw     x21, 644(x2)
    sw     x4, 988(x2)
    sll    x17, x25, x27
    ori    x30, x20, 1317
    xor    x19, x4, x21
    div    x21, x16, x15
    slti   x24, x22, -1632
    rem    x4, x16, x15
    mulhu  x21, x12, x29
    div    x17, x10, x6
    slti   x21, x26, 1095
    sh     x24, 308(x2)
    sub    x29, x20, x13
    mulh   x5, x21, x29
    addi   x21, x24, -1062
    mulh   x15, x8, x12
    remu   x19, x25, x12
    mulh   x5, x15, x12
    mulh   x14, x9, x7
    sub    x9, x24, x16
    lb     x24, 727(x2)
    ori    x11, x7, -1923
    sltu   x21, x23, x19
    lui    x10, 0x5bb93
    beq    x15, x18, L29
    mulhsu x4, x8, x14
L29:
    remu   x13, x5, x12
    mulh   x4, x8, x17
    sw     x27, 432(x2)
    xor    x25, x29, x23
    sb     x18, 670(x2)
    mulhu  x26, x18, x28
    or     x9, x10, x27
    and    x22, x4, x18
    sw     x11, 220(x2)
    and    x22, x20, x10
    divu   x1, x9, x30
    lbu    x19, 180(x2)
    lw     x18, 784(x2)
    divu   x31, x10, x20
    addi   x7, x14, -980
    add    x10, x3, x20
    div    x11, x17, x10
    remu   x14, x23, x16
    divu   x13, x5, x16
    mulhu  x19, x17, x14
    xor    x19, x5, x10
    lbu    x24, 65(x2)
    mulh   x25, x30, x27
    srl    x28, x27, x16
    sh     x31, 634(x2)
    sb     x23, 601(x2)
    sb     x10, 276(x2)
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
