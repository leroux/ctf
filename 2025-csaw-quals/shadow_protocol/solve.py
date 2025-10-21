"""
shadow_protocol

---
root@d80b5e5c46ec:/mnt# ./shadow_protocol
        ✦         .       *        .      ✦
   ✦        .     SHADOW PROTOCOL INITIATED     .       ✦
        *        ✦       .       ✶        .

[SPACE] A cosmic signal has been scrambled using the Shadow Protocol at time: 1757821800.
[SPACE] Encrypted message:
E75DFF9EAA4248D5E241F18BA84453

[SPACE] Transmission complete.
---

- uses time() as RNG seed then uses 2 rand()s to derive key material
- prints the time() return
- encrypts flag.txt and prints that
- additionally, its debug() sends the key material to tcp 0xbad7

decrypting is easy procedure at the end of this file

we have 2 solutions:
- solve_faketime.py: treat shadow_protocol as a key generator by controlling time() return with faketime
  then read output off tcp 0xbad7. the solve is get remote/time, use remote/time as local/time with faketime,
  generate the key locally, then decrypt remote/encryptedmsg with that key. bam.
- solve.py: re-implement the key generator in python in derive_k_from_time.py.

We initially solved with the python impl and then figured out faketime.
"""

from pwn import *

from derive_k_from_time import derive_K_from_minute_epoch

debugserv = listen(0xBAD7)

# io = process("./shadow_protocol")
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

# debugkey = debugserv.readall().decode("l1").strip()
# print(f"{debugkey=}")

K = derive_K_from_minute_epoch(seedtime)
print(f"{K=}")

key = [(K >> (8 * i)) & 0xFF for i in range(8)]
pt = bytes(c ^ key[i % 8] for i, c in enumerate(encrypted))
print(pt.decode("utf-8", errors="replace"))
