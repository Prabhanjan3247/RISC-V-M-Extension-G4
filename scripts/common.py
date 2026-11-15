"""Shared helpers: tool lookup, build (assemble + link), RTL simulation."""
from __future__ import annotations

import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
RTL_DIR = ROOT / "Single_Cycle_RISCV_M"
RTL_FILES = [RTL_DIR / f for f in (
    "rtl.sv", "rv32_imm_gen.sv", "rv32_regfile.sv",
    "rv32_alu.sv", "rv32m_muldiv.sv", "rv32_csr.sv")]
TB_FILE = ROOT / "tb" / "tb_single_cycle_riscv_m.sv"
LINK_LD = ROOT / "compliance" / "target" / "link.ld"


def _find(env: str, names: list[str]) -> str:
    """Tool from $ENV, else first name found on PATH."""
    if os.environ.get(env):
        return os.environ[env]
    for n in names:
        p = shutil.which(n)
        if p:
            return p
    sys.exit(f"error: cannot find {names[0]} (set ${env} or add it to PATH)")


def riscv_prefix() -> str:
    if os.environ.get("RISCV_PREFIX"):
        return os.environ["RISCV_PREFIX"]
    for p in ("riscv-none-elf-", "riscv64-unknown-elf-", "riscv32-unknown-elf-"):
        if shutil.which(p + "gcc"):
            return p
    sys.exit("error: no RISC-V gcc found (set $RISCV_PREFIX, e.g. riscv-none-elf-)")


def run(cmd: list, **kw) -> subprocess.CompletedProcess:
    r = subprocess.run([str(c) for c in cmd], capture_output=True, text=True, **kw)
    if r.returncode != 0:
        sys.exit(f"command failed: {' '.join(map(str, cmd))}\n{r.stdout}\n{r.stderr}")
    return r


def build(src: Path, out_dir: Path, includes: list[Path] = (), defines: list[str] = ()) -> Path:
    """Assemble/link `src` at 0x8000_0000; return path of the ELF."""
    pre = riscv_prefix()
    out_dir.mkdir(parents=True, exist_ok=True)
    elf = out_dir / (src.stem + ".elf")
    flags = ["-march=rv32im_zicsr_zifencei", "-mabi=ilp32", "-DXLEN=32"]
    flags += [f"-I{i}" for i in includes] + [f"-D{d}" for d in defines]
    # Preprocess first. riscv-arch-test 2.7.4 contains "la x0, <label>"
    # (jalr-01 with rd = x0), which current binutils reject; it only writes
    # x0, so it is replaced by the same number of nops (keeps the layout).
    pp = run([pre + "gcc", "-E", "-x", "assembler-with-cpp", *flags, src]).stdout
    pp = re.sub(r"\bla\s+x0\s*,\s*[^;\n]+", "nop; nop", pp)
    asm = out_dir / (src.stem + ".s")
    asm.write_text(pp)
    run([pre + "gcc", *flags, "-static", "-mcmodel=medany", "-nostdlib", "-nostartfiles",
         f"-T{LINK_LD}", "-o", elf, asm])
    with open(out_dir / (src.stem + ".dis"), "w") as f:
        f.write(run([pre + "objdump", "-D", elf]).stdout)
    return elf


def elf_to_words(elf: Path) -> list[int]:
    """Flat image from 0x8000_0000 as little-endian 32-bit words."""
    pre = riscv_prefix()
    binf = elf.with_suffix(".bin")
    run([pre + "objcopy", "-O", "binary", elf, binf])
    data = binf.read_bytes()
    data += b"\0" * (-len(data) % 4)
    return [int.from_bytes(data[i:i + 4], "little") for i in range(0, len(data), 4)]


def write_hex(words: list[int], path: Path) -> Path:
    path.write_text("".join(f"{w:08x}\n" for w in words))
    return path


def symbols(elf: Path) -> dict[str, int]:
    out = run([riscv_prefix() + "nm", elf]).stdout
    syms = {}
    for line in out.splitlines():
        parts = line.split()
        if len(parts) == 3:
            syms[parts[2]] = int(parts[0], 16)
    return syms


_SIM_CACHE: dict[str, Path] = {}


def compile_rtl(build_dir: Path, netlist: Path | None = None) -> Path:
    """Compile RTL (or a synthesised netlist) + testbench with Icarus Verilog."""
    key = str(build_dir)
    if key not in _SIM_CACHE:
        iverilog = _find("IVERILOG", ["iverilog"])
        build_dir.mkdir(parents=True, exist_ok=True)
        vvp = build_dir / "tb.vvp"
        srcs = [netlist] if netlist else RTL_FILES
        run([iverilog, "-g2012", "-o", vvp, TB_FILE, *srcs], env=_tool_env(iverilog))
        _SIM_CACHE[key] = vvp
    return _SIM_CACHE[key]


def _tool_env(exe: str) -> dict:
    """PATH with the tool's own bin/ and ../lib first, so DLLs from other
    toolchains on PATH (e.g. the RISC-V gcc) are not picked up on Windows."""
    d = Path(exe).resolve().parent
    env = dict(os.environ)
    env["PATH"] = os.pathsep.join([str(d), str(d.parent / "lib"), env.get("PATH", "")])
    return env


def simulate(vvp: Path, plusargs: list[str]) -> str:
    vvp_bin = _find("VVP", ["vvp"])
    return run([vvp_bin, "-n", vvp, *plusargs], env=_tool_env(vvp_bin)).stdout
