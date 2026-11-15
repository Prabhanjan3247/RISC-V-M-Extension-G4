"""
rv32im_iss.py - instruction-set simulator (golden model) for RV32IM.

Used by run_random.py as the reference: it executes the same program image as
the RTL and records the sequence of stores (address, size-masked data, funct3),
which is exactly what the course CI compares.

Memory models (mirroring tb/tb_single_cycle_riscv_m.sv):
  ci      : 512-word instruction memory indexed by pc[10:2], separate
            256-word zero-initialised data memory indexed by addr[9:2].
  unified : one flat memory at 0x8000_0000 (code + data).

The program stops on a "jal x0, 0" self-loop, a store to `tohost`, or after
`max_steps` instructions.
"""
from __future__ import annotations

MASK = 0xFFFF_FFFF
BASE = 0x8000_0000
# Read/write machine CSRs (counters are left out: their values depend on timing).
CSR_RW = {0x300, 0x304, 0x305, 0x340, 0x341, 0x342, 0x343, 0x344}


def sext(value: int, bits: int) -> int:
    value &= (1 << bits) - 1
    return value - (1 << bits) if value >> (bits - 1) else value


def s32(value: int) -> int:
    return sext(value, 32)


def mext(funct3: int, a: int, b: int) -> int:
    """RV32M semantics, written straight from the ISA manual."""
    sa, sb = s32(a), s32(b)
    if funct3 == 0:                                   # MUL
        return (sa * sb) & MASK
    if funct3 == 1:                                   # MULH
        return ((sa * sb) >> 32) & MASK
    if funct3 == 2:                                   # MULHSU
        return ((sa * b) >> 32) & MASK
    if funct3 == 3:                                   # MULHU
        return ((a * b) >> 32) & MASK
    if funct3 == 4:                                   # DIV
        if b == 0:
            return MASK
        if sa == -(1 << 31) and sb == -1:
            return a
        q = abs(sa) // abs(sb)
        return (-q if (sa < 0) != (sb < 0) else q) & MASK
    if funct3 == 5:                                   # DIVU
        return MASK if b == 0 else a // b
    if funct3 == 6:                                   # REM
        if b == 0:
            return a
        if sa == -(1 << 31) and sb == -1:
            return 0
        r = abs(sa) % abs(sb)
        return (-r if sa < 0 else r) & MASK
    return a if b == 0 else a % b                     # REMU


class Memory:
    def __init__(self, image: list[int], ci: bool, words: int = 1048576):
        self.ci = ci
        if ci:
            self.imem = (image + [0] * 512)[:512]
            self.dmem = [0] * 256
        else:
            self.words = words
            self.uni = (image + [0] * words)[:words]

    def _uidx(self, addr: int) -> int:
        return ((addr - BASE) & MASK) >> 2 & (self.words - 1)

    def fetch(self, pc: int) -> int:
        return self.imem[(pc >> 2) & 511] if self.ci else self.uni[self._uidx(pc)]

    def _get(self, addr: int) -> int:
        return self.dmem[(addr >> 2) & 255] if self.ci else self.uni[self._uidx(addr)]

    def _set(self, addr: int, word: int) -> None:
        if self.ci:
            self.dmem[(addr >> 2) & 255] = word
        else:
            self.uni[self._uidx(addr)] = word

    def load(self, addr: int, funct3: int) -> int:
        word = self._get(addr)
        off = addr & 3
        byte = (word >> (8 * off)) & 0xFF
        half = (word >> (16 * ((addr >> 1) & 1))) & 0xFFFF
        if funct3 == 0:
            return sext(byte, 8) & MASK
        if funct3 == 1:
            return sext(half, 16) & MASK
        if funct3 == 4:
            return byte
        if funct3 == 5:
            return half
        return word

    def store(self, addr: int, data: int, funct3: int) -> int:
        word = self._get(addr)
        size = funct3 & 3
        if size == 0:
            sh = 8 * (addr & 3)
            word = (word & ~(0xFF << sh) & MASK) | ((data & 0xFF) << sh)
            masked = data & 0xFF
        elif size == 1:
            sh = 16 * ((addr >> 1) & 1)
            word = (word & ~(0xFFFF << sh) & MASK) | ((data & 0xFFFF) << sh)
            masked = data & 0xFFFF
        else:
            word = data
            masked = data
        self._set(addr, word & MASK)
        return masked


