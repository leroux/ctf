import random
import socket


# Function to reverse engineer the data from the result
def reverse_engineer(result):
    # Brute-force all possible 64-bit random values
    for random_value_1 in range(2**64):
        for random_value_2 in range(2**64):
            # Calculate the combined value
            combined_value = random_value_1 ^ random_value_2

            # Reconstruct the result from the XOR operation
            reconstructed_result = random_value_1 ^ random_value_2 ^ combined_value

            # Check if the reconstructed result matches the received result
            if reconstructed_result == result:
                return random_value_1, random_value_2, combined_value

    # If no match is found (this should not happen with correct data)
    print("No matching random values found.")
    return None, None, None


# Simulate receiving the result from the socket (use the original result value you received)
# In a real scenario, the result is obtained from the debug message over the network
received_result = 0x1234ABCD5678EF00  # Example received result, replace with actual

# Reverse engineer the original random values
random_value_1, random_value_2, combined_value = reverse_engineer(received_result)

# Print the original random values if found
if random_value_1 is not None:
    print(f"Original random_value_1: {hex(random_value_1)}")
    print(f"Original random_value_2: {hex(random_value_2)}")
    print(f"Original combined_value: {hex(combined_value)}")
else:
    print("Failed to reverse engineer the random values.")
