"""
gen_tests.py - generate directed / random RV32IM test programs.

Three families, modelled on what the course CI runs:
  special_NN.S : every RV32M instruction on pairs of corner-case operands
                 (0, +-1, +-2, INT_MIN, INT_MAX, ...), each result stored.
  loop_NN.S    : a pseudo-random loop - an LCG (itself using MUL) feeds
                 MUL/MULH*/DIV*/REM* every iteration, results are stored,
                 backwards branch closes the loop.
  mix_NN.S     : dense random mix of RV32IM: ALU reg/imm, M ops, LUI/AUIPC,
                 loads/stores of all widths, forward branches and jumps.
                 All registers are dumped to memory at the end.

Every program fits the CI memory model: < 512 instruction words and data
addresses inside one 1 KiB window (base register x2 = 0x8000_1000).
Programs end with a `jal x0, 0` self-loop.
"""
from __future__ import annotations

import argparse
import random
from pathlib import Path

M_OPS = ["mul", "mulh", "mulhsu", "mulhu", "div", "divu", "rem", "remu"]
SPECIALS = [0x0, 0x1, 0xFFFFFFFF, 0x2, 0xFFFFFFFE, 0x80000000, 0x7FFFFFFF,
            0x80000001, 0x0000FFFF, 0xFFFF0000, 0x55555555, 0xAAAAAAAA, 0x3, 0xFFFFFFFD]
HEADER = """    .section .text.init
    .globl rvtest_entry_point
rvtest_entry_point:
    lui   x2, 0x80001          # data base (CI: only addr[9:2] is used)
"""
FOOTER = """end:
    jal   x0, end              # self-loop: end of test
"""
BASE_REG = "x2"


def special_programs(per_prog: int = 24) -> list[str]:
    pairs = [(a, b) for a in SPECIALS for b in SPECIALS]
    progs = []
    for start in range(0, len(pairs), per_prog):
        body, off = [], 0
        for a, b in pairs[start:start + per_prog]:
            body.append(f"    li    x10, {a:#x}\n    li    x11, {b:#x}")
            for op in M_OPS:
                body.append(f"    {op:<5} x12, x10, x11\n    sw    x12, {off}({BASE_REG})")
                off = (off + 4) % 1024
        progs.append(HEADER + "\n".join(body) + "\n" + FOOTER)
    return progs


def loop_program(rng: random.Random, iters: int) -> str:
    seed = rng.getrandbits(32)
    ops = rng.sample(M_OPS, len(M_OPS))
    body = [f"    li    x10, {seed:#x}          # LCG state",
            "    li    x13, 1103515245",
            "    li    x14, 12345",
            f"    li    x15, {iters}           # iterations",
            f"    addi  x16, {BASE_REG}, 0      # store pointer",
            "    li    x17, 0x3fc",
            "loop:",
            "    mul   x10, x10, x13",
            "    add   x10, x10, x14",
            "    srli  x11, x10, 7",
            "    xor   x11, x11, x10",
            "    slli  x12, x10, 11",
            "    sub   x12, x12, x11",
            "    srai  x18, x10, 31        # sometimes negative / zero divisors",
            "    and   x18, x18, x11",
            "    andi  x19, x10, 3",
            "    bnez  x19, 1f",
            "    li    x12, 0              # 1 in 4 iterations: divide by zero",
            "1:"]
    for op in ops:
        body.append(f"    {op:<5} x20, x11, x12\n    sw    x20, 0(x16)\n    addi  x16, x16, 4"
                    f"\n    sub   x21, x16, {BASE_REG}\n    and   x21, x21, x17\n    add   x16, {BASE_REG}, x21")
    body += ["    mulh  x22, x18, x12",
             "    sw    x22, 0(x16)",
             "    addi  x15, x15, -1",
             "    bnez  x15, loop",
             f"    sw    x10, 1020({BASE_REG})"]
    return HEADER + "\n".join(body) + "\n" + FOOTER


