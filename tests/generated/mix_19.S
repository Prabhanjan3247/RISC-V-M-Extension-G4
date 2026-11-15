    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xfffffffe
    li    x3, 0x4e470717
    li    x4, 0xffffffff
    li    x5, 0x1
    li    x6, 0x34a50010
    li    x7, 0x25c5674b
    li    x8, 0xbfaa8dc4
    li    x9, 0x9377d57c
    li    x10, 0x3
    li    x11, 0xffff
    li    x12, 0xf5442c06
    li    x13, 0x781244a
    li    x14, 0x72497ced
    li    x15, 0x365da638
    li    x16, 0x3
    li    x17, 0xb5de5a14
    li    x18, 0x95facced
    li    x19, 0x80000000
    li    x20, 0x5c0c6787
    li    x21, 0x798d94c3
    li    x22, 0x4eb9f4c5
    li    x23, 0x48801427
    li    x24, 0xffff0000
    li    x25, 0xffff
    li    x26, 0xeb62b3e
    li    x27, 0x2bd544d6
    li    x28, 0x80000001
    li    x29, 0x1
    li    x30, 0x80000001
    li    x31, 0x16de16a4
    remu   x3, x8, x30
    div    x22, x9, x30
    andi   x12, x28, 769
    srl    x16, x29, x30
    divu   x10, x20, x10
    srli   x12, x30, 1
    xor    x23, x16, x27
    div    x7, x23, x8
    and    x5, x14, x14
    mulh   x6, x22, x24
    divu   x24, x8, x30
    remu   x16, x10, x3
    lbu    x13, 235(x2)
    slti   x3, x31, -1784
    auipc  x26, 0
    jalr   x16, x26, 12
    mul    x5, x14, x9
L0:
    sw     x11, 72(x2)
    divu   x12, x19, x20
    bgeu   x15, x30, L1
    sra    x24, x24, x12
    mulhsu x9, x10, x21
L1:
    bne    x19, x24, L2
    divu   x29, x12, x30
    mulhsu x16, x6, x7
    mul    x18, x30, x6
L2:
    sra    x20, x27, x1
    auipc  x27, 0
    jalr   x29, x27, 12
    div    x25, x10, x21
L3:
    ori    x6, x18, 1557
    beq    x12, x31, L4
    add    x27, x20, x14
    mulhsu x14, x17, x10
    or     x22, x9, x16
L4:
    andi   x26, x15, 1562
    mulhu  x1, x21, x27
    xori   x5, x1, 1168
    lui    x14, 0x59b1a
    xori   x29, x27, -242
    xor    x23, x19, x23
    bltu   x15, x29, L5
    sra    x13, x6, x26
L5:
    auipc  x25, 0
    jalr   x1, x25, 12
    remu   x6, x23, x11
L6:
    divu   x10, x10, x26
    mul    x7, x18, x22
    mulh   x4, x10, x5
    sh     x29, 448(x2)
    divu   x5, x26, x5
    sw     x23, 444(x2)
    jal    x18, L7
    rem    x5, x17, x25
L7:
    srl    x12, x20, x13
    lw     x14, 480(x2)
    mul    x13, x31, x27
    slli   x28, x29, 1
    sb     x7, 939(x2)
    mulh   x30, x28, x10
    sh     x3, 620(x2)
    sb     x19, 352(x2)
    srl    x26, x23, x27
    add    x17, x10, x4
    auipc  x19, 0x30ff3
    addi   x3, x12, 1836
    srai   x18, x11, 25
    bne    x12, x8, L8
    div    x31, x3, x23
    mulhsu x20, x23, x28
    srl    x9, x12, x8
L8:
    mulhsu x5, x1, x1
    slti   x28, x24, 1701
    remu   x31, x1, x7
    sw     x19, 756(x2)
    sh     x1, 912(x2)
    srl    x1, x18, x12
    bne    x10, x28, L9
    sll    x11, x28, x31
    mulh   x12, x31, x16
L9:
    sra    x12, x20, x4
    mulhsu x3, x21, x26
    xor    x26, x28, x30
    rem    x7, x9, x28
    sw     x6, 952(x2)
    lhu    x4, 878(x2)
    divu   x20, x14, x7
    andi   x4, x12, 1320
    mul    x15, x28, x13
    mul    x6, x1, x17
    sra    x3, x17, x12
    mulhu  x16, x11, x10
    sw     x17, 184(x2)
    sw     x17, 568(x2)
    lw     x10, 268(x2)
    addi   x30, x22, -1793
    divu   x30, x19, x7
    beq    x22, x31, L10
    xor    x12, x19, x3
L10:
    or     x26, x30, x6
    sltiu  x19, x5, 1435
    blt    x31, x24, L11
    sltu   x28, x26, x20
L11:
    lui    x10, 0x39b75
    bgeu   x27, x7, L12
    rem    x3, x5, x24
    mulh   x23, x29, x29
    remu   x4, x14, x25
L12:
    lh     x26, 200(x2)
    andi   x15, x19, -369
    mulh   x7, x20, x13
    sb     x3, 593(x2)
    auipc  x4, 0xa4b94
    div    x3, x30, x10
    sw     x20, 868(x2)
    ori    x18, x13, -1559
    div    x21, x4, x25
    or     x14, x17, x26
    slli   x22, x30, 10
    sh     x3, 458(x2)
    bltu   x26, x18, L13
    slt    x28, x18, x20
    xor    x8, x8, x24
    sub    x27, x6, x18
