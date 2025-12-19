
from z3 import *

# Create array of 32-bit BitVec variables (indices 0-42)
m = [BitVec(f'm[{i}]', 32) for i in range(43)]

# Build the expression
expr = (
    ((m[6] + m[38] - m[31]) - 
     ((m[3] & ((m[21] ^ m[41]) - ((m[12] | m[13]) * m[26]))) | 
      (m[2] | (m[35] + m[39])))) | 
    (m[20] - (m[4] - m[30]))
)

expr2 = m[10] | m[36]

expr3 = (m[27] ^ m[8]) & m[15]

i0 = m[33]
i1 = m[1]
i2 = m[42]
i3 = m[37]
i2 *= i3
i3 = m[24]
i4 = m[18]
i3 *= i4
i2 ^= i3
i1 *= i2
i2 = m[25]
i1 ^= i2
i0 ^= i1
i1 = m[19]
i0 &= i1
expr4 = i0

a0 = m[0]
a1 = m[28]
a0 ^= a1
expr5 = a0

i0 = m[34]
i1 = m[16]
i0 &= i1
expr6 = i0

i0 = m[22]
i1 = m[29]
i0 &= i1
expr7 = i0

i0 = m[5]
i1 = m[14]
i0 |= i1
expr8 = i0

i0 = m[7]
i1 = m[17]
i0 &= i1
expr9 = i0

i0 = m[40]
i1 = m[9]
i0 -= i1
expr10 = i0

i0 = m[11]
i1 = m[32]
i0 *= i1
i1 = m[23]
i0 -= i1
expr11 = i0

i0 = m[26]
i1 = m[21]
i2 = m[6]
i1 ^= i2
i0 &= i1
expr12 = i0

i0 = m[39]
i1 = m[20]
i0 &= i1
i1 = m[10]
i0 ^= i1
expr13 = i0

i0 = m[35]
i1 = m[40]
i2 = m[19]
i3 = m[9]
i2 -= i3
i3 = m[27]
i2 &= i3
i3 = m[38]
i2 *= i3
i1 |= i2
i0 &= i1
expr14 = i0

i0 = m[1]
i1 = m[41]
i0 &= i1
expr15 = i0

i0 = m[24]
i1 = m[34]
i2 = m[22]
i3 = m[14]
i2 *= i3
i1 *= i2
i0 += i1
i1 = m[29]
i2 = m[23]
i1 ^= i2
i0 -= i1
i1 = m[13]
i0 &= i1
expr16 = i0

i0 = m[5]
i1 = m[17]
i2 = m[30]
i3 = m[33]
i4 = m[18]
i3 += i4
i4 = m[36]
i3 += i4
i4 = m[25]
i3 ^= i4
i2 += i3
i1 -= i2
i0 ^= i1
expr17 = i0

i0 = m[32]
i1 = m[42]
i0 &= i1
i1 = m[4]
i0 *= i1
i1 = m[3]
i2 = m[8]
i1 -= i2
i0 -= i1
expr18 = i0

i0 = m[15]
i1 = m[0]
i2 = m[37]
i1 *= i2
i0 -= i1
expr19 = i0

i0 = m[12]
i1 = m[2]
i0 += i1
expr20 = i0

i0 = m[7]
i1 = m[11]
i0 -= i1
expr21 = i0

i0 = m[16]
i1 = m[28]
i0 |= i1
i1 = m[31]
i2 = m[13]
i1 ^= i2
i0 &= i1
expr22 = i0

i0 = m[37]
i1 = m[24]
i0 -= i1
i1 = m[38]
i0 &= i1
expr23 = i0

i0 = m[23]
i1 = m[12]
i0 *= i1
expr24 = i0

i0 = m[42]
i1 = m[2]
i0 &= i1
expr25 = i0

i0 = m[25]
i1 = m[32]
i0 -= i1
expr26 = i0

i0 = m[30]
i1 = m[5]
i2 = m[17]
i1 &= i2
i0 ^= i1
expr27 = i0

i0 = m[18]
i1 = m[6]
i0 |= i1
expr28 = i0

