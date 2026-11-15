"""
run_random.py - build every program in tests/ (directed + generated), run it on
the RTL (Icarus Verilog, CI memory model) and on the Python golden model, and
compare the store sequences - the same check the course CI performs.

usage: python scripts/run_random.py [--tests tests] [--build build/random]
       python scripts/run_random.py --netlist build/synth/netlist.v --build build/gate
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import common  # noqa: E402
import rv32im_iss  # noqa: E402


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--tests", type=Path, default=common.ROOT / "tests")
    ap.add_argument("--build", type=Path, default=common.ROOT / "build" / "random")
    ap.add_argument("--max-cycles", type=int, default=200000)
    ap.add_argument("--netlist", type=Path, help="simulate this gate-level netlist instead of the RTL "
                    "(e.g. build/synth/netlist.v from synth_check.py)")
    args = ap.parse_args()

    progs = sorted(args.tests.rglob("*.S"))
    if not progs:
        sys.exit("no test programs found - run scripts/gen_tests.py first")
    vvp = common.compile_rtl(args.build, args.netlist)
    fails, total_cycles, total_instr = [], 0, 0
    for src in progs:
        out = args.build / src.parent.name
        elf = common.build(src, out)
        words = common.elf_to_words(elf)
        if len(words) > 512:
            fails.append(src.name)
            print(f"FAIL {src.name}: {len(words)} words > 512-word CI instruction memory")
            continue
        hexf = common.write_hex(words, out / (src.stem + ".hex"))
        trace = out / (src.stem + ".rtl.trace")
        log = common.simulate(vvp, ["+ci_mode", f"+hex={hexf}", f"+trace={trace}",
                                    f"+max_cycles={args.max_cycles}"])
        ref, steps, reason, _ = rv32im_iss.run(words, ci=True, max_steps=args.max_cycles)
        rtl = [tuple(int(t, 16) if j < 2 else int(t) for j, t in enumerate(line.split()))
               for line in trace.read_text().splitlines()]
        (out / (src.stem + ".ref.trace")).write_text(
            "".join(f"{a:08x} {d:08x} {f}\n" for a, d, f in ref))
        cyc = int(log.split("after ")[1].split()[0]) if "after " in log else -1
        if reason != "self-loop" or "self-loop" not in log:
            fails.append(src.name)
            print(f"FAIL {src.name}: did not finish (iss={reason}) {log.strip()}")
        elif rtl != ref:
            fails.append(src.name)
            first = next((i for i, (p, q) in enumerate(zip(rtl, ref)) if p != q), min(len(rtl), len(ref)))
            print(f"FAIL {src.name}: store #{first} differs  rtl={rtl[first:first+1]} ref={ref[first:first+1]}"
                  f"  (rtl {len(rtl)} stores, ref {len(ref)})")
        else:
            total_cycles += cyc
            total_instr += steps
            print(f"PASS {src.name:<16} {len(ref):4d} stores  {steps:6d} instr  {cyc:6d} cycles")
    n = len(progs)
    print(f"\n{n - len(fails)}/{n} programs match the golden model"
          + (f"  (CPI = {total_cycles / total_instr:.2f})" if total_instr else ""))
    return 1 if fails else 0


if __name__ == "__main__":
    sys.exit(main())
