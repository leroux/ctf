from pwn import *

io = process('./chal')

# 27 char input max

for i in range(100):
    print(i)
    io.sendline("a"*27)
    print(io.clean())

io.interactive()
