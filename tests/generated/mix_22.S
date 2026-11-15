    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x179fa752
    li    x3, 0xd3a948c1
    li    x4, 0x703c0b96
    li    x5, 0xe672c5d1
    li    x6, 0x80000000
    li    x7, 0x892538ca
    li    x8, 0x436a4675
    li    x9, 0x200b4df0
    li    x10, 0x9f6b5be3
    li    x11, 0x8fe2902d
    li    x12, 0xb1cdd633
    li    x13, 0xe72ceeb0
    li    x14, 0xffff0000
    li    x15, 0x3
    li    x16, 0xaaaaaaaa
    li    x17, 0xa5af712e
    li    x18, 0x419970cc
    li    x19, 0x80000001
    li    x20, 0x7fffffff
    li    x21, 0xfffffffd
    li    x22, 0x80000001
    li    x23, 0xc7fc467d
    li    x24, 0x8760b74b
    li    x25, 0x0
    li    x26, 0xfffffffd
    li    x27, 0x3
    li    x28, 0xffffffff
    li    x29, 0xfffffffd
    li    x30, 0x857efad8
    li    x31, 0xa42ad458
    auipc  x27, 0
    jalr   x4, x27, 12
    mulhsu x28, x25, x4
L0:
    divu   x17, x30, x3
    slti   x27, x5, -902
    sb     x15, 431(x2)
    sb     x10, 368(x2)
    mulh   x4, x19, x26
    xor    x9, x6, x23
    bge    x11, x14, L1
    sltu   x22, x30, x13
    sll    x21, x11, x1
L1:
    mulhsu x15, x23, x22
    sh     x14, 518(x2)
    or     x27, x18, x27
    lhu    x4, 126(x2)
    rem    x24, x28, x11
    lb     x25, 711(x2)
    lw     x17, 296(x2)
    lw     x3, 320(x2)
    andi   x29, x5, 772
    sh     x12, 692(x2)
    and    x11, x18, x12
    srli   x29, x3, 20
    mulh   x26, x29, x11
    sw     x22, 244(x2)
    xor    x18, x3, x18
    srai   x20, x26, 15
    slt    x13, x19, x23
    rem    x23, x4, x22
    sltiu  x13, x29, 1073
    sub    x19, x1, x12
    sb     x11, 858(x2)
    slt    x9, x21, x11
    sh     x18, 908(x2)
    addi   x10, x18, 1044
    and    x13, x3, x16
    slt    x17, x22, x1
    lui    x27, 0x34bdc
    lh     x14, 798(x2)
    mulhsu x13, x5, x27
    rem    x23, x9, x11
    mulhu  x17, x21, x13
    lh     x18, 664(x2)
    mulhu  x7, x31, x23
    mulhsu x29, x20, x22
    sltiu  x13, x11, -1164
    mulhu  x18, x21, x10
    mulhu  x8, x19, x24
    lh     x4, 708(x2)
    div    x13, x29, x1
    remu   x29, x16, x27
    addi   x9, x1, 180
    lb     x5, 546(x2)
    xor    x12, x4, x19
    auipc  x25, 0
    jalr   x31, x25, 12
    mulh   x3, x27, x9
L2:
    sltu   x15, x14, x13
    addi   x16, x17, -319
    div    x18, x29, x3
    sub    x30, x24, x28
    lhu    x13, 570(x2)
    divu   x7, x3, x15
    mulh   x23, x15, x14
    divu   x19, x12, x5
    mulh   x5, x13, x10
    rem    x26, x13, x30
    andi   x1, x15, -1393
    blt    x30, x3, L3
    or     x23, x24, x1
L3:
    sub    x30, x28, x30
    bne    x22, x7, L4
    mulh   x19, x23, x28
    mul    x29, x12, x9
    srl    x27, x15, x10
L4:
    add    x18, x28, x27
    sub    x3, x9, x14
    add    x6, x23, x7
    slli   x25, x16, 31
    mulhu  x5, x14, x24
    sb     x31, 58(x2)
    sw     x19, 424(x2)
    slti   x30, x4, -1046
    remu   x30, x17, x30
    slli   x18, x24, 9
    sltiu  x13, x13, 1004
    mul    x19, x17, x23
    blt    x8, x7, L5
    div    x19, x19, x24
    sub    x14, x22, x25
    add    x10, x21, x23
L5:
    slt    x17, x17, x28
    mulhsu x30, x11, x5
    srai   x12, x23, 10
    add    x6, x7, x5
    and    x29, x14, x22
    remu   x5, x14, x9
    sltiu  x3, x9, 890
    sw     x17, 368(x2)
    mul    x5, x12, x18
    mulh   x12, x1, x27
    mulh   x26, x22, x8
    srli   x31, x16, 24
    ori    x20, x15, 1300
    sltiu  x10, x8, 475
    divu   x31, x27, x9
    sub    x25, x25, x31
    div    x27, x6, x10
    sw     x11, 64(x2)
    sw     x13, 468(x2)
    mulh   x23, x7, x1
    remu   x5, x28, x20
    rem    x3, x16, x16
    mulhsu x8, x3, x22
    sra    x24, x30, x16
    remu   x25, x25, x28
    remu   x6, x4, x9
    srai   x31, x7, 26
    bltu   x20, x14, L6
    srl    x20, x8, x7
    mulh   x6, x26, x12
    srl    x23, x27, x14