i0 = m[16]
i1 = m[22]
i0 |= i1
expr29 = i0

i0 = m[29]
i1 = m[14]
i2 = m[3]
i1 *= i2
i2 = m[1]
i1 |= i2
i0 ^= i1
expr30 = i0

i0 = m[10]
i1 = m[7]
i0 += i1
i1 = m[31]
i0 *= i1
i1 = m[33]
i0 ^= i1
expr31 = i0

i0 = m[34]
i1 = m[8]
i2 = m[11]
i1 &= i2
i2 = m[39]
i1 += i2
i0 -= i1
i1 = m[36]
i0 &= i1
expr32 = i0

i0 = m[28]
i1 = m[15]
i2 = m[20]
i1 ^= i2
i0 += i1
i1 = m[21]
i0 ^= i1
i1 = m[40]
i0 *= i1
i1 = m[0]
i2 = m[19]
i1 &= i2
i0 &= i1
expr33 = i0

i0 = m[41]
i1 = m[9]
i0 ^= i1
expr34 = i0

i0 = m[26]
i1 = m[35]
i0 *= i1
i1 = m[4]
i2 = m[27]
i1 -= i2
i0 -= i1
expr35 = i0

i0 = m[37]
i1 = m[22]
i0 &= i1
i1 = m[0]
i0 *= i1
expr36 = i0

i0 = m[3]
i1 = m[10]
i2 = m[9]
i1 += i2
i0 &= i1
i1 = m[34]
i2 = m[36]
i1 |= i2
i0 -= i1
expr37 = i0

i0 = m[28]
i1 = m[24]
i0 += i1
expr38 = i0

i0 = m[26]
i1 = m[39]
i2 = m[12]
i1 |= i2
i0 |= i1
expr39 = i0

i0 = m[6]
i1 = m[27]
i0 -= i1
expr40 = i0

i0 = m[42]
i1 = m[33]
i0 -= i1
expr41 = i0

i0 = m[20]
i1 = m[7]
i2 = m[8]
i3 = m[5]
i4 = m[30]
i3 ^= i4
i2 &= i3
i1 *= i2
i0 -= i1
i1 = m[32]
i2 = m[41]
i1 -= i2
i0 ^= i1
expr42 = i0

i0 = m[11]
i1 = m[29]
i0 -= i1
expr43 = i0

i0 = m[23]
i1 = m[15]
i0 &= i1
expr44 = i0

i0 = m[25]
i1 = m[35]
i0 ^= i1
expr45 = i0

i0 = m[4]
i1 = m[13]
i0 -= i1
expr46 = i0

i0 = m[21]
i1 = m[14]
i0 += i1
expr47 = i0

i0 = m[18]
i1 = m[19]
i2 = m[17]
i1 ^= i2
i2 = m[16]
i1 ^= i2
i2 = m[40]
i1 += i2
i0 |= i1
i1 = m[38]
i0 -= i1
i1 = m[2]
i0 ^= i1
expr48 = i0

i0 = m[31]
i1 = m[1]
i0 -= i1
expr49 = i0

i0 = m[36]
i1 = m[3]
i0 |= i1
expr50 = i0

i0 = m[42]
i1 = m[20]
i2 = m[12]
i3 = m[10]
i2 -= i3
i3 = m[25]
i2 += i3
i1 |= i2
i0 *= i1
expr51 = i0

i0 = m[27]
i1 = m[32]
i2 = m[22]
i3 = m[5]
i2 -= i3
i1 -= i2
i0 -= i1
i1 = m[6]
i0 |= i1
expr52 = i0

i0 = m[14]
i1 = m[4]
i2 = m[31]
i1 *= i2
i0 += i1
expr53 = i0

i0 = m[34]
i1 = m[0]
i0 &= i1
i1 = m[8]
i2 = m[9]
i3 = m[1]
i2 += i3
i1 &= i2
i0 *= i1
i1 = m[11]
i0 -= i1
expr54 = i0

i0 = m[24]
i1 = m[39]
i0 *= i1
expr55 = i0

