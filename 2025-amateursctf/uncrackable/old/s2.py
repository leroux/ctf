from pwn import *

ct = open('out.txt', 'rb').read()
#ct = open('out2.txt', 'rb').read()
ct = unhex(ct)
#print(hexdump(ct))

flagct = ct[-47:]
assert len(flagct) == 47
print('=======flagct========')
print(hexdump(flagct))

randomct = ct[:-47]
print(len(randomct))

# state is 32bytes
# flag is 47 bytes

knownpt = b'amateursCTF{'
#knownpt =  b'my_name_is_{' + b'\x00' * (47-12-1) + b'}'
print('=========knownpt===========')
print(hexdump(knownpt))
#assert len(flagct) == len(knownpt)
partial_key = xor(flagct, knownpt)
print('========partial_key=========')
print(hexdump(partial_key))

partial_key_inc = bytes((b + 1) % 256 for b in partial_key)
dc = xor(flagct[32:], partial_key_inc)
print(dc)

