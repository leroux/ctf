import os
import hashlib
from pwn import *

#flag = open("flag.txt", "rb").read()
flag = b"amateursCTF{" + b'Z'*(47-12-1) + b'}'
assert len(flag) == 47 # just an fyi
print(f'{len(flag)=}')

class stream():
    def __init__(self, seed = os.urandom(8)):
        print('====seed====')
        print(hexdump(seed))
        # sha256 only generates 32 bytes
        # length is flag restriction does not do anything
        self.state = hashlib.sha256(str(seed).encode()).digest()[:len(flag)]
        print(f'{len(self.state)=}')
        print('====self.state====')
        print(hexdump(self.state))
    
    def next(self):
        out = self.state[0]
        print('====out====')
        print(hexdump(out))
        self.state = self.state[1:] + bytes([(out + 1) % 256])
        print('====self.state====')
        print(hexdump(self.state))
        return out
    
    def get_bytes(self, num):
        return bytes(self.next()for _ in range(num))


def xor(a, b):
    assert len(a) == len(b)
    return bytes(i^j for i,j in zip(a,b))

def encrypt(x):
    encryptout = xor(x := x.strip(), rng.get_bytes(len(x)))
    print('=========encryptout=======')
    print(hexdump(encryptout))
    return encryptout


rng = stream()
open("out2.txt", "w").write(b''.join(encrypt(os.urandom(2))for _ in range(10000)).hex() + encrypt(flag).hex())
