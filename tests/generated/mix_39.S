    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xa47f22f0
    li    x3, 0x80000001
    li    x4, 0x1
    li    x5, 0x57308b7
    li    x6, 0x2cc3556d
    li    x7, 0xb9a8ce
    li    x8, 0xa23b9123
    li    x9, 0x3
    li    x10, 0xc6cfd6f1
    li    x11, 0x6671ab8a
    li    x12, 0xffff0000
    li    x13, 0x34c53d7
    li    x14, 0xffff0000
    li    x15, 0x697d3caf
    li    x16, 0x0
    li    x17, 0xe4efa89b
    li    x18, 0xfffffffe
    li    x19, 0xa0b7a19d
    li    x20, 0xcdcb4313
    li    x21, 0x3d2f4730
    li    x22, 0xb6a66555
    li    x23, 0x1
    li    x24, 0x0
    li    x25, 0x7604242d
    li    x26, 0x80000000
    li    x27, 0xfffffffe
    li    x28, 0x1f828ea0
    li    x29, 0x1
    li    x30, 0xa4075273
    li    x31, 0x3613f8fe
    srai   x16, x1, 10
    mulhu  x14, x1, x17
    rem    x26, x6, x17
    divu   x1, x5, x16
    mulh   x12, x22, x14
    srai   x5, x23, 14
    or     x10, x1, x8
    slli   x18, x7, 3
    sb     x20, 590(x2)
    mul    x25, x25, x19
    mulhu  x5, x27, x5
    remu   x31, x1, x20
    divu   x19, x31, x30
    sll    x21, x31, x28
    andi   x3, x22, -1475
    ori    x4, x11, -832
    xor    x8, x28, x30
    jal    x24, L0
    mul    x11, x23, x16
L0:
    add    x15, x8, x16
    divu   x8, x31, x31
    slt    x24, x22, x13
    divu   x30, x8, x24
    sll    x11, x6, x25
    slt    x12, x9, x28
    lhu    x29, 410(x2)
    mulhsu x8, x13, x27
    lh     x17, 308(x2)
    mulhu  x12, x14, x24
    sb     x11, 151(x2)
    div    x19, x17, x5
    slli   x25, x10, 2
    div    x19, x30, x30
    lh     x23, 586(x2)
    andi   x16, x23, 1614
    slli   x31, x9, 12
    sh     x18, 480(x2)
    mulhsu x21, x12, x31
    slti   x26, x3, 224
    mulhu  x21, x9, x9
    remu   x21, x16, x4
    sw     x28, 252(x2)
    bltu   x23, x5, L1
    remu   x22, x9, x22
    srl    x4, x15, x7
L1:
    ori    x18, x16, 716
    mul    x6, x26, x7
    auipc  x7, 0
    jalr   x28, x7, 12
    mulhsu x17, x28, x24
L2:
    sh     x15, 124(x2)
    sh     x1, 40(x2)
    xori   x24, x6, 1852
    mul    x25, x29, x19
    slt    x15, x27, x18
    bne    x29, x31, L3
    divu   x27, x11, x21
    or     x7, x5, x1
L3:
    sh     x10, 784(x2)
    divu   x22, x10, x26
    rem    x24, x9, x3
    lui    x8, 0xee057
    mul    x11, x29, x11
    auipc  x6, 0
    jalr   x15, x6, 12
    mul    x7, x27, x16
L4:
    srl    x27, x6, x26
    and    x7, x1, x1
    rem    x13, x8, x16
    sw     x21, 352(x2)
    addi   x20, x6, -262
    addi   x14, x30, 1986
    sltu   x14, x29, x4
    xori   x6, x24, 1389
    sh     x27, 546(x2)
    sw     x25, 852(x2)
    bne    x24, x14, L5
    rem    x14, x10, x22
    sll    x31, x1, x28
L5:
    div    x17, x23, x22
    srai   x6, x18, 3
    srli   x14, x12, 4
    lui    x23, 0x4c033
    bge    x12, x9, L6
    mulhsu x17, x30, x31
    rem    x6, x13, x14
    sub    x3, x17, x15
L6:
    bgeu   x11, x10, L7
    divu   x28, x23, x22
L7:
    mulhu  x24, x18, x3
    xor    x12, x19, x24
    sw     x11, 316(x2)
    slti   x11, x12, 480
    sw     x4, 428(x2)
    or     x24, x6, x22
    and    x14, x26, x27
    lbu    x29, 539(x2)
    sltiu  x18, x5, -19
    divu   x11, x13, x4
    add    x8, x22, x27
    or     x9, x15, x25
    sltiu  x3, x29, 1115
    beq    x1, x15, L8
    add    x3, x5, x20
    add    x15, x27, x22
    and    x29, x19, x21
L8:
    and    x17, x29, x1
    lbu    x17, 785(x2)
    srl    x9, x11, x24
    remu   x24, x30, x15
    sll    x10, x25, x13
    remu   x18, x8, x13
    xor    x20, x7, x27
    rem    x11, x6, x8
    mulh   x7, x4, x29
    sw     x17, 28(x2)
    div    x31, x17, x31
    rem    x27, x14, x14
    lhu    x23, 788(x2)
    remu   x5, x18, x27
    sb     x16, 50(x2)
    sh     x11, 910(x2)
    srl    x27, x18, x6
    sh     x27, 98(x2)
    bgeu   x22, x25, L9
    sltu   x24, x13, x7
