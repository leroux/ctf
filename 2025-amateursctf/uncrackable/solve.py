import os
import hashlib

from pwn import *



class stream():
    def __init__(self, seed):
        self.state = hashlib.sha256(str(seed).encode()).digest()[:len(flag)]
    
    def next(self):
        out = self.state[0]
        self.state = self.state[1:] + bytes([(out + 1) % 256])
        return out
    
    def get_bytes(self, num):
        return bytes(self.next()for _ in range(num))


def xor(a, b):
    assert len(a) == len(b)
    return bytes(i^j for i,j in zip(a,b))

def encrypt(x, rng):
    return xor(x := x.strip(), rng.get_bytes(len(x)))

def encrypt_and_write(fname: str, data: bytes):
    rng = stream(os.urandom(8))
    open(fname, "w").write(b''.join(encrypt(os.urandom(2), rng)for _ in range(10000)).hex() + encrypt(flag, rng).hex())


#flag = open("flag.txt", "rb").read()
prefix = b'amateursCTF{'
suffix = b'}'
filler = b'A' * (47 - len(prefix+suffix))
flag = prefix + filler + suffix
print(f'{flag=}')
assert len(flag) == 47 # just an fyi

encrypt_and_write("testflag.bin", flag)

ct = open('testflag.bin', 'rb').read()
ct = unhex(ct)

'''
flagct = ct[-47:]
print('======flagct====')
print(hexdump(flagct))

known_pt = prefix + b'\x00' * (47-len(prefix+suffix)) + suffix
assert len(known_pt) == 47
print('====known_pt====')
print(hexdump(known_pt))

key = xor(flagct, known_pt)
print('====key====')
print(hexdump(key))
'''

#state = run the seed
K = lambda st, i: bytes([(st[i % 32] + (i // 32)) % 256])



# test rng
#rng = stream(seed)
#for i in range(40100):
#    print(f'{rng.get_bytes(1)=} {K(state, i)=}')

K = lambda st, i: bytes([(st[i % 32] + (i // 32)) % 256])

#state_to_break = hashlib.sha256(str(b'\x19\x15\x01\x00').encode()).digest()[:len(flag)]
state_to_break = b'\x00' * 32

def test_seed(seed: bytes):
    #state = hashlib.sha256(str(seed).encode()).digest()[:len(flag)]
    state = seed

    '''
    # set up state for K
    seed2 = str(seed)
    print(f'{seed2=} {len(seed2)=}')
    seed3 = seed2.encode()
    print(f'{seed3=} {len(seed3)=}')
    # sha256().digest() only outputs 32 bytes
    # so trim to 47 bytes does absolutely nothing
    digest = hashlib.sha256(seed3).digest()
    print(f'{digest=} {len(digest)=}')
    state = digest[:len(flag)]

    #flag_prefix_start_offset = len(ct) - 47
    flag_prefix_start_offset = 10_000
    print(f'{flag_prefix_start_offset=}')
    #flag_prefix_end_offset = len(ct) - 47 + len(prefix)
    flag_prefix_end_offset = 10_100

    # exhaust a bunch of bytes
    rng.get_bytes(flag_prefix_start_offset)
    print('=====rng.state====')
    print(rng.state)

    '''

    #flag_prefix_start_offset = len(ct) - 47
    flag_prefix_start_offset = 0
    #print(f'{flag_prefix_start_offset=}')
    #flag_prefix_end_offset = len(ct) - 47 + len(prefix)
    flag_prefix_end_offset = 13

    for i in range(flag_prefix_start_offset, flag_prefix_end_offset):
        #Kbyte = K(state, i)
        chalbyte1 = K(state, i)
        chalbyte2 = K(state_to_break, i)
        #print(f'{chalbyte1=} {chalbyte2=}')
        if chalbyte1 != chalbyte2:
            return False

    return True


for i in range(2**32):
    seed = p32(i, 'big', sign='unsigned')
    if i % 1_000_000 == 0:
        print(f'{i}: {seed}')
    #print(f'{seed=}')
    res = test_seed(seed)
    if res:
        print('win')
        print(hexdump(seed))
        break