L6:
    srl    x11, x11, x13
    bgeu   x16, x17, L7
    div    x28, x9, x8
    mulh   x21, x5, x6
    srl    x30, x30, x7
L7:
    beq    x10, x24, L8
    mul    x23, x19, x6
    slt    x1, x25, x13
    rem    x4, x16, x15
L8:
    xori   x22, x12, 72
    or     x14, x10, x21
    blt    x26, x16, L9
    mulh   x30, x18, x25
    mulhu  x22, x31, x7
L9:
    bne    x27, x4, L10
    remu   x14, x15, x28
L10:
    lb     x11, 99(x2)
    mulhsu x13, x13, x4
    sub    x4, x29, x20
    mul    x23, x18, x11
    ori    x3, x7, 615
    sll    x23, x11, x28
    sw     x16, 716(x2)
    srai   x26, x12, 8
    lbu    x1, 82(x2)
    xori   x16, x11, 609
    lw     x12, 572(x2)
    mul    x31, x28, x13
    sub    x27, x23, x17
    mulhu  x27, x14, x6
    xor    x27, x24, x11
    divu   x22, x8, x24
    sll    x4, x22, x11
    mul    x22, x9, x13
    mulh   x7, x7, x15
    mulhu  x13, x31, x19
    mul    x15, x8, x12
    sh     x18, 542(x2)
    lh     x19, 806(x2)
    bltu   x20, x26, L11
    slt    x15, x24, x26
L11:
    remu   x20, x14, x17
    remu   x1, x5, x22
    jal    x6, L12
    remu   x10, x15, x16
L12:
    mul    x24, x19, x21
    addi   x14, x31, 109
    ori    x26, x12, 2038
    slli   x20, x25, 18
    slti   x6, x31, -1788
    bne    x13, x11, L13
    srl    x8, x4, x15
L13:
    mulh   x5, x27, x29
    sra    x5, x21, x10
    auipc  x19, 0x65efc
    slti   x11, x22, -1742
    sltu   x24, x23, x28
    auipc  x5, 0
    jalr   x25, x5, 12
    mulh   x22, x4, x9
L14:
    blt    x3, x5, L15
    sra    x16, x5, x11
    srl    x26, x13, x10
    mul    x6, x31, x9
L15:
    auipc  x20, 0x717fd
    add    x25, x18, x20
    auipc  x14, 0
    jalr   x6, x14, 12
    mulhsu x7, x15, x9
L16:
    mulhsu x25, x28, x29
    and    x9, x28, x20
    sra    x21, x4, x6
    mulh   x15, x12, x3
    xori   x27, x15, -88
    sltiu  x9, x18, -1473
    bne    x5, x30, L17
    divu   x16, x6, x16
    and    x16, x29, x31
L17:
    sh     x23, 22(x2)
    lb     x14, 331(x2)
    sb     x21, 90(x2)
    mulhu  x20, x29, x11
    mulh   x9, x14, x19
    lb     x15, 149(x2)
    sh     x9, 440(x2)
    xori   x1, x16, 638
    mulhu  x15, x26, x27
    bltu   x5, x13, L18
    rem    x9, x27, x17
L18:
    mulhsu x10, x5, x4
    remu   x29, x28, x6
    sw     x30, 900(x2)
    jal    x9, L19
    mulh   x3, x16, x23
L19:
    mulh   x31, x20, x29
    rem    x20, x24, x5
    div    x3, x24, x30
    mulhu  x10, x14, x17
    blt    x9, x14, L20
    sll    x7, x16, x4
L20:
    sltu   x17, x5, x11
    and    x3, x7, x29
    mul    x26, x28, x8
    xor    x17, x9, x13
    sra    x27, x15, x4
    jal    x15, L21
    mulhu  x27, x10, x28
L21:
    mulh   x15, x27, x11
    rem    x13, x15, x27
    lui    x9, 0xc33df
    sltu   x25, x10, x7
    andi   x11, x4, -118
    div    x17, x22, x10
    sub    x3, x6, x27
    slli   x21, x30, 29
    divu   x18, x26, x28
    or     x21, x17, x19
    andi   x31, x19, -276
    sb     x26, 1010(x2)
    auipc  x20, 0
    jalr   x5, x20, 12
    mulhsu x3, x3, x5
L22:
    rem    x11, x16, x16
    bne    x6, x18, L23
    rem    x15, x24, x27
L23:
    auipc  x26, 0
    jalr   x3, x26, 12
    divu   x1, x8, x28
L24:
    or     x14, x29, x16
    sra    x26, x11, x22
    srai   x15, x18, 11
    sb     x27, 844(x2)
    auipc  x17, 0
    jalr   x10, x17, 12
    remu   x28, x11, x31
L25:
    lw     x31, 656(x2)
    lhu    x9, 344(x2)
    divu   x13, x1, x23
    div    x22, x21, x22
    auipc  x20, 0
    jalr   x22, x20, 12
    mulhsu x26, x28, x13
L26:
    div    x24, x12, x10
    jal    x16, L27
    mulhu  x20, x23, x3
L27:
    lhu    x7, 154(x2)
    sb     x7, 262(x2)
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
