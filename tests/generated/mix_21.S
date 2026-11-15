    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x1, 0xb3999612
    li    x3, 0xd493a728
    li    x4, 0x3
    li    x5, 0x2ca04b90
    li    x6, 0x1ab15ea6
    li    x7, 0xe6d0b471
    li    x8, 0x80000000
    li    x9, 0xffff
    li    x10, 0x93f6065f
    li    x11, 0x9667d1d8
    li    x12, 0x223a6e60
    li    x13, 0x807a1304
    li    x14, 0x59c6b9ad
    li    x15, 0x1
    li    x16, 0xb3234162
    li    x17, 0x0
    li    x18, 0x4828d940
    li    x19, 0x63d9393
    li    x20, 0x1
    li    x21, 0x8487365e
    li    x22, 0x3b7ce7c6
    li    x23, 0x366cb2f8
    li    x24, 0xfffffffd
    li    x25, 0x302a717
    li    x26, 0x91e70f50
    li    x27, 0xaaaaaaaa
    li    x28, 0x2
    li    x29, 0xffffffff
    li    x30, 0xa92f9495
    li    x31, 0x8ad570c0
    remu   x30, x12, x3
    auipc  x10, 0
    jalr   x7, x10, 12
    remu   x7, x7, x1
L0:
    and    x21, x31, x4
    remu   x28, x5, x10
    slt    x22, x24, x28
    divu   x1, x13, x16
    sb     x30, 975(x2)
    slti   x14, x16, 762
    rem    x23, x18, x31
    mul    x31, x3, x7
    addi   x29, x22, -1170
    mulhsu x26, x27, x18
    auipc  x9, 0xfed52
    mulhsu x25, x14, x19
    sw     x26, 320(x2)
    jal    x23, L1
    divu   x8, x22, x28
L1:
    div    x1, x9, x13
    slt    x25, x23, x17
    addi   x24, x30, 1561
    auipc  x26, 0
    jalr   x4, x26, 12
    mulh   x18, x24, x21
L2:
    remu   x19, x7, x20
    jal    x16, L3
    mulhsu x24, x3, x15
L3:
    lh     x5, 34(x2)
    mulh   x15, x20, x29
    sb     x9, 581(x2)
    sub    x30, x15, x17
    div    x14, x12, x12
    auipc  x10, 0
    jalr   x30, x10, 12
    mulh   x31, x11, x16
L4:
    srai   x26, x1, 14
    sub    x27, x11, x18
    div    x30, x26, x23
    srli   x15, x27, 1
    div    x3, x20, x10
    lw     x17, 892(x2)
    lbu    x5, 865(x2)
    bgeu   x13, x22, L5
    remu   x26, x28, x24
    or     x4, x21, x23
L5:
    srli   x22, x28, 13
    bne    x1, x31, L6
    slt    x3, x9, x14
    sltu   x7, x5, x13
    sra    x9, x3, x5
L6:
    sh     x8, 680(x2)
    sltu   x7, x24, x6
    srli   x12, x13, 8
    mul    x25, x11, x21
    sb     x22, 871(x2)
    mulhu  x1, x19, x30
    lw     x11, 152(x2)
    addi   x5, x13, -2048
    xori   x7, x18, -450
    sh     x1, 986(x2)
    lb     x26, 418(x2)
    mulh   x12, x13, x14
    slli   x18, x30, 8
    sw     x23, 64(x2)
    lui    x27, 0xd4b57
    sw     x12, 868(x2)
    divu   x7, x24, x26
    beq    x25, x23, L7
    mul    x29, x28, x28
    rem    x25, x21, x14
L7:
    slt    x11, x23, x1
    lh     x26, 404(x2)
    auipc  x11, 0
    jalr   x10, x11, 12
    remu   x30, x31, x27
L8:
    slti   x16, x12, -372
    sra    x26, x19, x20
    slti   x17, x16, -1766
    sltu   x29, x23, x12
    srl    x7, x4, x1
    sltiu  x21, x25, 605
    divu   x12, x14, x27
    bltu   x19, x5, L9
    xor    x21, x7, x31
    sub    x17, x22, x28
L9:
    xor    x3, x19, x16
    slti   x23, x8, 895
    lbu    x3, 443(x2)
    add    x30, x15, x15
    blt    x3, x26, L10
    mulhsu x13, x26, x8
    rem    x29, x1, x12
    or     x3, x5, x7
L10:
    slt    x25, x25, x11
    lbu    x16, 996(x2)
    bge    x30, x18, L11
    rem    x20, x28, x9
L11:
    slli   x22, x19, 12
    remu   x24, x30, x17
    sub    x31, x9, x3
    sb     x28, 409(x2)
    rem    x4, x7, x25
    jal    x18, L12
    mulhsu x18, x17, x1
L12:
    bgeu   x25, x8, L13
    remu   x3, x8, x24
L13:
    slli   x15, x20, 26
    lb     x5, 27(x2)
    sltiu  x11, x16, 1699
    sub    x30, x8, x6
    sra    x17, x5, x26
    lbu    x19, 80(x2)
    sb     x18, 801(x2)
    ori    x3, x13, -2036
    sw     x28, 736(x2)
    mulh   x22, x7, x18
    bgeu   x1, x21, L14
    sll    x25, x24, x11
    sra    x7, x22, x15
