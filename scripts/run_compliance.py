"""
run_compliance.py - run the official riscv-arch-test (v2.7.4) suites on the RTL.

For each test: assemble with the arch-test environment and our target
(compliance/target/model_test.h + link.ld), simulate the core with Icarus in
the unified-memory testbench, dump the signature region
(begin_signature .. end_signature) when the program writes `tohost`, and
compare it word by word with the reference signature shipped with the suite.
The Python golden model is run on every test as well, as a cross-check.

usage:
  python scripts/run_compliance.py --arch-test <path/to/riscv-arch-test-2.7.4> [--suite M I]
"""
from __future__ import annotations

import argparse
import sys
from datetime import date
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import common  # noqa: E402
import rv32im_iss  # noqa: E402


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--arch-test", type=Path, required=True)
    ap.add_argument("--suite", nargs="+", default=["M", "I"])
    ap.add_argument("--build", type=Path, default=common.ROOT / "build" / "compliance")
    ap.add_argument("--report", type=Path, default=common.ROOT / "compliance" / "results")
    args = ap.parse_args()

    env = args.arch_test / "riscv-test-suite" / "env"
    target = common.ROOT / "compliance" / "target"
    vvp = common.compile_rtl(args.build)
    args.report.mkdir(parents=True, exist_ok=True)
    rows, n_fail = [], 0

    for suite in args.suite:
        sdir = args.arch_test / "riscv-test-suite" / "rv32i_m" / suite
        for src in sorted((sdir / "src").glob("*.S")):
            name = src.stem
            ref_file = sdir / "references" / f"{name}.reference_output"
            out = args.build / suite
            elf = common.build(src, out, includes=[env, target])
            syms = common.symbols(elf)
            words = common.elf_to_words(elf)
            hexf = common.write_hex(words, out / f"{name}.hex")
            sig = out / f"{name}.signature.output"
            log = common.simulate(vvp, [
                f"+hex={hexf}", f"+sig={sig}",
                f"+sig_begin={syms['begin_signature']:x}",
                f"+sig_end={syms['end_signature']:x}",
                f"+tohost={syms['tohost']:x}", "+max_cycles=1000000"])
            got = sig.read_text().split()
            exp = ref_file.read_text().split()
            ok_rtl = "tohost" in log and got == exp

            # Golden-model cross-check on the same image.
            _, steps, reason, mem = rv32im_iss.run(words, ci=False, tohost=syms["tohost"])
            b, e = syms["begin_signature"], syms["end_signature"]
            iss = [f"{mem._get(a):08x}" for a in range(b, e, 4)]
            ok_iss = reason == "tohost" and iss == exp

            mism = sum(1 for g, x in zip(got, exp) if g != x) + abs(len(got) - len(exp))
            cycles = log.split("after ")[1].split()[0] if "after " in log else "?"
            status = "PASS" if ok_rtl else "FAIL"
            n_fail += not ok_rtl
            rows.append((suite, name, status, len(exp), mism, cycles, "PASS" if ok_iss else "FAIL"))
            print(f"{status} {suite}/{name:<16} {len(exp):4d} sig words  {mism} mismatches  "
                  f"{cycles:>6} cycles  (golden model: {'PASS' if ok_iss else 'FAIL'})")

    total = len(rows)
    md = [f"# riscv-arch-test compliance results ({date.today().isoformat()})", "",
          "Suite: riscv-arch-test 2.7.4, `rv32i_m/" + "`, `rv32i_m/".join(args.suite) + "`.  ",
          "DUT: `single_cycle_riscv_m` (Icarus Verilog, `tb/tb_single_cycle_riscv_m.sv`).  ",
          "Pass criterion: signature region identical to the suite's reference output.", "",
          f"**{total - n_fail}/{total} tests pass.**", "",
          "| Suite | Test | RTL | Signature words | Mismatches | Cycles | Golden model |",
          "|---|---|---|---|---|---|---|"]
    md += [f"| {s} | {n} | {st} | {w} | {m} | {c} | {g} |" for s, n, st, w, m, c, g in rows]
    (args.report / "compliance_report.md").write_text("\n".join(md) + "\n")
    print(f"\n{total - n_fail}/{total} compliance tests pass  "
          f"(report: {args.report / 'compliance_report.md'})")
    return 1 if n_fail else 0


if __name__ == "__main__":
    sys.exit(main())
