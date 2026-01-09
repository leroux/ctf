from pwn import *

context.binary = '/challenge/check-list'

gdbscript = '''
b *0xaa1454
c
gcore core
exit
'''
dbg = gdb.debug(context.binary.path, gdbscript=gdbscript)

dbg.sendline(bytes(1024))

dbg.close()

core = Core('./core')
bufaddr = core.registers['rbp']-0x400
buf = core.read(bufaddr, 0x400)

print(hexdump(buf))


challbin = open('./check-list', 'rb').read()
challasm = disasm(challbin)
challasm = challasm.split('\n')
print(f'{len(challasm)=}')

target = b''

cmpfound = False
for line in challasm:
    if 'cmp' in line:
        if line.endswith('al') or 'ah' in line:
            continue
        print(line)
        operand = line.split(',')
        assert len(operand) == 2
        operand = int(operand[1].strip(), 16)
        operandbytes = operand.to_bytes()
        assert len(operandbytes) == 1
        target += operand.to_bytes()

        if '[rbp-0x1]' in line:
            break

assert len(target) == 0x400

print(hexdump(target))

print(len(target))

key = b''
for i in range(0, 0x400):
    d = target[i] - buf[i]
    key += (d % 256).to_bytes()

print(hexdump(key))
open('key2', 'wb').write(key)

p = process('/challenge/check-list')
p.sendline(key)
p.stream()
