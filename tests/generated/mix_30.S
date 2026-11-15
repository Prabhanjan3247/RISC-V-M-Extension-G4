    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xb49eb33d
    li    x3, 0x55555555
    li    x4, 0x8ceeb91c
    li    x5, 0x1
    li    x6, 0x80000001
    li    x7, 0xffff0000
    li    x8, 0xffff
    li    x9, 0xffff0000
    li    x10, 0xaaaaaaaa
    li    x11, 0xeed122f2
    li    x12, 0xf7d2a83c
    li    x13, 0x0
    li    x14, 0x7aea9fcc
    li    x15, 0xe3fbeeea
    li    x16, 0x452bb909
    li    x17, 0xc9bc4603
    li    x18, 0xe5a0387
    li    x19, 0x3ac93fa5
    li    x20, 0x55555555
    li    x21, 0xd44a4e19
    li    x22, 0x0
    li    x23, 0x9a28282d
    li    x24, 0x213a68b1
    li    x25, 0x3a5053a2
    li    x26, 0xe6b7a77d
    li    x27, 0x4fcfb5fb
    li    x28, 0xffff
    li    x29, 0xa6896770
    li    x30, 0x35a78b7a
    li    x31, 0x80000001
    remu   x20, x30, x17
    auipc  x25, 0x29746
    div    x13, x28, x1
    jal    x24, L0
    remu   x26, x4, x10
L0:
    mulhsu x15, x24, x30
    bge    x24, x1, L1
    remu   x10, x20, x6
L1:
    bgeu   x9, x9, L2
    or     x8, x13, x15
    or     x12, x29, x15
L2:
    mulhu  x7, x15, x7
    slt    x9, x22, x12
    sw     x19, 652(x2)
    divu   x4, x27, x12
    sb     x30, 384(x2)
    div    x19, x13, x8
    xor    x28, x24, x1
    sltiu  x8, x12, -1331
    srl    x14, x19, x8
    divu   x29, x5, x18
    sb     x12, 660(x2)
    mulh   x21, x5, x13
    and    x12, x8, x28
    andi   x27, x3, 594
    srl    x22, x5, x23
    lbu    x5, 726(x2)
    sltu   x18, x25, x26
    remu   x27, x1, x11
    mulh   x18, x3, x19
    jal    x31, L3
    mulhu  x1, x10, x14
L3:
    sb     x30, 891(x2)
    blt    x16, x17, L4
    sub    x5, x9, x24
    mulhu  x26, x24, x28
L4:
    beq    x10, x10, L5
    mul    x13, x26, x24
    remu   x30, x31, x17
L5:
    bge    x19, x23, L6
    slt    x8, x20, x12
    sll    x11, x3, x23
    mulh   x10, x9, x1
L6:
    mulh   x31, x26, x19
    bge    x30, x16, L7
    sra    x24, x27, x8
    sub    x22, x13, x4
    sll    x5, x31, x29
L7:
    blt    x22, x22, L8
    mul    x22, x30, x22
    slt    x17, x1, x28
L8:
    bltu   x14, x9, L9
    divu   x15, x5, x20
L9:
    lb     x23, 284(x2)
    beq    x23, x10, L10
    sub    x11, x25, x26
    mul    x10, x30, x14
    sltu   x8, x5, x26
L10:
    sh     x24, 700(x2)
    and    x22, x20, x9
    srai   x13, x22, 3
    lb     x3, 522(x2)
    andi   x29, x12, 265
    jal    x13, L11
    mulh   x11, x9, x28
L11:
    mulhsu x14, x19, x30
    lb     x31, 991(x2)
    srli   x24, x1, 0
    add    x10, x18, x4
    auipc  x16, 0
    jalr   x10, x16, 12
    divu   x24, x22, x18
L12:
    mul    x14, x18, x30
    lw     x22, 692(x2)
    mulh   x8, x28, x28
    xori   x17, x29, 792
    lb     x26, 820(x2)
    divu   x26, x10, x18
    sh     x27, 112(x2)
    sb     x22, 647(x2)
    srai   x29, x26, 3
    lb     x13, 597(x2)
    or     x27, x30, x20
    sh     x11, 280(x2)
    xori   x6, x4, -1834
    lbu    x13, 706(x2)
    lui    x5, 0xbaac7
    mulhsu x28, x28, x5
    lui    x10, 0x89db9
    addi   x9, x20, -555
    divu   x31, x9, x7
    mulhu  x15, x3, x22
    divu   x8, x31, x3
    mulhsu x18, x12, x19
    divu   x19, x22, x28
    divu   x6, x25, x22
    add    x31, x17, x6
    mul    x17, x16, x3
    lh     x5, 668(x2)
    slli   x21, x31, 5
    bge    x26, x22, L13
    xor    x11, x12, x9
    divu   x25, x21, x28
L13:
    mulh   x30, x26, x6
    lb     x19, 740(x2)
    srli   x12, x4, 17
    andi   x24, x4, -16
    slt    x10, x1, x17
    mulh   x25, x28, x1
    mulhsu x29, x7, x5
    lui    x17, 0x7a109
    or     x28, x31, x14
    and    x30, x1, x31
    sh     x27, 514(x2)
    sw     x17, 280(x2)
    divu   x19, x29, x15
    sh     x6, 112(x2)
    remu   x19, x12, x7
    auipc  x6, 0
    jalr   x10, x6, 12
    divu   x5, x5, x26
