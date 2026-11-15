# RV32IM Single-Cycle Core: M Extension + Compliance Test

COD course project, **Group 4**. A single-cycle RV32I processor extended with the RISC-V **M extension**
(integer multiply / divide) and a minimal **Zicsr** CSR file. It is verified against a Python golden model and
against the official [riscv-arch-test](https://github.com/riscv-non-isa/riscv-arch-test) compliance suite (v2.7.4).

The top module is `single_cycle_riscv_m`. Its port list and behaviour follow the course spec in
[Single_Cycle_RISCV_M/README.md](Single_Cycle_RISCV_M/README.md). Every instruction, including `DIV`/`REM`,
completes in one clock cycle (CPI = 1.00).

The full design and verification report is [docs/REPORT.md](docs/REPORT.md).

## Group

| Name | SRN |
|---|---|
| PISUPATI SAI RAGHASRI MADHULIKA | PES2UG24EC080 |
| PRABHANJAN P KATTI | PES2UG24EC081 |
| PRANAV VINEET DESAI | PES2UG24EC082 |

Mentor: Ananya Varma

## Results summary

| Check | Result |
|---|---|
| riscv-arch-test 2.7.4 `rv32i_m/M` (8 tests) | 8/8 PASS, signatures identical to the suite references |
| riscv-arch-test 2.7.4 `rv32i_m/I` (38 tests) | 38/38 PASS, signatures identical to the suite references |
| Golden model (`scripts/rv32im_iss.py`) on the same 46 tests | 46/46 PASS |
| 59 generated + 1 directed program, CI memory model, store trace vs golden model | 60/60 match |
| CPI on the generated programs | 1.00 |
| Yosys 0.33 synthesis (CI version) | passes: 12/12 ports, no latches, one clock, no init values; 30 251 cells, 1405 flip-flops |
| Gate-level (post-synthesis) simulation, `loop_00` to `loop_03` | 4/4 match (see [docs/REPORT.md, section 7](docs/REPORT.md#7-results)) |

Per-test compliance numbers: [compliance/results/compliance_report.md](compliance/results/compliance_report.md).

## Architecture

Decode, execute, memory access and write-back all happen in the same cycle. The only state in the core is the
PC, the register file and the CSR file. Instruction memory and data memory are outside the core (the CI harness
or the testbench provides them) and are read combinationally.

```
            +--------+  address   +------------+  instruction
       +--->|   PC   |----------->|    IMEM    |------------+
       |    | reset: |            | (external) |            |
       |    | 8000_  |            +------------+            v
       |    | 0000   |                      +---------------------------------+
       |    +--------+                      | decode / control                |
       |        | pc                        | opcode rd rs1 rs2 funct3 funct7 |
       |        |                           +---------------------------------+
       |        |                             | rs1, rs2   | instr     | csr addr, funct3
       |        |                             v            v           v
       |        |                     +-------------+ +---------+ +----------+
       |        |                     | rv32_regfile| | rv32_   | | rv32_csr |
       |        |                     | 32 x 32 bit | | imm_gen | | mstatus..|
       |        |                     | x0 = 0      | | I S B U | | mcycle   |
       |        |                     +-------------+ | J       | | minstret |
       |        |              rs1_val |         | rs2_val ---+ +----------+
       |        |                      |         |    |  imm         | csr_rdata
       |        |                      |         |    v              |
       |        |                      |         |  [ B mux: rs2 | imm_s | imm_i ]
       |        |                      |         |    |              |
       |        |                      v         v    v              |
       |        |             +------------------+ +-----------+     |
       |        |             | rv32m_muldiv     | | rv32_alu  |     |
       |        |             | a=rs1, b=rs2     | | a=rs1     |     |
       |        |             | 33x33 signed mul | | ADD..AND  |     |
       |        |             | 32-step divider  | +-----------+     |
       |        |             +------------------+       | alu_y     |
       |        |                     | muldiv_y         |           |
       |        |                     v                  v           |
       |        +-- imm_u, pc+imm_u ->[      ex_result mux      ]     |
       |                                           |                 |
       |                                           +--> alu_out ------------------> DMEM address
       |                               rs2_val -------> rs2_data -----------------> DMEM write data
       |                                                mem_write, mem_read, fn3 -> DMEM control
       |                                           |                 |
       |                                           v                 v
       |                [ WB mux: mem_out | pc+4 | csr_rdata | ex_result ] ------> regfile rd
       |                     ^
       |                     +---- mem_out <-------------------------------------- DMEM read data
       |
       +---[ next-PC mux: pc+4 | pc+imm_b (branch taken) | pc+imm_j | (rs1+imm_i) & ~1 ]
```

Sub-modules (all in `Single_Cycle_RISCV_M/`):

| File | Module | Function |
|---|---|---|
| `rtl.sv` | `single_cycle_riscv_m` | top: PC, decode, control, ALU-B mux, branch compare, next-PC, result and write-back muxes |
| `rv32_imm_gen.sv` | `rv32_imm_gen` | sign-extended I/S/B/U/J immediates |
| `rv32_regfile.sv` | `rv32_regfile` | 31 x 32-bit registers (x0 is not stored), 2 combinational reads, 1 synchronous write, async reset |
| `rv32_alu.sv` | `rv32_alu` | RV32I ALU: ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND |
| `rv32m_muldiv.sv` | `rv32m_muldiv` | combinational RV32M unit: signed 33x33 multiplier and 32-step restoring divider |
| `rv32_csr.sv` | `rv32_csr` | machine-mode CSRs for CSRRW/S/C(I), 64-bit `mcycle` / `minstret` counters |

## Repository map

```
Single_Cycle_RISCV_M/          RTL (the files listed in rnr-stage.yaml) and the course spec README.md
tb/                            tb_single_cycle_riscv_m.sv: testbench with CI and unified memory models
scripts/
  common.py                    tool lookup, assemble/link, ELF to hex, Icarus compile/run
  rv32im_iss.py                RV32IM instruction-set simulator (golden model)
  gen_tests.py                 generates tests/generated/*.S (special / loop / mix programs)
  run_random.py                runs every tests/**/*.S on RTL + golden model, compares store traces
  run_compliance.py            runs riscv-arch-test rv32i_m/{M,I}, writes the compliance report
  synth_check.py               Yosys synthesis + port / latch / clock / init checks (CI equivalent)
tests/directed/                hand-written test (M corner cases, Zicsr, no-op system instructions)
tests/generated/               59 generated test programs (committed)
compliance/target/             riscv-arch-test target files: model_test.h, link.ld (based on the sail target)
compliance/results/            compliance_report.md (written by run_compliance.py)
docs/REPORT.md                 design and verification report
rnr-stage.yaml                 course CI configuration (stage and source file list)
.github/workflows/verify.yml   GitHub Actions: regression, compliance, synthesis check
build/                         all build outputs (ignored by git)
```

## Reproducing the results

### Tools

| Tool | Version used | Purpose |
|---|---|---|
| RISC-V GCC | xPack `riscv-none-elf-gcc` 15.2.0 | assemble and link test programs |
| Icarus Verilog | 14 (OSS CAD Suite 2026-11-15) | RTL and netlist simulation |
| Yosys | 0.33 (`yowasp-yosys`, same version as the course CI) | synthesis check |
| Python | 3.13 (3.10 or newer should work) | scripts, golden model |
| GTKWave | OSS CAD Suite | waveform viewing (optional) |

The scripts find tools on `PATH`. These environment variables override the lookup:

| Variable | Default search | Example |
|---|---|---|
| `RISCV_PREFIX` | `riscv-none-elf-`, `riscv64-unknown-elf-`, `riscv32-unknown-elf-` | `riscv64-unknown-elf-` |
| `IVERILOG` | `iverilog` | `C:/tools/oss-cad-suite/bin/iverilog.exe` |
| `VVP` | `vvp` | `C:/tools/oss-cad-suite/bin/vvp.exe` |

**Windows (Git Bash)**

1. Download the xPack RISC-V toolchain (`xpack-riscv-none-elf-gcc-<version>-win32-x64.zip`) from
   <https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack/releases>. Unzip it and add its `bin/` to `PATH`.
2. Download OSS CAD Suite for Windows from <https://github.com/YosysHQ/oss-cad-suite-build/releases>. Extract it
   and add `oss-cad-suite/bin` and `oss-cad-suite/lib` to `PATH`.
3. Install Yosys 0.33 (the CI version) from PyPI.

```bash
# adjust the install locations
export PATH="/c/tools/xpack-riscv-none-elf-gcc-15.2.0-1/bin:/c/tools/oss-cad-suite/bin:/c/tools/oss-cad-suite/lib:$PATH"
pip install "yowasp-yosys==0.33.*"
```

When `common.py` starts Icarus, it puts the simulator's own `bin/` and `lib/` first on `PATH`. This stops Windows
from loading DLLs with the same name from the RISC-V toolchain directory.

**Linux (Ubuntu 24.04)**

```bash
sudo apt-get install -y iverilog gcc-riscv64-unknown-elf
pip install "yowasp-yosys==0.33.*"
export RISCV_PREFIX=riscv64-unknown-elf-
```

The build uses `-march=rv32im_zicsr_zifencei`. Recent GCC versions (12 and newer) accept it; Ubuntu 24.04 ships
GCC 13. Ubuntu 22.04 ships an older cross compiler that may reject it, so use 24.04 or a prebuilt toolchain.

### Commands

Run from the repository root.

```bash
# 1. (Optional) regenerate the test programs. The committed set uses the default seed 2026.
python scripts/gen_tests.py                     # options: --seed N --loops 10 --mixes 40

# 2. Store-trace regression: RTL (CI memory model) vs golden model
python scripts/run_random.py

# 3. Compliance: riscv-arch-test 2.7.4, suites rv32i_m/M and rv32i_m/I
git clone --depth 1 --branch 2.7.4 https://github.com/riscv-non-isa/riscv-arch-test.git riscv-arch-test-2.7.4
python scripts/run_compliance.py --arch-test riscv-arch-test-2.7.4     # option: --suite M I
#    writes compliance/results/compliance_report.md

# 4. Synthesis check with the CI's Yosys version
python scripts/synth_check.py --yosys yowasp-yosys
#    writes build/synth/netlist.json, netlist.v, yosys.log

# 5. Gate-level simulation of the synthesised netlist (run step 4 first)
python scripts/run_random.py --netlist build/synth/netlist.v --build build/gate
```

Expected last lines:

```
60/60 programs match the golden model  (CPI = 1.00)
46/46 compliance tests pass  (report: .../compliance/results/compliance_report.md)
SYNTHESIS CHECK PASSED
```

### Waveforms

The testbench writes a VCD file when it gets `+vcd=<file>`. First run `run_random.py` (or `run_compliance.py`)
once so that the `.hex` images exist. Then run the simulator by hand:

```bash
iverilog -g2012 -o build/wave.vvp tb/tb_single_cycle_riscv_m.sv \
    Single_Cycle_RISCV_M/rtl.sv Single_Cycle_RISCV_M/rv32_imm_gen.sv Single_Cycle_RISCV_M/rv32_regfile.sv \
    Single_Cycle_RISCV_M/rv32_alu.sv Single_Cycle_RISCV_M/rv32m_muldiv.sv Single_Cycle_RISCV_M/rv32_csr.sv

# CI memory model, first special-operand program
vvp -n build/wave.vvp +ci_mode +hex=build/random/generated/special_00.hex +vcd=build/special_00.vcd
gtkwave build/special_00.vcd
```

Useful signals: `dut.address`, `dut.instruction`, `dut.alu_out`, `dut.mem_write`, `dut.rs2_data`, `dut.fn3`,
`dut.u_muldiv.funct3`, `dut.u_muldiv.a`, `dut.u_muldiv.b`, `dut.u_muldiv.result`, `dut.u_rf.regs`.

Other testbench plusargs: `+trace=<file>` (store trace), `+max_cycles=<n>`, and
`+sig=<file> +sig_begin=<hex> +sig_end=<hex> +tohost=<hex>` (compliance signature dump). Without `+ci_mode` the
testbench uses a 4 MiB unified memory at `0x8000_0000`.

## Course CI notes

- The RISC-n-Roll-CI GitHub App reads [rnr-stage.yaml](rnr-stage.yaml). It lists all six RTL files. The module and
  port names match the spec, so no `top_module` or `ports` mapping is needed.
- CI synthesises with Yosys 0.33. That version cannot parse assignment patterns such as `'{default: 0}`, so the
  register file is cleared with a `for` loop. `scripts/synth_check.py` runs the same Yosys version locally.
- CI runs three programs (special operand pairs, a pseudo-random loop, a dense random mix). It uses a 512-word
  instruction memory and a 256-word data memory, and compares the sequence of committed stores with a reference.
  `gen_tests.py` generates programs of the same three kinds, and `run_random.py` checks them under the same
  memory model.
- [.github/workflows/verify.yml](.github/workflows/verify.yml) is a separate GitHub Actions workflow. It runs the
  regression, the compliance suite and the synthesis check on every push. It does not replace the course CI.

## License

MIT, see [LICENSE](LICENSE).
