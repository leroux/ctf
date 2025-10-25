from pwn import *

exe = context.binary = './col'

HOST = 'pwnable.kr'
USER = 'col'
PASS = 'guest'
PORT = 2222

passcode = b'A' * 20

hashcode = 0x21DD09EC

# check_password
# input is char[20]
# iterates over the input as int[5]
# sums those
# and then later is checked against the int 0x21DD09EC
# so what we need to do is make a list of 5 ints that add up to that
# then pack it as le int32 and encode as ascii
#

# 0x21DD09EC / 5 = 113626824.8
# so if we can find a 4-char that decodes to that we can collide
# 


'''
# solution 1
# figured this out manually in ipython then did the explanatory code
#passcode = b'\xc8\xce\xc5\x06' * 4 + b'\xcc\xce\xc5\x06'
# the 5 parts need to sum to `hashcode`
quotient = hashcode // 5
remainder = hashcode % 5
# [quotient][quotient][quotient][quotient][quotient+remainder]
# the quotient 4 times as int32le
passcode = p32(quotient) * 4
# and the last quotient + remainder
passcode += p32(quotient + remainder)
'''

# solution 2
# the minimum int32 containing no null-bytes
non_null_int32 = b'\x01\x01\x01\x01'
leftover = hashcode - u32(non_null_int32) * 4
passcode = p32(leftover) + non_null_int32 * 4

s = ssh(USER, HOST, PORT, PASS, raw=True)
p = s.process([exe, passcode])

p.stream()