L9:
    sw     x29, 156(x2)
    slli   x21, x8, 7
    lhu    x15, 362(x2)
    remu   x15, x4, x16
    bltu   x17, x25, L10
    rem    x27, x11, x5
L10:
    or     x25, x4, x3
    mulh   x3, x8, x18
    auipc  x27, 0x345f
    mulh   x25, x24, x22
    mulhsu x18, x5, x7
    mulh   x13, x23, x28
    srai   x19, x8, 3
    remu   x24, x3, x25
    mulh   x7, x25, x21
    lb     x5, 181(x2)
    ori    x28, x3, -224
    sw     x6, 712(x2)
    lhu    x16, 214(x2)
    bge    x1, x25, L11
    or     x31, x12, x12
    mulhsu x14, x15, x25
L11:
    rem    x29, x31, x10
    and    x17, x25, x5
    jal    x16, L12
    mulh   x27, x14, x8
L12:
    lb     x14, 6(x2)
    sb     x13, 752(x2)
    sb     x29, 749(x2)
    bne    x14, x7, L13
    and    x18, x23, x26
L13:
    jal    x25, L14
    mulhsu x17, x13, x13
L14:
    or     x3, x28, x26
    addi   x20, x4, 415
    or     x13, x1, x24
    xor    x27, x4, x5
    andi   x24, x3, 972
    sltu   x15, x10, x20
    lh     x4, 302(x2)
    lhu    x18, 150(x2)
    lb     x26, 352(x2)
    sltu   x3, x12, x16
    mulhu  x9, x24, x31
    sh     x17, 510(x2)
    blt    x5, x3, L15
    mulh   x4, x10, x22
    and    x28, x12, x23
L15:
    srli   x4, x12, 28
    beq    x18, x10, L16
    and    x7, x15, x11
    add    x11, x26, x15
    mulhsu x27, x12, x12
L16:
    ori    x22, x12, -14
    divu   x31, x3, x1
    slt    x4, x9, x21
    div    x7, x1, x6
    mulhu  x10, x5, x11
    bge    x10, x7, L17
    remu   x22, x9, x31
    sltu   x23, x12, x10
L17:
    lh     x5, 258(x2)
    mulhsu x22, x1, x11
    auipc  x6, 0
    jalr   x27, x6, 12
    div    x4, x15, x17
L18:
    mul    x17, x22, x19
    jal    x28, L19
    div    x15, x1, x29
L19:
    divu   x29, x28, x8
    slt    x21, x23, x31
    add    x24, x26, x12
    addi   x19, x21, 621
    srl    x4, x4, x9
    rem    x4, x27, x5
    auipc  x18, 0
    jalr   x1, x18, 12
    mulhu  x20, x20, x30
L20:
    lw     x23, 172(x2)
    mulh   x26, x19, x11
    mul    x16, x3, x15
    mulh   x16, x28, x28
    mulhu  x17, x15, x1
    bne    x7, x11, L21
    sll    x23, x25, x13
L21:
    div    x3, x26, x4
    div    x9, x13, x14
    bltu   x7, x26, L22
    and    x22, x21, x24
    and    x28, x17, x27
    sub    x13, x30, x17
L22:
    remu   x11, x20, x6
    divu   x6, x20, x12
    sll    x27, x15, x29
    mulh   x12, x13, x25
    sub    x9, x9, x9
    xori   x15, x24, 1446
    sltiu  x25, x1, 1189
    remu   x16, x21, x18
    div    x8, x14, x9
    xori   x1, x28, 2046
    lw     x5, 28(x2)
    sub    x22, x29, x17
    rem    x27, x20, x11
    jal    x1, L23
    mul    x24, x29, x5
L23:
    add    x8, x30, x24
    ori    x10, x23, 238
    sll    x12, x25, x13
    sb     x24, 820(x2)
    bne    x19, x15, L24
    sll    x7, x8, x25
    mulhu  x18, x6, x24
    mulhu  x6, x18, x16
L24:
    mul    x16, x1, x5
    jal    x22, L25
    mulhsu x20, x25, x12
L25:
    mulhsu x19, x3, x18
    addi   x3, x10, 1853
    jal    x31, L26
    remu   x18, x11, x24
L26:
    addi   x6, x17, 1363
    div    x1, x20, x17
    mulhsu x30, x12, x7
    lbu    x12, 112(x2)
    slli   x29, x7, 7
    rem    x31, x30, x24
    remu   x22, x26, x10
    remu   x11, x29, x12
    bgeu   x22, x16, L27
    sll    x10, x12, x16
    mulh   x26, x8, x23
L27:
    sll    x21, x20, x28
    jal    x22, L28
    divu   x1, x29, x24
L28:
    lhu    x8, 10(x2)
    beq    x7, x14, L29
    and    x31, x13, x11
    div    x24, x27, x1
L29:
    sh     x17, 602(x2)
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