def mix_program(rng: random.Random, n: int) -> str:
    regs = [f"x{i}" for i in range(1, 32) if i != 2]       # x2 = data base
    r = lambda: rng.choice(regs)
    out = []
    # Random initial register values (mix of specials and random bits).
    for reg in regs:
        v = rng.choice(SPECIALS) if rng.random() < 0.3 else rng.getrandbits(32)
        out.append(f"    li    {reg}, {v:#x}")
    label = 0
    alu_rr = ["add", "sub", "sll", "slt", "sltu", "xor", "srl", "sra", "or", "and"]
    alu_ri = ["addi", "slti", "sltiu", "xori", "ori", "andi"]
    shifts = ["slli", "srli", "srai"]
    i = 0
    while i < n:
        k = rng.random()
        if k < 0.30:
            out.append(f"    {rng.choice(M_OPS):<6} {r()}, {r()}, {r()}")
        elif k < 0.45:
            out.append(f"    {rng.choice(alu_rr):<6} {r()}, {r()}, {r()}")
        elif k < 0.55:
            out.append(f"    {rng.choice(alu_ri):<6} {r()}, {r()}, {rng.randint(-2048, 2047)}")
        elif k < 0.60:
            out.append(f"    {rng.choice(shifts):<6} {r()}, {r()}, {rng.randint(0, 31)}")
        elif k < 0.63:
            out.append(f"    {rng.choice(['lui', 'auipc']):<6} {r()}, {rng.getrandbits(20):#x}")
        elif k < 0.75:
            st, size = rng.choice([("sw", 4), ("sh", 2), ("sb", 1)])
            off = rng.randrange(0, 1024, size)
            out.append(f"    {st:<6} {r()}, {off}({BASE_REG})")
        elif k < 0.85:
            ld, size = rng.choice([("lw", 4), ("lh", 2), ("lhu", 2), ("lb", 1), ("lbu", 1)])
            off = rng.randrange(0, 1024, size)
            out.append(f"    {ld:<6} {r()}, {off}({BASE_REG})")
        elif k < 0.95:
            br = rng.choice(["beq", "bne", "blt", "bge", "bltu", "bgeu"])
            out.append(f"    {br:<6} {r()}, {r()}, L{label}")
            for _ in range(rng.randint(1, 3)):
                out.append(f"    {rng.choice(M_OPS + alu_rr):<6} {r()}, {r()}, {r()}")
                i += 1
            out.append(f"L{label}:")
            label += 1
        else:
            # jal / jalr forward over one instruction, link register checked later.
            if rng.random() < 0.5:
                out.append(f"    jal    {r()}, L{label}")
            else:
                link = r()
                out.append(f"    auipc  {link}, 0\n    jalr   {r()}, {link}, 12")
            out.append(f"    {rng.choice(M_OPS):<6} {r()}, {r()}, {r()}")
            out.append(f"L{label}:")
            label += 1
        i += 1
    # Dump every register.
    for idx, reg in enumerate(regs):
        out.append(f"    sw     {reg}, {4 * idx}({BASE_REG})")
    return HEADER + "\n".join(out) + "\n" + FOOTER


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--out", type=Path, default=Path(__file__).resolve().parent.parent / "tests" / "generated")
    ap.add_argument("--seed", type=int, default=2026)
    ap.add_argument("--loops", type=int, default=10)
    ap.add_argument("--mixes", type=int, default=40)
    args = ap.parse_args()
    rng = random.Random(args.seed)
    args.out.mkdir(parents=True, exist_ok=True)
    for old in args.out.glob("*.S"):
        old.unlink()
    for i, p in enumerate(special_programs()):
        (args.out / f"special_{i:02d}.S").write_text(p)
    for i in range(args.loops):
        (args.out / f"loop_{i:02d}.S").write_text(loop_program(rng, rng.randint(16, 64)))
    for i in range(args.mixes):
        (args.out / f"mix_{i:02d}.S").write_text(mix_program(rng, 250))
    print(f"generated {len(list(args.out.glob('*.S')))} programs in {args.out}")


if __name__ == "__main__":
    main()