L14:
    srl    x26, x22, x27
    srl    x3, x25, x16
    lhu    x10, 142(x2)
    mulh   x14, x23, x27
    rem    x29, x10, x28
    bne    x26, x8, L15
    or     x11, x25, x22
    srl    x24, x4, x10
    or     x31, x15, x17
L15:
    remu   x29, x26, x31
    lh     x8, 178(x2)
    xor    x27, x25, x7
    mul    x14, x26, x11
    divu   x10, x31, x3
    bgeu   x27, x31, L16
    remu   x16, x31, x9
L16:
    beq    x5, x6, L17
    or     x21, x24, x12
    divu   x7, x31, x26
L17:
    or     x27, x10, x30
    auipc  x17, 0xde948
    rem    x27, x13, x3
    mulh   x11, x26, x7
    jal    x20, L18
    remu   x23, x31, x1
L18:
    rem    x22, x20, x17
    mulh   x8, x26, x5
    remu   x9, x5, x9
    remu   x28, x12, x9
    lui    x11, 0xf13a0
    lui    x18, 0x9ac2b
    mulhu  x9, x15, x17
    sh     x16, 784(x2)
    lw     x23, 768(x2)
    ori    x9, x28, -751
    sw     x25, 884(x2)
    divu   x13, x15, x30
    mul    x12, x15, x22
    sh     x8, 758(x2)
    srli   x15, x26, 23
    bltu   x24, x27, L19
    and    x30, x20, x3
L19:
    jal    x8, L20
    mulhu  x21, x24, x29
L20:
    srl    x14, x5, x25
    mul    x6, x10, x16
    lbu    x15, 965(x2)
    remu   x30, x19, x5
    sh     x21, 374(x2)
    add    x13, x8, x24
    blt    x7, x14, L21
    srl    x1, x9, x3
    sll    x1, x8, x8
L21:
    mul    x23, x24, x16
    div    x17, x18, x28
    sw     x22, 752(x2)
    beq    x9, x11, L22
    slt    x24, x9, x7
    mulhsu x24, x5, x10
    add    x21, x3, x29
L22:
    sltiu  x11, x15, 1134
    add    x24, x16, x9
    auipc  x17, 0x4f80
    or     x5, x4, x7
    bltu   x1, x29, L23
    add    x29, x14, x31
    mulhsu x19, x11, x18
L23:
    xori   x29, x25, 778
    sltu   x29, x28, x12
    bge    x17, x14, L24
    mulhsu x1, x12, x4
    sll    x29, x15, x19
L24:
    slli   x20, x7, 14
    slt    x7, x21, x8
    sll    x17, x20, x24
    div    x4, x14, x26
    lh     x8, 24(x2)
    mulhsu x21, x21, x10
    auipc  x13, 0
    jalr   x29, x13, 12
    mulh   x10, x5, x23
L25:
    srl    x8, x22, x5
    srai   x26, x18, 15
    slt    x30, x7, x15
    rem    x21, x15, x6
    rem    x27, x19, x12
    sb     x8, 279(x2)
    divu   x16, x24, x29
    divu   x4, x13, x19
    andi   x12, x30, -298
    sh     x21, 440(x2)
    mulh   x27, x25, x22
    jal    x14, L26
    remu   x24, x9, x24
L26:
    slli   x3, x30, 24
    srai   x31, x17, 9
    blt    x1, x9, L27
    divu   x1, x22, x4
    xor    x5, x5, x8
    sltu   x16, x8, x7
L27:
    bge    x4, x3, L28
    mulhsu x9, x1, x16
    slt    x25, x29, x20
L28:
    mulhsu x4, x15, x17
    slti   x10, x5, -515
    xori   x3, x8, 1702
    xor    x6, x27, x3
    slti   x17, x26, -1454
    sw     x30, 48(x2)
    lb     x12, 690(x2)
    mulhu  x31, x7, x7
    slt    x31, x16, x1
    divu   x23, x31, x23
    bgeu   x30, x15, L29
    rem    x25, x9, x25
L29:
    mulhu  x5, x11, x21
    bge    x19, x23, L30
    mulh   x23, x24, x12
L30:
    lh     x25, 314(x2)
    lui    x19, 0xebd1
    xor    x29, x10, x22
    mulh   x29, x13, x23
    sh     x18, 492(x2)
    div    x6, x10, x15
    sltiu  x29, x9, -38
    lhu    x30, 52(x2)
    sb     x5, 1006(x2)
    divu   x18, x9, x28
    divu   x22, x9, x24
    beq    x30, x9, L31
    mulh   x13, x27, x19
L31:
    lbu    x26, 33(x2)
    rem    x13, x29, x19
    sltiu  x8, x31, -1237
    divu   x8, x25, x18
    xor    x10, x26, x18
    lhu    x6, 706(x2)
    auipc  x14, 0x9d65c
    lw     x27, 660(x2)
    andi   x10, x20, 1234
    lw     x9, 200(x2)
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