def run(image: list[int], ci: bool = True, max_steps: int = 2_000_000,
        tohost: int | None = None):
    """Execute `image` (list of 32-bit words loaded at 0x8000_0000).

    Returns (stores, steps, reason, memory) where stores is a list of
    (addr, data, funct3) tuples in program order.
    """
    mem = Memory(image, ci)
    csrs = {0x301: 0x4000_1100}                       # misa: RV32 I + M
    x = [0] * 32
    pc = BASE
    stores: list[tuple[int, int, int]] = []
    reason = "timeout"
    steps = 0
    for steps in range(max_steps):
        ins = mem.fetch(pc)
        if ins == 0x0000006F:
            reason = "self-loop"
            break
        op = ins & 0x7F
        rd = (ins >> 7) & 31
        f3 = (ins >> 12) & 7
        rs1 = (ins >> 15) & 31
        rs2 = (ins >> 20) & 31
        f7 = ins >> 25
        a, b = x[rs1], x[rs2]
        imm_i = sext(ins >> 20, 12)
        imm_s = sext(((ins >> 25) << 5) | ((ins >> 7) & 31), 12)
        imm_b = sext((((ins >> 31) & 1) << 12) | (((ins >> 7) & 1) << 11)
                     | (((ins >> 25) & 0x3F) << 5) | (((ins >> 8) & 0xF) << 1), 13)
        imm_u = ins & 0xFFFFF000
        imm_j = sext((((ins >> 31) & 1) << 20) | (((ins >> 12) & 0xFF) << 12)
                     | (((ins >> 20) & 1) << 11) | (((ins >> 21) & 0x3FF) << 1), 21)
        nxt = (pc + 4) & MASK
        wb = None
        if op == 0x37:                                          # LUI
            wb = imm_u
        elif op == 0x17:                                        # AUIPC
            wb = (pc + imm_u) & MASK
        elif op == 0x6F:                                        # JAL
            wb, nxt = (pc + 4) & MASK, (pc + imm_j) & MASK
        elif op == 0x67:                                        # JALR
            wb, nxt = (pc + 4) & MASK, (a + imm_i) & MASK & ~1
        elif op == 0x63:                                        # BRANCH
            sa, sb = s32(a), s32(b)
            take = {0: a == b, 1: a != b, 4: sa < sb, 5: sa >= sb,
                    6: a < b, 7: a >= b}.get(f3, False)
            if take:
                nxt = (pc + imm_b) & MASK
        elif op == 0x03:                                        # LOAD
            wb = mem.load((a + imm_i) & MASK, f3)
        elif op == 0x23:                                        # STORE
            addr = (a + imm_s) & MASK
            stores.append((addr, mem.store(addr, b, f3), f3))
            if tohost is not None and addr == tohost:
                reason = "tohost"
                break
        elif op in (0x13, 0x33):                                # OP-IMM / OP
            if op == 0x33 and f7 == 1:
                wb = mext(f3, a, b)
            else:
                bb = b if op == 0x33 else imm_i & MASK
                sh = bb & 31
                alt = (f7 >> 5) & 1
                if f3 == 0:
                    wb = (a - bb) if (op == 0x33 and alt) else (a + bb)
                elif f3 == 1:
                    wb = a << sh
                elif f3 == 2:
                    wb = int(s32(a) < s32(bb))
                elif f3 == 3:
                    wb = int(a < (bb & MASK))
                elif f3 == 4:
                    wb = a ^ bb
                elif f3 == 5:
                    wb = (s32(a) >> sh) if alt else (a >> sh)
                elif f3 == 6:
                    wb = a | bb
                else:
                    wb = a & bb
                wb &= MASK
        elif op == 0x73 and (f3 & 3):                           # Zicsr
            csr = ins >> 20
            old = csrs.get(csr, 0) & (~3 & MASK if csr == 0x341 else MASK)  # mepc[1:0] = 0
            src = rs1 if f3 & 4 else a                          # zimm or rs1
            new = {1: src, 2: old | src, 3: old & ~src & MASK}[f3 & 3]
            if csr in CSR_RW and ((f3 & 3) == 1 or rs1 != 0):
                csrs[csr] = new
            wb = old
        # FENCE, ECALL, EBREAK, MRET: no architectural effect in this model.
        if wb is not None and rd != 0:
            x[rd] = wb & MASK
        pc = nxt
    return stores, steps, reason, mem
