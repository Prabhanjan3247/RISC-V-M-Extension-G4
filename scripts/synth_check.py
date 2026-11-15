"""
synth_check.py - reproduce the CI synthesis / validation steps with Yosys.

Checks: the design parses and synthesises with Yosys (CI uses 0.33), the top
has the 12 spec ports with the right widths and directions, and there are no
latches, no initial values on registers and only one clock (no gated clocks).

usage: python scripts/synth_check.py [--yosys yowasp-yosys]
"""
from __future__ import annotations

import argparse
import json
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import common  # noqa: E402

SPEC_PORTS = {  # name: (direction, width)
    "clk": ("input", 1), "reset": ("input", 1), "stall": ("input", 1),
    "instruction": ("input", 32), "mem_out": ("input", 32),
    "rs2_data": ("output", 32), "alu_out": ("output", 32),
    "mem_write": ("output", 1), "mem_read": ("output", 1),
    "fn3": ("output", 3), "opcode": ("output", 7), "address": ("output", 32),
}


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--yosys", default="yosys")
    ap.add_argument("--out", type=Path, default=common.ROOT / "build" / "synth")
    args = ap.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)
    netlist = args.out / "netlist.json"
    files = " ".join(str(f.relative_to(common.ROOT)).replace("\\", "/") for f in common.RTL_FILES)
    script = (f"read_verilog -sv {files}; "
              "hierarchy -check -top single_cycle_riscv_m; "
              "proc; check -assert; "
              "synth -top single_cycle_riscv_m -flatten; "
              "select -assert-none t:$dlatch t:$_DLATCH_* t:$sr t:$_SR_*; "
              f"stat; write_json {netlist.relative_to(common.ROOT).as_posix()}; "
              f"write_verilog -noattr {(args.out / 'netlist.v').relative_to(common.ROOT).as_posix()}")
    r = subprocess.run([args.yosys, "-q", "-l", (args.out / "yosys.log").relative_to(common.ROOT).as_posix(), "-p", script],
                       cwd=common.ROOT, capture_output=True, text=True)
    log = (args.out / "yosys.log").read_text(errors="replace")
    if r.returncode != 0:
        print(log[-3000:], r.stderr)
        print("SYNTHESIS FAILED")
        return 1

    top = json.loads(netlist.read_text())["modules"]["single_cycle_riscv_m"]
    errors = []
    ports = {n: (p["direction"], len(p["bits"])) for n, p in top["ports"].items()}
    if ports != SPEC_PORTS:
        errors.append(f"port mismatch: {ports}")
    cells = top["cells"].values()
    types = {}
    for c in cells:
        types[c["type"]] = types.get(c["type"], 0) + 1
    if any("LATCH" in t.upper() for t in types):
        errors.append("latch inferred")
    clk_bits = {tuple(c["connections"]["C"]) for c in cells if "C" in c["connections"]}
    if clk_bits != {tuple(top["ports"]["clk"]["bits"])}:
        errors.append(f"flip-flops are clocked by something other than clk: {clk_bits}")
    inits = [n for n, net in top["netnames"].items() if "init" in net.get("attributes", {})]
    if inits:
        errors.append(f"registers with initial values: {inits}")

    ver = subprocess.run([args.yosys, "-V"], capture_output=True, text=True).stdout.strip()
    ff = sum(v for k, v in types.items() if "DFF" in k.upper())
    print(f"{ver}\n  cells: {sum(types.values())}  flip-flops: {ff}  ports: {len(ports)}/12 OK"
          if not errors else "\n".join(errors))
    for line in log.splitlines():
        if "Number of cells" in line:
            last = line
    print("  " + last.strip() if 'last' in locals() else "")
    print("SYNTHESIS CHECK " + ("PASSED" if not errors else "FAILED"))
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
