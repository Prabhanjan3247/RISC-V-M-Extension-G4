    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0x6abded17
    li    x3, 0x7fffffff
    li    x4, 0xfffffffd
    li    x5, 0xea915935
    li    x6, 0x80000000
    li    x7, 0xc4eb0d3a
    li    x8, 0x11ffce41
    li    x9, 0x55555555
    li    x10, 0x1
    li    x11, 0x780e7c93
    li    x12, 0xaaaaaaaa
    li    x13, 0xffffffff
    li    x14, 0xa4608bcb
    li    x15, 0x715b9356
    li    x16, 0xf014a494
    li    x17, 0x3
    li    x18, 0xffffffff
    li    x19, 0x277e306b
    li    x20, 0xed07392d
    li    x21, 0xffff0000
    li    x22, 0x703fc7e6
    li    x23, 0x2
    li    x24, 0x2
    li    x25, 0x1
    li    x26, 0xab8c2b07
    li    x27, 0xd2cda1b0
    li    x28, 0x0
    li    x29, 0x3
    li    x30, 0x53a1b1ed
    li    x31, 0xc32bc235
    bne    x22, x28, L0
    and    x27, x3, x15
    and    x24, x16, x12
L0:
    mulhsu x7, x3, x3
    bne    x29, x3, L1
    sll    x30, x12, x1
    sub    x19, x16, x21
    or     x28, x5, x10
L1:
    xori   x14, x16, -901
    div    x12, x31, x12
    blt    x21, x25, L2
    rem    x9, x11, x19
    mulhu  x16, x20, x24
L2:
    bgeu   x13, x12, L3
    mulhu  x9, x22, x1
L3:
    divu   x18, x22, x13
    auipc  x4, 0
    jalr   x19, x4, 12
    mulhsu x12, x24, x22
L4:
    lbu    x30, 375(x2)
    div    x22, x5, x24
    blt    x5, x6, L5
    and    x28, x18, x29
L5:
    rem    x31, x20, x8
    slli   x26, x27, 13
    mul    x1, x30, x27
    lh     x21, 740(x2)
    bne    x7, x1, L6
    mulhsu x17, x19, x26
    mul    x15, x9, x31
    divu   x26, x9, x20
L6:
    addi   x31, x8, -1739
    mulhu  x24, x14, x26
    div    x15, x13, x18
    sh     x6, 200(x2)
    srai   x11, x29, 12
    rem    x7, x23, x30
    bgeu   x1, x15, L7
    mul    x17, x21, x13
L7:
    lw     x7, 224(x2)
    bge    x18, x1, L8
    xor    x7, x11, x24
L8:
    lw     x3, 744(x2)
    mul    x3, x27, x7
    div    x19, x7, x5
    lbu    x11, 325(x2)
    sltu   x14, x26, x14
    lbu    x13, 450(x2)
    sb     x27, 418(x2)
    mul    x7, x10, x23
    rem    x26, x1, x15
    sb     x13, 528(x2)
    mulh   x9, x6, x27
    mulhu  x16, x19, x24
    lbu    x22, 741(x2)
    sltiu  x15, x23, -1683
    div    x22, x20, x16
    ori    x18, x26, -893
    mul    x3, x6, x31
    mulhu  x28, x15, x3
    slt    x10, x10, x5
    mulhsu x23, x10, x1
    slt    x22, x8, x5
    sw     x31, 864(x2)
    and    x30, x7, x20
    andi   x25, x22, -724
    divu   x22, x15, x23
    sltiu  x7, x13, -179
    rem    x11, x5, x23
    ori    x6, x21, -1735
    andi   x24, x9, -785
    jal    x27, L9
    mulh   x17, x21, x4
L9:
    sw     x30, 304(x2)
    auipc  x6, 0
    jalr   x29, x6, 12
    mulhu  x6, x30, x16
L10:
    mulh   x4, x10, x17
    lw     x29, 536(x2)
    sra    x5, x8, x12
    mulhu  x12, x28, x16
    mul    x4, x16, x19
    sh     x26, 604(x2)
    sra    x30, x4, x21
    xor    x22, x10, x17
    or     x21, x23, x22
    mulhsu x8, x21, x6
    divu   x22, x14, x22
    slli   x12, x30, 20
    mulhsu x18, x1, x30
    auipc  x10, 0
    jalr   x5, x10, 12
    rem    x7, x9, x7
L11:
    sw     x23, 480(x2)
    bge    x12, x5, L12
    mulh   x25, x23, x20
L12:
    lbu    x1, 229(x2)
    andi   x28, x7, -661
    bltu   x31, x13, L13
    mulhu  x10, x15, x28
    slt    x15, x4, x13
L13:
    mul    x4, x10, x14
    ori    x8, x31, 2045
    ori    x17, x3, 734
    add    x21, x31, x3
    addi   x11, x12, 905
    remu   x30, x27, x10
    remu   x16, x27, x25
    bne    x19, x8, L14
    mulhsu x3, x15, x18
    srl    x1, x20, x26
L14:
    slti   x9, x6, -1073
    or     x3, x20, x15
    srli   x23, x11, 1
    remu   x30, x19, x21
    beq    x19, x28, L15
    sra    x12, x21, x30
    remu   x24, x23, x27
    div    x4, x25, x27
