import base64
import binascii

start = open('start.txt', 'rb').read().decode('l1')
start2 = start.split(' ')
start3 = [int(x, 2) for x in start2]
print(start3)
start4 = ''.join(chr(x) for x in start3)
print(start4)
start5 = binascii.unhexlify(start4)
print(start5)
start6 = base64.b64decode(start5)
print(start6)