i0 = m[28]
i1 = m[15]
i0 *= i1
expr56 = i0

i0 = m[40]
i1 = m[41]
i2 = m[17]
i3 = m[30]
i2 += i3
i3 = m[37]
i4 = m[16]
i5 = m[33]
i4 ^= i5
i3 -= i4
i2 ^= i3
i3 = m[18]
i4 = m[21]
i3 &= i4
i4 = m[7]
i3 ^= i4
i2 ^= i3
i1 ^= i2
i0 ^= i1
i1 = m[23]
i0 += i1
expr57 = i0

i0 = m[35]
i1 = m[26]
i0 += i1
expr58 = i0

i0 = m[13]
i1 = m[2]
i2 = m[29]
i1 *= i2
i2 = m[38]
i1 *= i2
i0 *= i1
expr59 = i0

i0 = m[19]
i1 = m[11]
i2 = m[4]
i3 = m[5]
i2 *= i3
i3 = m[8]
i2 &= i3
i3 = m[30]
i2 ^= i3
i1 ^= i2
i0 += i1
expr60 = i0


# Create solver and add constraint
s = Solver()
# Each memory byte is zero-extended to 32 bits
for b in m:
    s.add(ULE(b, 255))
s.add(expr == 110)
s.add(expr2 == 95)
s.add(expr3 == 45)
s.add(expr4 == 100)
s.add(expr5 == 23)
s.add(expr6 == 82)
s.add(expr7 == 48)
s.add(expr8 == 119)
s.add(expr9 == 97)
s.add(expr10 == 24)
s.add(expr11 == 11569)
s.add(expr12 == 0)
s.add(expr13 == 86)
s.add(expr14 == 32)
s.add(expr15 == 33)
s.add(expr16 == 16)
s.add(expr17 == 4294966792)
s.add(expr18 == 9344)
s.add(expr19 == 4294957802)
s.add(expr20 == 216)
s.add(expr21 == 4294967288)
s.add(expr22 == 1)
s.add(expr23 == 0)
s.add(expr24 == 13804)
s.add(expr25 == 97)
s.add(expr26 == 20)
s.add(expr27 == 19)
s.add(expr28 == 126)
s.add(expr29 == 127)
s.add(expr30 == 13390)
s.add(expr31 == 9849)
s.add(expr32 == 95)
s.add(expr33 == 96)
s.add(expr34 == 117)
s.add(expr35 == 2455)
s.add(expr36 == 3104)
s.add(expr37 == 4294967185)
s.add(expr38 == 213)
s.add(expr39 == 119)
s.add(expr40 == 6)
s.add(expr41 == 73)
s.add(expr42 == 4294967096)
s.add(expr43 == 72)
s.add(expr44 == 100)
s.add(expr45 == 64)
s.add(expr46 == 49)
s.add(expr47 == 230)
s.add(expr48 == 223)
s.add(expr49 == 4294967240)
s.add(expr50 == 127)
s.add(expr51 == 31875)
s.add(expr52 == 4294967294)
s.add(expr53 == 5468)
s.add(expr54 == 6117)
s.add(expr55 == 4560)
s.add(expr56 == 12862)
s.add(expr57 == 4294967275)
s.add(expr58 == 99)
s.add(expr59 == 12347712)
s.add(expr60 == 108)

prefix = "amateursCTF{"
for i, char in enumerate(prefix):
    s.add(m[i] == ord(char))

s.add(m[42] == ord('}'))

# Solve
print("Solving...")
if s.check() == sat:
    model = s.model()
    print("\nSolution found!")
    print("=" * 50)
    
    # Get all values from the array
    values = []
    for i in range(43):
        val = model[m[i]]
        if val is not None:
            values.append(val.as_long())
        else:
            values.append(0)  # unconstrained variables default to 0
    
    # Convert to ASCII string
    ascii_string = ''.join(chr(v) for v in values)
    
    print("Decimal values:")
    print(values)
    print("\nASCII string:")
    print(repr(ascii_string))
    print("\nPrintable ASCII:")
    print(ascii_string)
    
    print("=" * 50)
else:
    print("No solution found")
