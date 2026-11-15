# Report: `single_cycle_riscv_m`, a single-cycle RV32IM + Zicsr core

COD Assignment Project, Group 4 (M Extension + Compliance Test).

## 1. Overview

The core is a classic single-cycle RISC-V processor. Each instruction is fetched, decoded, executed and written back in
one clock cycle. That includes all eight RV32M multiply/divide instructions. Instruction memory and data memory are
outside the core (the CI harness or the testbench provides them). Both are read combinationally, and data memory is
written on the rising clock edge.

| Item | Value |
|---|---|
| ISA | RV32I + M (+ Zicsr CSR instructions) |
| Microarchitecture | single-cycle, CPI = 1 for every instruction |
| Reset | asynchronous, active high; `PC = 0x8000_0000`, all registers and CSRs = 0 |
| Multiplier | combinational, signed 33 x 33 bit (covers MUL/MULH/MULHSU/MULHU) |
| Divider | combinational 32-stage restoring array, shared by DIV/DIVU/REM/REMU |
| Synthesis (Yosys 0.33) | about 30 k generic cells, 1405 flip-flops, no latches, one clock |

## 2. Source files

| File | Module | Role |
|---|---|---|
| `Single_Cycle_RISCV_M/rtl.sv` | `single_cycle_riscv_m` | top: PC, decode, datapath muxes, next-PC logic, outputs |
| `Single_Cycle_RISCV_M/rv32_imm_gen.sv` | `rv32_imm_gen` | I/S/B/U/J immediates |
| `Single_Cycle_RISCV_M/rv32_regfile.sv` | `rv32_regfile` | 31 x 32-bit registers (x0 hard-wired), 2R1W |
| `Single_Cycle_RISCV_M/rv32_alu.sv` | `rv32_alu` | RV32I ALU |
| `Single_Cycle_RISCV_M/rv32m_muldiv.sv` | `rv32m_muldiv` | **M extension unit** |
| `Single_Cycle_RISCV_M/rv32_csr.sv` | `rv32_csr` | machine-mode CSR file (Zicsr) |

All six files are listed in `rnr-stage.yaml`. The module and port names match the spec, so no `top_module` or `ports`
mapping is needed.

## 3. Datapath

```
             +--------------------------------------------------------------+
             |                         next-PC logic                        |
             |  pc+4 | pc+imm_j (JAL) | (rs1+imm_i)&~1 (JALR) | pc+imm_b (Bxx)|
             +-----------------------------^--------------------------------+
                                           |
   +----+   address    +-------------+  instruction  +--------+   +----------+
   | PC |------------->| instr. mem. |-------------->| decode |-->| imm_gen  |
   +----+  (output)    |  (external) |   (input)     +--------+   +----------+
                       +-------------+                   |             |
                                                         v             v
                 +-----------+  rs1_val  +---------+   +-----+   +----------+
   rf_wdata ---->| regfile   |---------->|   ALU   |   | M   |   | CSR file |
   (write-back)  | 2R / 1W   |  rs2_val  | (I ops, |   |unit |   | (Zicsr)  |
                 +-----------+---------->| address)|   |     |   +----------+
                                   |     +---------+   +-----+         |
                                   |          |           |            |
                         rs2_data  |          +---ex_result (mux)      |
                         (output)  v                 |                 |
                                              alu_out (output) --> data memory (external)
                                                     |                 |
   write-back mux:  mem_out (loads) | pc+4 (JAL/JALR) | csr_rdata (CSR) | ex_result
```

* `alu_out` holds the execute result: the ALU or M-unit result, `imm_u` for LUI, `pc+imm_u` for AUIPC. For loads and
  stores it holds the effective address `rs1 + imm`, which the harness uses as the data-memory address.
* `rs2_data` is the full `rs2` value. The memory selects byte lanes from `fn3` and `alu_out[1:0]`.
* `mem_out` arrives already aligned and sign- or zero-extended, so the load path is just a write-back mux input.
* `mem_write` / `mem_read` are asserted for stores / loads (gated by `stall`). `fn3` is `instruction[14:12]` and
  `opcode` is `instruction[6:0]`.

### Decode

| opcode | Instructions | Register write | Notes |
|---|---|---|---|
| `0110111` | LUI | `imm_u` | |
| `0010111` | AUIPC | `pc + imm_u` | |
| `1101111` | JAL | `pc + 4` | `pc <= pc + imm_j` |
| `1100111` | JALR | `pc + 4` | `pc <= (rs1 + imm_i) & ~1` |
| `1100011` | BEQ BNE BLT BGE BLTU BGEU | none | `pc <= pc + imm_b` if taken |
| `0000011` | LB LH LW LBU LHU | `mem_out` | `mem_read = 1` |
| `0100011` | SB SH SW | none | `mem_write = 1` |
| `0010011` | ADDI SLTI SLTIU XORI ORI ANDI SLLI SRLI SRAI | ALU | bit 30 only selects SRAI |
| `0110011`, funct7 = `0000000`/`0100000` | ADD SUB SLL SLT SLTU XOR SRL SRA OR AND | ALU | |
| `0110011`, funct7 = `0000001` | MUL MULH MULHSU MULHU DIV DIVU REM REMU | M unit | |
| `1110011`, funct3 != 000 | CSRRW CSRRS CSRRC CSRRWI CSRRSI CSRRCI | old CSR value | |
| `1110011`, funct3 = 000; `0001111` | ECALL EBREAK MRET WFI; FENCE FENCE.I | none | no-ops |
| anything else | | none | no-op (no register or memory write) |

