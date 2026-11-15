# riscv-arch-test compliance results (2026-11-15)

Suite: riscv-arch-test 2.7.4, `rv32i_m/M`, `rv32i_m/I`.  
DUT: `single_cycle_riscv_m` (Icarus Verilog, `tb/tb_single_cycle_riscv_m.sv`).  
Pass criterion: signature region identical to the suite's reference output.

**46/46 tests pass.**

| Suite | Test | RTL | Signature words | Mismatches | Cycles | Golden model |
|---|---|---|---|---|---|---|
| M | div-01 | PASS | 592 | 0 | 3210 | PASS |
| M | divu-01 | PASS | 728 | 0 | 3894 | PASS |
| M | mul-01 | PASS | 588 | 0 | 3194 | PASS |
| M | mulh-01 | PASS | 588 | 0 | 3198 | PASS |
| M | mulhsu-01 | PASS | 648 | 0 | 3506 | PASS |
| M | mulhu-01 | PASS | 724 | 0 | 3890 | PASS |
| M | rem-01 | PASS | 588 | 0 | 3198 | PASS |
| M | remu-01 | PASS | 724 | 0 | 3890 | PASS |
| I | add-01 | PASS | 588 | 0 | 3210 | PASS |
| I | addi-01 | PASS | 564 | 0 | 2138 | PASS |
| I | and-01 | PASS | 584 | 0 | 3186 | PASS |
| I | andi-01 | PASS | 564 | 0 | 2138 | PASS |
| I | auipc-01 | PASS | 64 | 0 | 390 | PASS |
| I | beq-01 | PASS | 584 | 0 | 5514 | PASS |
| I | bge-01 | PASS | 592 | 0 | 5564 | PASS |
| I | bgeu-01 | PASS | 728 | 0 | 6806 | PASS |
| I | blt-01 | PASS | 580 | 0 | 5479 | PASS |
| I | bltu-01 | PASS | 728 | 0 | 6798 | PASS |
| I | bne-01 | PASS | 584 | 0 | 5517 | PASS |
| I | fence-01 | PASS | 4 | 0 | 74 | PASS |
| I | jal-01 | PASS | 32 | 0 | 488 | PASS |
| I | jalr-01 | PASS | 36 | 0 | 466 | PASS |
| I | lb-align-01 | PASS | 36 | 0 | 266 | PASS |
| I | lbu-align-01 | PASS | 32 | 0 | 262 | PASS |
| I | lh-align-01 | PASS | 32 | 0 | 262 | PASS |
| I | lhu-align-01 | PASS | 32 | 0 | 262 | PASS |
| I | lui-01 | PASS | 64 | 0 | 194 | PASS |
| I | lw-align-01 | PASS | 32 | 0 | 262 | PASS |
| I | or-01 | PASS | 588 | 0 | 3210 | PASS |
| I | ori-01 | PASS | 560 | 0 | 2134 | PASS |
| I | sb-align-01 | PASS | 72 | 0 | 586 | PASS |
| I | sh-align-01 | PASS | 72 | 0 | 590 | PASS |
| I | sll-01 | PASS | 92 | 0 | 466 | PASS |
| I | slli-01 | PASS | 88 | 0 | 370 | PASS |
| I | slt-01 | PASS | 584 | 0 | 3190 | PASS |
| I | slti-01 | PASS | 560 | 0 | 2134 | PASS |
| I | sltiu-01 | PASS | 700 | 0 | 2618 | PASS |
| I | sltu-01 | PASS | 724 | 0 | 3878 | PASS |
| I | sra-01 | PASS | 92 | 0 | 470 | PASS |
| I | srai-01 | PASS | 88 | 0 | 370 | PASS |
| I | srl-01 | PASS | 92 | 0 | 482 | PASS |
| I | srli-01 | PASS | 92 | 0 | 378 | PASS |
| I | sub-01 | PASS | 592 | 0 | 3230 | PASS |
| I | sw-align-01 | PASS | 68 | 0 | 570 | PASS |
| I | xor-01 | PASS | 588 | 0 | 3206 | PASS |
| I | xori-01 | PASS | 568 | 0 | 2154 | PASS |
