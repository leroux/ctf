# derive_k_from_time.py
# Usage: python3 derive_k_from_time.py 1694562000    # example: minute-rounded epoch
import sys, ctypes, struct

# --- 1) S-box (default: AES S-box). Replace if your binary's sbox differs. ---
SBOX_HEX = (
    "63 7c 77 7b f2 6b 6f c5 30 01 67 2b fe d7 ab 76 "
    "ca 82 c9 7d fa 59 47 f0 ad d4 a2 af 9c a4 72 c0 "
    "b7 fd 93 26 36 3f f7 cc 34 a5 e5 f1 71 d8 31 15 "
    "04 c7 23 c3 18 96 05 9a 07 12 80 e2 eb 27 b2 75 "
    "09 83 2c 1a 1b 6e 5a a0 52 3b d6 b3 29 e3 2f 84 "
    "53 d1 00 ed 20 fc b1 5b 6a cb be 39 4a 4c 58 cf "
    "d0 ef aa fb 43 4d 33 85 45 f9 02 7f 50 3c 9f a8 "
    "51 a3 40 8f 92 9d 38 f5 bc b6 da 21 10 ff f3 d2 "
    "cd 0c 13 ec 5f 97 44 17 c4 a7 7e 3d 64 5d 19 73 "
    "60 81 4f dc 22 2a 90 88 46 ee b8 14 de 5e 0b db "
    "e0 32 3a 0a 49 06 24 5c c2 d3 ac 62 91 95 e4 79 "
    "e7 c8 37 6d 8d d5 4e a9 6c 56 f4 ea 65 7a ae 08 "
    "ba 78 25 2e 1c a6 b4 c6 e8 dd 74 1f 4b bd 8b 8a "
    "70 3e b5 66 48 03 f6 0e 61 35 57 b9 86 c1 1d 9e "
    "e1 f8 98 11 69 d9 8e 94 9b 1e 87 e9 ce 55 28 df "
    "8c a1 89 0d bf e6 42 68 41 99 2d 0f b0 54 bb 16"
)
SBOX = bytes(int(x, 16) for x in SBOX_HEX.split())

# --- 2) Reproduce srand/rand using glibc via ctypes ---
libc = ctypes.CDLL(None)
libc.srand.argtypes = [ctypes.c_uint]
libc.rand.restype = ctypes.c_int


def two_rand_u32(seed_minute_epoch: int):
    libc.srand(ctypes.c_uint(seed_minute_epoch))
    r1 = libc.rand() & 0xFFFFFFFF
    r2 = libc.rand() & 0xFFFFFFFF
    return r1, r2


# --- 3) build_bittree / shadow_tree_mix (leafs are 3-bit chunks) ---
class Node:
    __slots__ = ("leaf", "L", "R")

    def __init__(self, leaf=None, L=None, R=None):
        self.leaf = leaf
        self.L = L
        self.R = R


def build_bittree(x: int, lo: int, hi: int) -> Node:
    if hi < lo:
        return None
    if lo == hi:
        iVar1 = lo * -3 + 0x3F
        # This reproduces the exact odd shifting in the decompile
        if iVar1 < 0:
            v = 7
        elif iVar1 < 2:
            if iVar1 == 1:
                v = ((x & 0xFF) * 2) & 6 | 1
            elif iVar1 == 0:
                v = ((x & 1) << 2) | 3
            else:
                v = 7
        else:
            shift = (iVar1 - 2) & 0x3F
            v = (x >> shift) & 7
        return Node(leaf=v)
    mid = (lo + hi) // 2
    return Node(leaf=None, L=build_bittree(x, lo, mid), R=build_bittree(x, mid + 1, hi))


def shadow_tree_mix(root: Node):
    acc = 0
    cnt = 0

    def dfs(n: Node):
        nonlocal acc, cnt
        if not n:
            return
        dfs(n.L)
        dfs(n.R)
        if n.leaf is not None and n.L is None and n.R is None:
            acc = (acc << 3) | (n.leaf & 7)
            cnt += 1

    dfs(root)
    return acc, cnt


# --- 4) shadow_protocol (8 rounds, sbox on each byte) ---
ROUND_CONSTS = [0xA5A5C3C3, 0x5A5A9696, 0x3C3CA5A5, 0xC3C35A5A]


def sbox_sub_word(w: int) -> int:
    b0 = SBOX[(w) & 0xFF]
    b1 = SBOX[(w >> 24) & 0xFF]
    b2 = SBOX[(w >> 16) & 0xFF]
    b3 = SBOX[(w >> 8) & 0xFF]
    return (
        (b1 << 24) | (b3 << 8) | (b2 << 16) | b0
    )  # matches the decompiled byte placement


def rol32(x, r):
    return ((x << r) & 0xFFFFFFFF) | (x >> (32 - r))


def shadow_protocol(x64: int) -> int:
    hi = (x64 >> 32) & 0xFFFFFFFF
    lo = x64 & 0xFFFFFFFF
    for r in range(8):
        # SubBytes on 'lo' exactly as in asm
        w = (
            (SBOX[(lo >> 24) & 0xFF] << 24)
            | (SBOX[(lo >> 16) & 0xFF] << 16)
            | (SBOX[(lo >> 8) & 0xFF] << 8)
            | (SBOX[(lo) & 0xFF])
        )
        w ^= ROUND_CONSTS[r & 3]

        # rol32 by (r+3): asm does shl(r+3) | shr(29-r)
        rot = ((w << ((r + 3) & 31)) & 0xFFFFFFFF) | (w >> (32 - ((r + 3) & 31)))

        u = (((r + 1) * 0x1337BEEF) ^ hi) & 0xFFFFFFFF
        t = (rot + u) & 0xFFFFFFFF

        old_hi = hi
        hi = lo  # hi' = lo
        lo = (t ^ old_hi) & 0xFFFFFFFF  # lo' = t ^ old_hi

    out = (((hi << 32) | lo) ^ 0xDEADBEEFCAFEBABE) & 0xFFFFFFFFFFFFFFFF
    out = ((out << 17) | (out >> (64 - 17))) & 0xFFFFFFFFFFFFFFFF
    out = (out + 0x1234567890ABCDEF) & 0xFFFFFFFFFFFFFFFF
    return out


def derive_K_from_minute_epoch(minute_epoch: int) -> int:
    r1, r2 = two_rand_u32(minute_epoch)
    seed64 = ((r1 & 0xFFFFFFFF) << 32) | (r2 & 0xFFFFFFFF)
    root = build_bittree(seed64, 0, 0x15)
    acc, _ = shadow_tree_mix(root)
    K = shadow_protocol(acc)
    return K


def main():
    if len(sys.argv) != 2:
        print("Usage: python3 derive_k_from_time.py <minute_rounded_epoch_time>")
        print("Example: python3 derive_k_from_time.py 1726260000")
        sys.exit(1)
    minute_epoch = int(sys.argv[1], 0)
    K = derive_K_from_minute_epoch(minute_epoch)
    print(f"K (dec): {K}")
    print(f"K (hex): 0x{K:016X}")
    print("Key bytes (little-endian, the ones used to XOR in order):")
    le = K.to_bytes(8, "little")
    print(le.hex())
    print("Key bytes (big-endian):")
    be = K.to_bytes(8, "big")
    print(be.hex())


if __name__ == "__main__":
    main()
