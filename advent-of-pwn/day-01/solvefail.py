from pwn import *
from pprint import pprint

context.arch = 'amd64'

challbin = open('./check-list', 'rb').read()
challasm = disasm(challbin)
challasm = challasm.split('\n')
print(f'{len(challasm)=}')

key = []

for i in range(0x400, 0, -1):
    offset_hex = hex(i)
    related = []

    def parse(ln: str, op: str) -> (str, str):
        operand = ln.split(',')
        assert len(operand) == 2
        operand = int(operand[1].strip(), 16)
        related.append((op, operand))

    for line in challasm:
        if f'[rbp-{offset_hex}]' in line:
            if 'cmp' in line:
                parse(line, 'cmp')
            elif 'add' in line:
                parse(line, 'add')
            elif 'sub' in line:
                parse(line, 'sub')
            elif 'lea' in line:
                pass
            else:
                print(line)
                asdf
    #pprint(related)

    print(f'{offset_hex=}: {len(related)=}')

    assert related[-1][0] == 'cmp'

    target = related[-1][1]
    print(f'{i=} {hex(target)=}')

    # iterate in reverse skipping the cmp
    for (op, operand) in related[::-1]:
        if op == 'add':
            target = (target - operand) % 256
        elif op == 'sub':
            target = (target + operand) % 256

    key.append(target)
    


keybytes = bytes(key)

open('key', 'wb').write(keybytes)

p = process('./check-list')
p.sendline(keybytes)
p.interactive()