L15:
    lbu    x30, 642(x2)
    sra    x16, x24, x29
    addi   x3, x31, 893
    mul    x18, x22, x28
    sh     x21, 4(x2)
    blt    x24, x31, L16
    xor    x23, x18, x6
    sra    x23, x16, x1
L16:
    div    x25, x3, x24
    lw     x22, 668(x2)
    sub    x4, x17, x27
    blt    x5, x27, L17
    remu   x10, x8, x14
    rem    x18, x24, x13
L17:
    lui    x22, 0x271d4
    sra    x7, x27, x12
    auipc  x18, 0
    jalr   x27, x18, 12
    mulhu  x28, x4, x17
L18:
    mulhu  x12, x19, x20
    bne    x26, x4, L19
    sra    x20, x8, x15
    mulhsu x5, x4, x3
L19:
    rem    x26, x11, x27
    sh     x14, 286(x2)
    auipc  x21, 0
    jalr   x5, x21, 12
    divu   x1, x23, x30
L20:
    beq    x19, x17, L21
    sub    x8, x12, x22
    mulhsu x10, x15, x17
    sub    x18, x24, x1
L21:
    slli   x1, x24, 15
    div    x14, x28, x24
    sw     x15, 720(x2)
    mulh   x11, x29, x29
    srli   x5, x18, 28
    lb     x27, 7(x2)
    mulh   x18, x27, x8
    slti   x30, x8, -111
    remu   x5, x26, x14
    remu   x20, x8, x17
    sll    x21, x16, x21
    bltu   x12, x10, L22
    mul    x15, x6, x30
    sll    x31, x11, x22
    add    x18, x27, x15
L22:
    bgeu   x26, x29, L23
    mul    x22, x29, x21
L23:
    mulhu  x22, x30, x30
    slli   x9, x22, 31
    slli   x11, x19, 1
    sh     x21, 940(x2)
    mulhsu x1, x23, x10
    rem    x9, x25, x25
    mul    x19, x17, x14
    ori    x12, x22, 564
    sh     x26, 406(x2)
    beq    x25, x24, L24
    sltu   x25, x5, x1
    rem    x25, x12, x11
L24:
    mulhu  x18, x6, x15
    rem    x21, x21, x28
    mulhsu x10, x9, x14
    divu   x17, x9, x7
    sll    x21, x16, x27
    sh     x9, 918(x2)
    and    x20, x28, x18
    lui    x11, 0xa2c50
    lhu    x24, 440(x2)
    rem    x30, x1, x27
    divu   x22, x1, x28
    andi   x20, x10, 1220
    div    x14, x28, x27
    addi   x10, x6, 365
    srl    x8, x1, x4
    mulh   x29, x16, x6
    srli   x21, x30, 9
    srl    x21, x24, x14
    sw     x20, 888(x2)
    auipc  x26, 0
    jalr   x26, x26, 12
    mulh   x12, x5, x12
L25:
    divu   x22, x27, x18
    blt    x25, x21, L26
    mulh   x1, x15, x10
    mul    x27, x21, x18
    srl    x18, x12, x3
L26:
    srai   x31, x9, 15
    mulhu  x18, x12, x30
    auipc  x5, 0x61dec
    mulhsu x31, x22, x5
    jal    x30, L27
    remu   x30, x20, x10
L27:
    sb     x16, 158(x2)
    or     x31, x25, x3
    bgeu   x5, x1, L28
    remu   x27, x13, x27
L28:
    slt    x13, x27, x22
    mul    x29, x21, x20
    divu   x8, x16, x25
    mulhsu x26, x21, x4
    sb     x22, 629(x2)
    bne    x20, x1, L29
    mulhu  x18, x14, x22
    sltu   x25, x18, x16
    sra    x19, x9, x21
L29:
    sltu   x14, x18, x8
    lb     x5, 931(x2)
    div    x11, x27, x24
    mulhsu x17, x20, x21
    auipc  x25, 0xdce49
    sb     x19, 720(x2)
    bne    x27, x13, L30
    mul    x19, x1, x12
    rem    x15, x14, x6
    sltu   x26, x7, x16
L30:
    divu   x23, x17, x12
    rem    x25, x9, x28
    mulh   x4, x14, x30
    remu   x12, x12, x24
    rem    x6, x17, x25
    sb     x31, 175(x2)
    mul    x11, x5, x11
    slli   x30, x26, 2
    sh     x26, 718(x2)
    lw     x15, 332(x2)
    mulh   x28, x14, x7
    lh     x16, 308(x2)
    srl    x21, x4, x29
    sw     x12, 844(x2)
    ori    x16, x22, -611
    bltu   x17, x17, L31
    slt    x6, x16, x17
    sub    x4, x16, x13
    sra    x26, x10, x8
L31:
    slt    x18, x29, x7
    slli   x6, x3, 0
    auipc  x23, 0x57732
    mulhsu x19, x26, x31
    srli   x11, x9, 8
    sra    x4, x4, x31
    slt    x30, x3, x11
    mul    x24, x11, x8
    sw     x28, 328(x2)
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