## 4. M extension unit (`rv32m_muldiv.sv`)

### Multiplier

Each operand is extended to 33 bits: sign-extended if that operand is signed for the instruction, otherwise
zero-extended. The two are multiplied as signed 33 x 33 numbers into a 66-bit signed product:

| Instruction | rs1 ext. | rs2 ext. | Result |
|---|---|---|---|
| MUL | zero | zero | `product[31:0]` (the low word is the same for every signedness) |
| MULH | sign | sign | `product[63:32]` |
| MULHSU | sign | zero | `product[63:32]` |
| MULHU | zero | zero | `product[63:32]` |

So a single multiplier covers all four instructions.

**Bug found during verification.** The first version wrote `product = $unsigned($signed(a_ext) * $signed(b_ext))`.
`$unsigned()` makes its argument *self-determined*, so the multiply ran at 33 bits and the high word was lost. MULH and
MULHSU returned 0 or 1 instead of the real high word. The random store-trace comparison caught it on the first run (57
of 59 programs failed). The fix assigns the product to a `logic signed [65:0]` net, which makes the multiply
context-determined at 66 bits.

### Divider

DIV/DIVU/REM/REMU share one unsigned **32-step restoring divider** that works on operand magnitudes. It is written as a
`for` loop in `always_comb`, which synthesis unrolls into a 32-row array:

```
rem = 0
for i = 31 downto 0:
    rem = (rem << 1) | dividend[i]
    if rem >= divisor:  rem -= divisor;  q[i] = 1
```

One array produces the quotient and the remainder together. Using Verilog `/` and `%` instead would synthesize two
separate dividers. For the signed forms the operands are made positive first, then the signs are applied:
quotient sign = `sign(rs1) xor sign(rs2)`, remainder sign = `sign(rs1)`.

Special cases (RISC-V raises no exception):

| Case | Result | How it is produced |
|---|---|---|
| `x / 0` | `0xFFFF_FFFF` | explicit check `rs2 == 0` |
| `x % 0` | `x` | explicit check `rs2 == 0` |
| `-2^31 / -1` | `-2^31` | falls out naturally: `0x8000_0000 / 1 = 0x8000_0000`, positive sign, unchanged |
| `-2^31 % -1` | `0` | falls out naturally |

### Why combinational?

The spec accepts multi-cycle units (CI allows about ten cycles per instruction on average). A combinational unit keeps
the core truly single-cycle, needs no stall or handshake logic, and cannot get the CPI budget wrong on the "dense
random mix" CI program. The cost is a long critical path through the divider array (32 subtract/compare stages). That
does not matter for this assignment, where CI checks behaviour and not timing. If timing mattered, the same restoring
step could be made iterative (one row per cycle, 32 cycles) with a `busy` signal holding the PC.

## 5. CSR file (`rv32_csr.sv`)

The spec describes the core as "RV32IM + Zicsr", so all six CSR instructions are implemented with the standard
read-modify-write rules. CSRRS/CSRRC with `rs1 = x0` (or `zimm = 0`) do not write the CSR. The implemented CSRs are
`mstatus`, `misa` (read-only, `0x4000_1100` = RV32 I+M), `mie`, `mtvec`, `mscratch`, `mepc`, `mcause`, `mtval` and
`mip`, plus the 64-bit `mcycle`/`minstret` counters with their `cycle`/`instret` user-mode aliases and the
`mvendorid`/`marchid`/`mimpid`/`mhartid` ID registers (all 0). Unknown CSRs read as 0 and ignore writes.

There is no trap logic, so ECALL, EBREAK and MRET are no-ops. This is a deliberate choice. The CI harness compares
store sequences, and a trap to `mtvec = 0` would jump to an address outside the loaded program.

## 6. Verification

### 6.1 Synthesis rules followed (CI: Yosys 0.33)

* No assignment patterns (`'{default:0}`): the register file is cleared with a `for` loop.
* No `small` identifier, no packages, no `inside`. Plain `localparam` constants only.
* Every flip-flop uses `always_ff @(posedge clk or posedge reset)`: one clock, no gated clocks, asynchronous reset,
  and no initial values.
* Every `always_comb` assigns all of its outputs on every path, so no latches are inferred
  (`scripts/synth_check.py` checks this).

### 6.2 Verification strategy

