    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
    li    x10, 0x55555555
    li    x11, 0xfffffffe
    mul   x12, x10, x11
    sw    x12, 0(x2)
    mulh  x12, x10, x11
    sw    x12, 4(x2)
    mulhsu x12, x10, x11
    sw    x12, 8(x2)
    mulhu x12, x10, x11
    sw    x12, 12(x2)
    div   x12, x10, x11
    sw    x12, 16(x2)
    divu  x12, x10, x11
    sw    x12, 20(x2)
    rem   x12, x10, x11
    sw    x12, 24(x2)
    remu  x12, x10, x11
    sw    x12, 28(x2)
    li    x10, 0x55555555
    li    x11, 0x80000000
    mul   x12, x10, x11
    sw    x12, 32(x2)
    mulh  x12, x10, x11
    sw    x12, 36(x2)
    mulhsu x12, x10, x11
    sw    x12, 40(x2)
    mulhu x12, x10, x11
    sw    x12, 44(x2)
    div   x12, x10, x11
    sw    x12, 48(x2)
    divu  x12, x10, x11
    sw    x12, 52(x2)
    rem   x12, x10, x11
    sw    x12, 56(x2)
    remu  x12, x10, x11
    sw    x12, 60(x2)
    li    x10, 0x55555555
    li    x11, 0x7fffffff
    mul   x12, x10, x11
    sw    x12, 64(x2)
    mulh  x12, x10, x11
    sw    x12, 68(x2)
    mulhsu x12, x10, x11
    sw    x12, 72(x2)
    mulhu x12, x10, x11
    sw    x12, 76(x2)
    div   x12, x10, x11
    sw    x12, 80(x2)
    divu  x12, x10, x11
    sw    x12, 84(x2)
    rem   x12, x10, x11
    sw    x12, 88(x2)
    remu  x12, x10, x11
    sw    x12, 92(x2)
    li    x10, 0x55555555
    li    x11, 0x80000001
    mul   x12, x10, x11
    sw    x12, 96(x2)
    mulh  x12, x10, x11
    sw    x12, 100(x2)
    mulhsu x12, x10, x11
    sw    x12, 104(x2)
    mulhu x12, x10, x11
    sw    x12, 108(x2)
    div   x12, x10, x11
    sw    x12, 112(x2)
    divu  x12, x10, x11
    sw    x12, 116(x2)
    rem   x12, x10, x11
    sw    x12, 120(x2)
    remu  x12, x10, x11
    sw    x12, 124(x2)
    li    x10, 0x55555555
    li    x11, 0xffff
    mul   x12, x10, x11
    sw    x12, 128(x2)
    mulh  x12, x10, x11
    sw    x12, 132(x2)
    mulhsu x12, x10, x11
    sw    x12, 136(x2)
    mulhu x12, x10, x11
    sw    x12, 140(x2)
    div   x12, x10, x11
    sw    x12, 144(x2)
    divu  x12, x10, x11
    sw    x12, 148(x2)
    rem   x12, x10, x11
    sw    x12, 152(x2)
    remu  x12, x10, x11
    sw    x12, 156(x2)
    li    x10, 0x55555555
    li    x11, 0xffff0000
    mul   x12, x10, x11
    sw    x12, 160(x2)
    mulh  x12, x10, x11
    sw    x12, 164(x2)
    mulhsu x12, x10, x11
    sw    x12, 168(x2)
    mulhu x12, x10, x11
    sw    x12, 172(x2)
    div   x12, x10, x11
    sw    x12, 176(x2)
    divu  x12, x10, x11
    sw    x12, 180(x2)
    rem   x12, x10, x11
    sw    x12, 184(x2)
    remu  x12, x10, x11
    sw    x12, 188(x2)
    li    x10, 0x55555555
    li    x11, 0x55555555
    mul   x12, x10, x11
    sw    x12, 192(x2)
    mulh  x12, x10, x11
    sw    x12, 196(x2)
    mulhsu x12, x10, x11
    sw    x12, 200(x2)
    mulhu x12, x10, x11
    sw    x12, 204(x2)
    div   x12, x10, x11
    sw    x12, 208(x2)
    divu  x12, x10, x11
    sw    x12, 212(x2)
    rem   x12, x10, x11
    sw    x12, 216(x2)
    remu  x12, x10, x11
    sw    x12, 220(x2)
    li    x10, 0x55555555
    li    x11, 0xaaaaaaaa
    mul   x12, x10, x11
    sw    x12, 224(x2)
    mulh  x12, x10, x11
    sw    x12, 228(x2)
    mulhsu x12, x10, x11
    sw    x12, 232(x2)
    mulhu x12, x10, x11
    sw    x12, 236(x2)
    div   x12, x10, x11
    sw    x12, 240(x2)
    divu  x12, x10, x11
    sw    x12, 244(x2)
    rem   x12, x10, x11
    sw    x12, 248(x2)
    remu  x12, x10, x11
    sw    x12, 252(x2)
    li    x10, 0x55555555
    li    x11, 0x3
    mul   x12, x10, x11
    sw    x12, 256(x2)
    mulh  x12, x10, x11
    sw    x12, 260(x2)
    mulhsu x12, x10, x11
    sw    x12, 264(x2)
    mulhu x12, x10, x11
    sw    x12, 268(x2)
    div   x12, x10, x11
    sw    x12, 272(x2)
    divu  x12, x10, x11
    sw    x12, 276(x2)
    rem   x12, x10, x11
    sw    x12, 280(x2)
    remu  x12, x10, x11
    sw    x12, 284(x2)
    li    x10, 0x55555555
    li    x11, 0xfffffffd
    mul   x12, x10, x11
    sw    x12, 288(x2)
    mulh  x12, x10, x11
    sw    x12, 292(x2)
    mulhsu x12, x10, x11
    sw    x12, 296(x2)
    mulhu x12, x10, x11
    sw    x12, 300(x2)
    div   x12, x10, x11
    sw    x12, 304(x2)
    divu  x12, x10, x11
    sw    x12, 308(x2)
    rem   x12, x10, x11
    sw    x12, 312(x2)
    remu  x12, x10, x11
    sw    x12, 316(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0x0
    mul   x12, x10, x11
    sw    x12, 320(x2)
    mulh  x12, x10, x11
    sw    x12, 324(x2)
    mulhsu x12, x10, x11
    sw    x12, 328(x2)
    mulhu x12, x10, x11
    sw    x12, 332(x2)
    div   x12, x10, x11
    sw    x12, 336(x2)
    divu  x12, x10, x11
    sw    x12, 340(x2)
    rem   x12, x10, x11
    sw    x12, 344(x2)
    remu  x12, x10, x11
    sw    x12, 348(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0x1
    mul   x12, x10, x11
    sw    x12, 352(x2)
    mulh  x12, x10, x11
    sw    x12, 356(x2)
    mulhsu x12, x10, x11
    sw    x12, 360(x2)
    mulhu x12, x10, x11
    sw    x12, 364(x2)
    div   x12, x10, x11
    sw    x12, 368(x2)
    divu  x12, x10, x11
    sw    x12, 372(x2)
    rem   x12, x10, x11
    sw    x12, 376(x2)
    remu  x12, x10, x11
    sw    x12, 380(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0xffffffff
    mul   x12, x10, x11
    sw    x12, 384(x2)
    mulh  x12, x10, x11
    sw    x12, 388(x2)
    mulhsu x12, x10, x11
    sw    x12, 392(x2)
    mulhu x12, x10, x11
    sw    x12, 396(x2)
    div   x12, x10, x11
    sw    x12, 400(x2)
    divu  x12, x10, x11
    sw    x12, 404(x2)
    rem   x12, x10, x11
    sw    x12, 408(x2)
    remu  x12, x10, x11
    sw    x12, 412(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0x2
    mul   x12, x10, x11
    sw    x12, 416(x2)
    mulh  x12, x10, x11
    sw    x12, 420(x2)
    mulhsu x12, x10, x11
    sw    x12, 424(x2)
    mulhu x12, x10, x11
    sw    x12, 428(x2)
    div   x12, x10, x11
    sw    x12, 432(x2)
    divu  x12, x10, x11
    sw    x12, 436(x2)
    rem   x12, x10, x11
    sw    x12, 440(x2)
    remu  x12, x10, x11
    sw    x12, 444(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0xfffffffe
    mul   x12, x10, x11
    sw    x12, 448(x2)
    mulh  x12, x10, x11
    sw    x12, 452(x2)
    mulhsu x12, x10, x11
    sw    x12, 456(x2)
    mulhu x12, x10, x11
    sw    x12, 460(x2)
    div   x12, x10, x11
    sw    x12, 464(x2)
    divu  x12, x10, x11
    sw    x12, 468(x2)
    rem   x12, x10, x11
    sw    x12, 472(x2)
    remu  x12, x10, x11
    sw    x12, 476(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0x80000000
    mul   x12, x10, x11
    sw    x12, 480(x2)
    mulh  x12, x10, x11
    sw    x12, 484(x2)
    mulhsu x12, x10, x11
    sw    x12, 488(x2)
    mulhu x12, x10, x11
    sw    x12, 492(x2)
    div   x12, x10, x11
    sw    x12, 496(x2)
    divu  x12, x10, x11
    sw    x12, 500(x2)
    rem   x12, x10, x11
    sw    x12, 504(x2)
    remu  x12, x10, x11
    sw    x12, 508(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0x7fffffff
    mul   x12, x10, x11
    sw    x12, 512(x2)
    mulh  x12, x10, x11
    sw    x12, 516(x2)
    mulhsu x12, x10, x11
    sw    x12, 520(x2)
    mulhu x12, x10, x11
    sw    x12, 524(x2)
    div   x12, x10, x11
    sw    x12, 528(x2)
    divu  x12, x10, x11
    sw    x12, 532(x2)
    rem   x12, x10, x11
    sw    x12, 536(x2)
    remu  x12, x10, x11
    sw    x12, 540(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0x80000001
    mul   x12, x10, x11
    sw    x12, 544(x2)
    mulh  x12, x10, x11
    sw    x12, 548(x2)
    mulhsu x12, x10, x11
    sw    x12, 552(x2)
    mulhu x12, x10, x11
    sw    x12, 556(x2)
    div   x12, x10, x11
    sw    x12, 560(x2)
    divu  x12, x10, x11
    sw    x12, 564(x2)
    rem   x12, x10, x11
    sw    x12, 568(x2)
    remu  x12, x10, x11
    sw    x12, 572(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0xffff
    mul   x12, x10, x11
    sw    x12, 576(x2)
    mulh  x12, x10, x11
    sw    x12, 580(x2)
    mulhsu x12, x10, x11
    sw    x12, 584(x2)
    mulhu x12, x10, x11
    sw    x12, 588(x2)
    div   x12, x10, x11
    sw    x12, 592(x2)
    divu  x12, x10, x11
    sw    x12, 596(x2)
    rem   x12, x10, x11
    sw    x12, 600(x2)
    remu  x12, x10, x11
    sw    x12, 604(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0xffff0000
    mul   x12, x10, x11
    sw    x12, 608(x2)
    mulh  x12, x10, x11
    sw    x12, 612(x2)
    mulhsu x12, x10, x11
    sw    x12, 616(x2)
    mulhu x12, x10, x11
    sw    x12, 620(x2)
    div   x12, x10, x11
    sw    x12, 624(x2)
    divu  x12, x10, x11
    sw    x12, 628(x2)
    rem   x12, x10, x11
    sw    x12, 632(x2)
    remu  x12, x10, x11
    sw    x12, 636(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0x55555555
    mul   x12, x10, x11
    sw    x12, 640(x2)
    mulh  x12, x10, x11
    sw    x12, 644(x2)
    mulhsu x12, x10, x11
    sw    x12, 648(x2)
    mulhu x12, x10, x11
    sw    x12, 652(x2)
    div   x12, x10, x11
    sw    x12, 656(x2)
    divu  x12, x10, x11
    sw    x12, 660(x2)
    rem   x12, x10, x11
    sw    x12, 664(x2)
    remu  x12, x10, x11
    sw    x12, 668(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0xaaaaaaaa
    mul   x12, x10, x11
    sw    x12, 672(x2)
    mulh  x12, x10, x11
    sw    x12, 676(x2)
    mulhsu x12, x10, x11
    sw    x12, 680(x2)
    mulhu x12, x10, x11
    sw    x12, 684(x2)
    div   x12, x10, x11
    sw    x12, 688(x2)
    divu  x12, x10, x11
    sw    x12, 692(x2)
    rem   x12, x10, x11
    sw    x12, 696(x2)
    remu  x12, x10, x11
    sw    x12, 700(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0x3
    mul   x12, x10, x11
    sw    x12, 704(x2)
    mulh  x12, x10, x11
    sw    x12, 708(x2)
    mulhsu x12, x10, x11
    sw    x12, 712(x2)
    mulhu x12, x10, x11
    sw    x12, 716(x2)
    div   x12, x10, x11
    sw    x12, 720(x2)
    divu  x12, x10, x11
    sw    x12, 724(x2)
    rem   x12, x10, x11
    sw    x12, 728(x2)
    remu  x12, x10, x11
    sw    x12, 732(x2)
    li    x10, 0xaaaaaaaa
    li    x11, 0xfffffffd
    mul   x12, x10, x11
    sw    x12, 736(x2)
    mulh  x12, x10, x11
    sw    x12, 740(x2)
    mulhsu x12, x10, x11
    sw    x12, 744(x2)
    mulhu x12, x10, x11
    sw    x12, 748(x2)
    div   x12, x10, x11
    sw    x12, 752(x2)
    divu  x12, x10, x11
    sw    x12, 756(x2)
    rem   x12, x10, x11
    sw    x12, 760(x2)
    remu  x12, x10, x11
    sw    x12, 764(x2)
end:
    jal   x0, end              # self-loop: end of test
