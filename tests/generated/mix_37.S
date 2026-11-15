    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x11480b1a
    li    x3, 0xffffffff
    li    x4, 0xbf60608e
    li    x5, 0x2
    li    x6, 0x3387d41b
    li    x7, 0x4baffe6d
    li    x8, 0x2fe5d28a
    li    x9, 0x185b36a1
    li    x10, 0xc264c95f
    li    x11, 0x59af7815
    li    x12, 0xe4f057dc
    li    x13, 0xfffffffd
    li    x14, 0x4a050f5
    li    x15, 0x2
    li    x16, 0xfa0fce56
    li    x17, 0xbea4894c
    li    x18, 0x46468a6a
    li    x19, 0x261266f0
    li    x20, 0xb24f6636
    li    x21, 0x4a18b73
    li    x22, 0x58e75b37
    li    x23, 0xabd51a04
    li    x24, 0x3deaf843
    li    x25, 0xe46c777e
    li    x26, 0xcd870d5d
    li    x27, 0x82af506d
    li    x28, 0x2bda2fbb
    li    x29, 0x80000001
    li    x30, 0x52ceb0e9
    li    x31, 0x8b68b5d2
    sra    x20, x4, x8
    srai   x7, x4, 1
    lh     x12, 846(x2)
    srli   x21, x4, 17
    auipc  x4, 0xfec35
    slli   x7, x3, 23
    sw     x6, 964(x2)
    bne    x10, x16, L0
    sltu   x24, x14, x6
    slt    x24, x21, x19
    mulhsu x24, x19, x30
L0:
    lui    x18, 0x53426
    rem    x3, x6, x25
    sub    x12, x31, x8
    add    x12, x6, x21
    xor    x30, x12, x28
    sltiu  x19, x3, -619
    mulhsu x5, x23, x11
    bgeu   x22, x6, L1
    divu   x16, x1, x8
L1:
    and    x29, x12, x9
    mulhu  x3, x5, x30
    sh     x29, 892(x2)
    or     x5, x13, x18
    sltu   x23, x22, x6
    sltiu  x26, x6, -1604
    slt    x3, x25, x11
    and    x22, x19, x8
    div    x30, x29, x7
    rem    x13, x4, x26
    lb     x18, 400(x2)
    add    x23, x11, x30
    rem    x24, x9, x18
    mulhsu x16, x18, x30
    mulh   x1, x12, x5
    add    x13, x12, x12
    divu   x5, x31, x8
    mulh   x9, x29, x15
    beq    x15, x31, L2
    sub    x4, x13, x10
    slt    x5, x22, x6
L2:
    auipc  x12, 0
    jalr   x17, x12, 12
    rem    x1, x26, x26
L3:
    jal    x7, L4
    mulhu  x19, x4, x25
L4:
    sw     x31, 864(x2)
    lui    x18, 0x498dd
    and    x30, x12, x18
    lw     x4, 696(x2)
    ori    x28, x22, 1908
    srli   x21, x28, 3
    sw     x24, 868(x2)
    srli   x16, x16, 29
    lbu    x10, 512(x2)
    sra    x25, x5, x5
    sb     x4, 614(x2)
    xor    x25, x18, x19
    ori    x13, x1, 813
    bltu   x26, x12, L5
    and    x20, x28, x14
L5:
    sb     x30, 732(x2)
    divu   x23, x3, x15
    bge    x19, x13, L6
    mulhsu x6, x5, x21
L6:
    ori    x27, x28, 11
    bltu   x25, x5, L7
    xor    x21, x31, x13
    divu   x28, x29, x14
    or     x6, x17, x6
L7:
    rem    x27, x23, x25
    and    x31, x17, x1
    xor    x7, x13, x25
    sltiu  x29, x20, -1811
    mulhu  x21, x28, x13
    rem    x7, x1, x29
    addi   x9, x13, -345
    mulhsu x17, x18, x16
    and    x27, x22, x4
    mulhsu x29, x7, x13
    add    x5, x25, x16
    divu   x1, x22, x25
    addi   x1, x19, -1348
    mul    x9, x7, x27
    sb     x20, 97(x2)
    remu   x25, x18, x27
    lb     x15, 103(x2)
    mulh   x21, x1, x14
    slli   x24, x14, 18
    sh     x20, 0(x2)
    slt    x9, x13, x1
    sra    x19, x24, x7
    addi   x14, x27, 1516
    div    x14, x21, x20
    lhu    x31, 774(x2)
    bltu   x26, x31, L8
    rem    x14, x11, x10
    sra    x18, x21, x19
L8:
    mulhu  x23, x14, x3
    lbu    x11, 95(x2)
    jal    x20, L9
    rem    x27, x26, x22
L9:
    lui    x17, 0xbec5
    lbu    x14, 616(x2)
    sh     x7, 160(x2)
    ori    x26, x24, -1111
    auipc  x17, 0
    jalr   x22, x17, 12
    div    x13, x7, x5
L10:
    lw     x16, 608(x2)
    srai   x1, x20, 6
    divu   x1, x25, x18
    sh     x21, 22(x2)
    rem    x14, x21, x7
    lbu    x3, 596(x2)
    sw     x22, 276(x2)
    mul    x29, x7, x12
    sh     x31, 608(x2)
    srai   x27, x11, 5
    bge    x27, x19, L11
    add    x15, x23, x28
    mulh   x29, x11, x24