L13:
    mulhu  x8, x26, x1
    sw     x10, 812(x2)
    lb     x20, 798(x2)
    divu   x27, x20, x8
    bge    x22, x29, L14
    sll    x22, x31, x23
    divu   x6, x3, x8
L14:
    add    x9, x11, x31
    mulhsu x23, x7, x18
    addi   x8, x9, 1224
    mulhsu x30, x27, x18
    remu   x9, x9, x25
    mulh   x4, x31, x26
    sb     x31, 646(x2)
    sw     x23, 736(x2)
    div    x7, x17, x27
    sltu   x17, x8, x18
    mul    x25, x22, x18
    bge    x8, x23, L15
    rem    x24, x30, x1
    xor    x23, x20, x19
L15:
    beq    x22, x23, L16
    remu   x26, x10, x3
    srl    x6, x12, x3
    or     x12, x31, x8
L16:
    lui    x24, 0x234
    srl    x6, x12, x9
    and    x15, x25, x14
    lh     x7, 988(x2)
    lw     x31, 80(x2)
    remu   x9, x1, x16
    sll    x7, x24, x4
    auipc  x1, 0x8ba6
    srai   x11, x6, 13
    sh     x28, 182(x2)
    ori    x26, x28, -879
    remu   x4, x8, x1
    slt    x15, x24, x31
    or     x12, x31, x21
    andi   x20, x16, 1995
    ori    x13, x27, 414
    mulh   x16, x30, x9
    xor    x9, x13, x29
    sw     x7, 736(x2)
    sh     x11, 660(x2)
    xori   x10, x23, -1446
    mul    x16, x26, x16
    rem    x30, x11, x27
    sw     x13, 324(x2)
    xor    x7, x5, x4
    srai   x6, x28, 11
    sw     x5, 620(x2)
    sw     x30, 996(x2)
    slli   x29, x27, 5
    lw     x30, 712(x2)
    remu   x22, x11, x29
    sw     x28, 420(x2)
    bge    x11, x29, L17
    and    x16, x20, x19
L17:
    remu   x8, x14, x11
    auipc  x30, 0x997b6
    sll    x15, x8, x13
    rem    x22, x12, x30
    auipc  x29, 0
    jalr   x19, x29, 12
    div    x9, x31, x24
L18:
    mulh   x18, x25, x1
    remu   x28, x20, x14
    lb     x10, 527(x2)
    andi   x30, x28, 2017
    div    x31, x24, x28
    lb     x14, 269(x2)
    auipc  x12, 0
    jalr   x27, x12, 12
    mulhu  x22, x10, x1
L19:
    lh     x30, 450(x2)
    slt    x28, x24, x26
    auipc  x19, 0
    jalr   x28, x19, 12
    mulhu  x28, x26, x30
L20:
    and    x27, x6, x1
    lui    x1, 0x1371f
    mul    x31, x21, x11
    lb     x30, 149(x2)
    div    x8, x15, x8
    srli   x18, x14, 23
    bge    x30, x11, L21
    sra    x31, x6, x30
    mulhu  x11, x15, x24
    mulhu  x9, x10, x22
L21:
    ori    x15, x14, 1850
    sub    x21, x7, x6
    ori    x21, x24, -986
    mulh   x7, x31, x3
    sw     x28, 728(x2)
    sh     x18, 484(x2)
    or     x4, x12, x1
    div    x8, x16, x11
    addi   x7, x22, 2038
    auipc  x21, 0
    jalr   x9, x21, 12
    mulhsu x20, x28, x31
L22:
    divu   x18, x5, x21
    mulh   x7, x16, x24
    rem    x6, x5, x29
    mulhsu x3, x10, x30
    addi   x31, x15, 1672
    or     x4, x30, x14
    sh     x31, 414(x2)
    sll    x13, x10, x28
    lui    x13, 0xf608a
    rem    x12, x21, x10
    jal    x12, L23
    div    x16, x26, x3
L23:
    sb     x18, 791(x2)
    lb     x10, 923(x2)
    bltu   x10, x31, L24
    divu   x7, x26, x3
    div    x5, x23, x6
    rem    x29, x20, x8
L24:
    div    x13, x12, x21
    lui    x6, 0x26d20
    xor    x1, x26, x25
    auipc  x28, 0
    jalr   x10, x28, 12
    remu   x25, x13, x3
L25:
    lw     x28, 740(x2)
    lb     x9, 333(x2)
    bge    x9, x11, L26
    mulhu  x30, x21, x12
    slt    x18, x10, x28
    xor    x23, x7, x15
L26:
    div    x20, x16, x12
    beq    x26, x10, L27
    sra    x29, x7, x15
L27:
    addi   x10, x14, -1446
    lb     x11, 149(x2)
    slli   x14, x9, 3
    divu   x4, x3, x11
    sw     x29, 24(x2)
    jal    x23, L28
    div    x5, x23, x20
L28:
    sh     x25, 184(x2)
    ori    x30, x17, -1411
    addi   x21, x31, 231
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
