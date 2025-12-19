import ctypes

# Data from the binary
checkpoint_data = bytes([0x8b, 0xc9, 0x92, 0x08, 0xf9, 0x91, 0xd6, 0xc8])
encrypted_flag = bytes([0xd6, 0xb2, 0x05, 0x20, 0x95, 0x5b, 0x1a, 0xbe, 
                       0x4e, 0x70, 0x5f, 0x60, 0xf9, 0x74, 0x51, 0xee, 
                       0x69, 0x56, 0x8c, 0x6a, 0xc1])

# Verify the checkpoint values match
libc = ctypes.CDLL(None)
for checkpoint in range(8):
    seed = checkpoint * 0x1337 - 0x21524111
    libc.srand(seed)
    expected = checkpoint_data[checkpoint]
    actual = libc.rand() & 0xFF
    print(f"Checkpoint {checkpoint}: seed={seed:#x}, expected={expected:#x}, actual={actual:#x}, match={expected==actual}")