L14:
    mulhsu x22, x29, x1
    slti   x31, x5, 237
    beq    x4, x29, L15
    mulhsu x17, x19, x9
L15:
    sh     x14, 88(x2)
    jal    x26, L16
    div    x31, x19, x3
L16:
    srli   x4, x24, 9
    xor    x23, x23, x19
    slt    x8, x27, x4
    mulhu  x30, x27, x8
    slti   x16, x13, 1109
    mulhu  x23, x27, x28
    mulh   x28, x6, x24
    mulhu  x13, x7, x17
    auipc  x30, 0xf0539
    xor    x11, x7, x9
    auipc  x8, 0
    jalr   x18, x8, 12
    div    x24, x21, x4
L17:
    mul    x10, x4, x6
    lw     x19, 344(x2)
    mulhsu x20, x5, x22
    mulhu  x21, x17, x12
    lbu    x28, 475(x2)
    lbu    x29, 733(x2)
    mul    x16, x14, x28
    divu   x30, x18, x27
    remu   x11, x7, x30
    remu   x1, x19, x12
    lhu    x8, 84(x2)
    mulhu  x22, x24, x10
    lh     x17, 980(x2)
    divu   x16, x6, x26
    mul    x3, x9, x30
    mulhsu x11, x17, x30
    xor    x27, x12, x30
    sb     x27, 94(x2)
    sltiu  x25, x16, 1125
    sub    x10, x15, x9
    mul    x28, x19, x5
    div    x28, x18, x30
    rem    x14, x16, x30
    remu   x3, x1, x30
    srli   x12, x24, 31
    blt    x7, x25, L18
    slt    x5, x11, x23
    mul    x6, x23, x5
    slt    x17, x31, x20
L18:
    beq    x10, x12, L19
    remu   x10, x17, x8
    add    x23, x16, x1
    mul    x4, x1, x20
L19:
    mulhsu x21, x19, x27
    sw     x4, 340(x2)
    blt    x10, x8, L20
    mul    x30, x16, x11
    sra    x29, x1, x13
    sra    x23, x18, x20
L20:
    div    x10, x3, x30
    divu   x10, x6, x8
    sb     x16, 85(x2)
    addi   x1, x6, 179
    sb     x21, 764(x2)
    remu   x31, x21, x28
    slti   x3, x27, 1027
    bne    x14, x14, L21
    sltu   x20, x28, x19
L21:
    divu   x6, x30, x27
    remu   x1, x17, x24
    bgeu   x14, x9, L22
    sll    x5, x15, x19
    add    x16, x3, x24
L22:
    mulhu  x14, x8, x30
    sltu   x7, x14, x20
    remu   x11, x23, x3
    and    x11, x12, x20
    addi   x8, x30, -824
    sltiu  x29, x5, -1061
    auipc  x20, 0
    jalr   x27, x20, 12
    mulhsu x5, x15, x16
L23:
    addi   x28, x23, 470
    mulhsu x8, x7, x19
    addi   x24, x11, 537
    remu   x15, x12, x1
    bgeu   x9, x13, L24
    and    x8, x23, x25
    xor    x4, x22, x9
    sll    x12, x31, x16
L24:
    lb     x15, 593(x2)
    lhu    x6, 362(x2)
    bgeu   x23, x12, L25
    div    x25, x10, x27
L25:
    mulhu  x12, x27, x15
    srai   x21, x18, 13
    lbu    x31, 737(x2)
    and    x11, x17, x8
    lh     x12, 718(x2)
    rem    x25, x4, x25
    sra    x5, x9, x19
    sra    x7, x23, x15
    remu   x9, x1, x28
    or     x28, x11, x17
    bne    x20, x3, L26
    and    x25, x25, x26
    sll    x19, x19, x16
L26:
    remu   x25, x30, x28
    bgeu   x28, x13, L27
    rem    x1, x24, x24
L27:
    mul    x25, x18, x10
    xori   x24, x16, -2021
    sub    x14, x19, x15
    bltu   x23, x10, L28
    or     x14, x4, x10
L28:
    lh     x19, 144(x2)
    rem    x18, x12, x16
    remu   x18, x9, x31
    bltu   x8, x26, L29
    add    x30, x3, x18
    or     x16, x23, x30
    srl    x6, x5, x14
L29:
    or     x10, x20, x3
    rem    x21, x19, x28
    bne    x9, x8, L30
    add    x18, x9, x30
    mulh   x12, x10, x3
L30:
    sltiu  x7, x1, -1179
    sb     x25, 390(x2)
    div    x21, x10, x8
    blt    x29, x7, L31
    div    x31, x20, x31
    mulh   x29, x30, x11
L31:
    divu   x15, x18, x9
    auipc  x7, 0
    jalr   x4, x7, 12
    div    x26, x20, x23
L32:
    sb     x17, 237(x2)
    sub    x18, x30, x19
    beq    x1, x3, L33
    div    x16, x31, x19
    mulhsu x21, x4, x6
L33:
    sw     x24, 20(x2)
    bge    x11, x7, L34
    sra    x16, x11, x5
    sll    x24, x6, x6
L34:
    srl    x6, x31, x5
    lb     x13, 58(x2)
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
