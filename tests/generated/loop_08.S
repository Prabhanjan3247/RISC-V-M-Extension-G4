    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x10, 0xff8b2a6a          # LCG state
    li    x13, 1103515245
    li    x14, 12345
    li    x15, 58           # iterations
    addi  x16, x2, 0      # store pointer
    li    x17, 0x3fc
loop:
    mul   x10, x10, x13
    add   x10, x10, x14
    srli  x11, x10, 7
    xor   x11, x11, x10
    slli  x12, x10, 11
    sub   x12, x12, x11
    srai  x18, x10, 31        # sometimes negative / zero divisors
    and   x18, x18, x11
    andi  x19, x10, 3
    bnez  x19, 1f
    li    x12, 0              # 1 in 4 iterations: divide by zero
1:
    div   x20, x11, x12
    sw    x20, 0(x16)
    addi  x16, x16, 4
    sub   x21, x16, x2
    and   x21, x21, x17
    add   x16, x2, x21
    remu  x20, x11, x12
    sw    x20, 0(x16)
    addi  x16, x16, 4
    sub   x21, x16, x2
    and   x21, x21, x17
    add   x16, x2, x21
    divu  x20, x11, x12
    sw    x20, 0(x16)
    addi  x16, x16, 4
    sub   x21, x16, x2
    and   x21, x21, x17
    add   x16, x2, x21
    rem   x20, x11, x12
    sw    x20, 0(x16)
    addi  x16, x16, 4
    sub   x21, x16, x2
    and   x21, x21, x17
    add   x16, x2, x21
    mulhu x20, x11, x12
    sw    x20, 0(x16)
    addi  x16, x16, 4
    sub   x21, x16, x2
    and   x21, x21, x17
    add   x16, x2, x21
    mulh  x20, x11, x12
    sw    x20, 0(x16)
    addi  x16, x16, 4
    sub   x21, x16, x2
    and   x21, x21, x17
    add   x16, x2, x21
    mulhsu x20, x11, x12
    sw    x20, 0(x16)
    addi  x16, x16, 4
    sub   x21, x16, x2
    and   x21, x21, x17
    add   x16, x2, x21
    mul   x20, x11, x12
    sw    x20, 0(x16)
    addi  x16, x16, 4
    sub   x21, x16, x2
    and   x21, x21, x17
    add   x16, x2, x21
    mulh  x22, x18, x12
    sw    x22, 0(x16)
    addi  x15, x15, -1
    bnez  x15, loop
    sw    x10, 1020(x2)
end:
    jal   x0, end              # self-loop: end of test
