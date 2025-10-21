from pwn import *

from derive_k_from_time import derive_K_from_minute_epoch


def generate_key(timeint: int):
    debugserv = listen(0xBAD7)

    io = process(["faketime", f"@{timeint}", "./shadow_protocol"])
    io.readuntil(
        "[SPACE] A cosmic signal has been scrambled using the Shadow Protocol at time: "
    )
    seedtime = int(io.readline().decode("l1").strip("\n."))
    print(f"{seedtime=}")

    io.sendline()
    io.readall()

    debugkey = debugserv.readall().decode("l1").strip()
    print(f"{debugkey=}")

    return int(debugkey)


io = remote("chals.ctf.csaw.io", 21002)
io.readuntil(
    "[SPACE] A cosmic signal has been scrambled using the Shadow Protocol at time: "
)
seedtime = int(io.readline().decode("l1").strip("\n."))
print(f"{seedtime=}")

io.readuntil("[SPACE] Encrypted message:")
io.readline()
encrypted_hex = io.readline().decode("l1").strip()
encrypted = bytes.fromhex(encrypted_hex)
print(f"{encrypted=}")

K = generate_key(seedtime)
print(f"{K=}")

key = [(K >> (8 * i)) & 0xFF for i in range(8)]
pt = bytes(c ^ key[i % 8] for i, c in enumerate(encrypted))
print(pt.decode("utf-8", errors="replace"))