| Layer | Tool | Reference | What it proves |
|---|---|---|---|
| Compliance | riscv-arch-test 2.7.4, `rv32i_m/M` + `rv32i_m/I` | signatures shipped with the suite (from the Sail/Spike models) | ISA conformance of every RV32IM instruction |
| Golden-model regression | `scripts/rv32im_iss.py` (Python ISS) | the ISS, written separately from the ISA manual | the same check CI performs: identical store sequence |
| Directed test | `tests/directed/m_corner_and_csr.S` | hand-computed values (see comments) | M special cases, Zicsr, FENCE/ECALL no-ops |
| Synthesis | Yosys **0.33** (`yowasp-yosys`, the CI version) | the spec port list | parses, 12/12 ports, no latch, one clock, no init values |
| Gate level | Icarus on the Yosys netlist | golden model | no simulation/synthesis mismatch |

**Testbench (`tb/tb_single_cycle_riscv_m.sv`).** The testbench models memory the way the CI harness does:
combinational instruction read, load data already aligned and extended, and stores written on the clock edge. It has two
memory models:

* `+ci_mode`: the exact CI layout, a 512-word IMEM indexed by `address[10:2]` and a separate zero-initialised 256-word
  DMEM indexed by `alu_out[9:2]`.
* unified: 4 MiB at `0x8000_0000`, needed because compliance programs keep their data next to their code.

It logs every committed store (`addr data fn3`), dumps the signature region when a program writes `tohost`, and stops on
a `jal x0, 0` self-loop.

**Compliance flow (`scripts/run_compliance.py`).** The flow uses the target files in `compliance/target/`
(`model_test.h` halts by storing to `tohost`; `link.ld` places code at `0x8000_0000`). For each test it:

1. assembles the test with the arch-test `env/`;
2. converts the ELF to a hex image;
3. simulates it;
4. reads `begin_signature`, `end_signature` and `tohost` from the symbol table;
5. compares the signature word by word with `references/<test>.reference_output`.

The golden model runs every compliance test too, as a sanity check on the model itself.

> One fix was needed: arch-test 2.7.4 `jalr-01` contains `la x0, <label>`, which GCC 15 rejects. Since that
> instruction only writes `x0`, the build step preprocesses the source and replaces it with two `nop`s. That keeps
> the code layout identical.

**Random programs (`scripts/gen_tests.py`).** These copy the three CI program kinds, with seed 2026 for reproducibility:

* `special_*` (9 programs): all 8 RV32M ops on all 196 pairs of 14 corner operands (`0, ±1, ±2, ±3, INT_MIN, INT_MAX,
  INT_MIN+1, 0x0000FFFF, 0xFFFF0000, 0x55555555, 0xAAAAAAAA`).
* `loop_*` (10 programs): an LCG built on `MUL` drives every M op for 16 to 64 iterations, with a divide-by-zero every
  fourth iteration and a backward branch.
* `mix_*` (40 programs): dense random RV32IM. About 30 % M ops, plus ALU reg/imm, shifts, LUI/AUIPC, all load and
  store widths, forward branches, JAL/JALR. Every register is dumped at the end.

Every program fits the 512-word CI instruction memory.

## 7. Results

| Check | Result |
|---|---|
| riscv-arch-test `rv32i_m/M`: div, divu, mul, mulh, mulhsu, mulhu, rem, remu | **8 / 8 PASS** (5180 signature words, 0 mismatches) |
| riscv-arch-test `rv32i_m/I`: 38 tests | **38 / 38 PASS** |
| Golden model on the same 46 compliance tests | 46 / 46 PASS |
| Generated (59) + directed (1) programs, CI memory model, store trace vs golden model | **60 / 60 match** |
| CPI | 1.00 (single cycle; for example the 16-iteration `loop_00` runs 1441 cycles) |
| Yosys 0.33 synthesis | PASS: 12/12 ports, no latches, one clock, no init values; 30 251 cells, 1405 flip-flops |
| Gate-level netlist simulation (`loop_00` to `loop_04`, `special_00`, `mix_00`: every M op, all special operand pairs of the first chunk, a random RV32IM mix) | **7 / 7 match**; gate-level simulation takes several minutes per program in Icarus, so only this subset was run |

The per-test compliance table is in [compliance/results/compliance_report.md](../compliance/results/compliance_report.md).

### Bugs found by verification

1. **MULH / MULHSU high word lost.** `$unsigned(a*b)` made the multiply self-determined at 33 bits (see section 4).
   The golden-model regression caught it (57 of 59 programs failed). The fix uses a 66-bit signed target, and
   after it every check passed.
2. Testbench and flow issues (not RTL bugs):
   * an `always_comb` that read a 1M-word array made Icarus build sensitivity on every word, so compilation hung; it
     now uses continuous assigns;
   * on Windows the RISC-V GCC `bin/` shadowed Icarus DLLs; the runner now puts the tool's own `bin/` and `lib/` first
     on `PATH`;
   * `jal-01` needs more than 1 MiB of memory, so the unified memory is now 4 MiB.

## 8. Conclusion

The core implements RV32IM with Zicsr in a single cycle. It passes the official riscv-arch-test suite for M and I,
matches an independent golden model on 60 CI-style programs, and synthesises cleanly with the Yosys version the course
CI uses.