L11:
    div    x18, x13, x29
    sw     x9, 712(x2)
    mulhu  x16, x21, x20
    bgeu   x9, x30, L12
    remu   x10, x13, x27
L12:
    slt    x28, x24, x17
    sw     x13, 504(x2)
    mulh   x24, x17, x25
    mulh   x6, x13, x21
    sll    x13, x30, x16
    bltu   x1, x3, L13
    xor    x5, x11, x1
    sltu   x23, x30, x31
    rem    x11, x8, x6
L13:
    div    x17, x17, x27
    andi   x18, x3, 1054
    xori   x18, x29, 387
    sw     x17, 396(x2)
    srai   x27, x31, 1
    divu   x16, x28, x3
    sra    x23, x30, x28
    mulh   x5, x16, x30
    bgeu   x4, x27, L14
    slt    x18, x7, x14
    mulhu  x9, x12, x30
    remu   x9, x17, x29
L14:
    sw     x15, 732(x2)
    sb     x27, 530(x2)
    or     x16, x28, x16
    xor    x31, x21, x25
    divu   x3, x25, x5
    srl    x26, x30, x27
    srai   x30, x29, 13
    lbu    x15, 550(x2)
    lw     x28, 656(x2)
    mulhsu x28, x25, x20
    remu   x18, x5, x16
    sw     x1, 952(x2)
    mulhu  x6, x27, x16
    sh     x14, 464(x2)
    slli   x3, x27, 16
    jal    x6, L15
    mulh   x29, x10, x4
L15:
    mulhsu x9, x27, x17
    lw     x28, 424(x2)
    remu   x16, x1, x27
    auipc  x28, 0
    jalr   x16, x28, 12
    div    x10, x11, x27
L16:
    srli   x3, x16, 17
    lw     x17, 116(x2)
    sltiu  x27, x22, -1821
    srai   x7, x15, 30
    divu   x24, x18, x9
    mulhu  x13, x27, x21
    mul    x21, x4, x23
    divu   x10, x21, x13
    sb     x30, 601(x2)
    slti   x15, x28, 1731
    sll    x5, x13, x3
    mulhsu x19, x26, x10
    remu   x16, x12, x27
    sh     x31, 878(x2)
    sb     x1, 639(x2)
    sb     x9, 990(x2)
    sh     x11, 878(x2)
    sw     x31, 384(x2)
    bltu   x11, x29, L17
    div    x20, x17, x15
L17:
    and    x30, x17, x20
    slti   x21, x6, 1803
    rem    x28, x7, x12
    bge    x27, x6, L18
    and    x12, x6, x21
    or     x16, x4, x6
L18:
    slli   x24, x23, 17
    mulhsu x27, x8, x3
    sw     x7, 840(x2)
    lbu    x15, 1012(x2)
    bgeu   x26, x14, L19
    sra    x22, x25, x4
L19:
    auipc  x26, 0
    jalr   x8, x26, 12
    mulhu  x29, x23, x30
L20:
    divu   x28, x9, x19
    bne    x15, x4, L21
    xor    x7, x5, x31
    mulhsu x21, x15, x26
L21:
    lbu    x9, 59(x2)
    xori   x11, x20, 1249
    ori    x7, x8, -1751
    srli   x7, x9, 12
    sb     x29, 371(x2)
    sll    x6, x26, x10
    sltiu  x11, x1, -1727
    addi   x24, x18, -1819
    ori    x21, x7, 1055
    mulhu  x24, x1, x21
    sra    x27, x5, x5
    auipc  x19, 0xcaf04
    lhu    x5, 256(x2)
    sb     x3, 100(x2)
    remu   x1, x29, x26
    jal    x3, L22
    divu   x24, x25, x9
L22:
    sltiu  x29, x24, 942
    bgeu   x13, x23, L23
    mul    x22, x8, x25
    mulh   x24, x27, x11
L23:
    lhu    x16, 984(x2)
    auipc  x6, 0xbdd7a
    slti   x12, x14, -844
    sw     x17, 20(x2)
    blt    x7, x8, L24
    mulhu  x27, x24, x15
L24:
    mulhu  x5, x24, x20
    mulhsu x1, x15, x3
    sw     x16, 304(x2)
    sb     x13, 757(x2)
    ori    x18, x17, 926
    ori    x13, x30, -306
    rem    x4, x4, x1
    blt    x31, x27, L25
    and    x7, x28, x12
    div    x23, x10, x20
    or     x18, x5, x27
L25:
    sw     x7, 388(x2)
    blt    x11, x24, L26
    and    x19, x11, x23
L26:
    sra    x18, x5, x8
    lh     x15, 28(x2)
    add    x24, x25, x30
    bltu   x15, x12, L27
    div    x12, x4, x4
L27:
    lw     x20, 996(x2)
    sw     x5, 568(x2)
    divu   x5, x15, x3
    auipc  x1, 0
    jalr   x19, x1, 12
    remu   x29, x4, x19
L28:
    xor    x9, x20, x20
    srai   x6, x14, 26
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
