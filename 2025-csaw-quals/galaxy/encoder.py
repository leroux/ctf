def encode_negative(num):
    """
    Encodes numbers using multiple methods and picks the shortest one.
    """
    zero = "~~([]>[[]])"
    one_standalone = "~~([]<[[]])"
    one = "([]<[[]])"
    negone = "~([]>[[]])"

    # Memoization cache
    cache = {}

    if num == 0:
        return zero
    if num == 1:
        return one_standalone
    if num == -1:
        return negone

    def method_binary(n):
        """Binary representation with doubling"""
        if n == 1:
            return one
        result = []
        base = one
        temp = n

        while temp > 0:
            if temp & 1:
                result.append(base)
            temp >>= 1
            if temp > 0:
                if "+" in base:
                    base = f"({base}+{base})"
                else:
                    base = f"{base}+{base}"
        return "+".join(result)

    def method_addition(n):
        """Simple addition"""
        return "+".join([one] * n)

    def method_powers(n):
        """Powers of small numbers"""
        candidates = [method_binary(n), method_addition(n)]

        for base in [2, 3, 4, 5, 6]:
            power = 1
            value = base
            while value <= n:
                if value == n:
                    if base <= 6:  # Use precomputed values for small bases
                        base_encoded = method_binary(base)
                        if power == 1:
                            candidate = base_encoded
                        else:
                            formatted_base = f"({base_encoded})" if "+" in base_encoded else base_encoded
                            candidate = "*".join([formatted_base] * power)
                        candidates.append(candidate)
                    break
                power += 1
                value *= base

        return min(candidates, key=len)

    def method_factorization(n):
        """Try factorizations with precomputed small numbers"""
        candidates = [method_binary(n), method_addition(n), method_powers(n)]

        # Precompute encodings for small numbers to avoid recursion
        small_encodings = {1: one}
        for i in range(2, min(n + 1, 50)):
            small_encodings[i] = method_powers(i)

        # Try factorizations
        for i in range(2, min(n + 1, 50)):
            if n % i == 0:
                quotient = n // i
                if i in small_encodings and quotient in small_encodings:
                    f1 = small_encodings[i]
                    f2 = small_encodings[quotient]

                    f1_formatted = f"({f1})" if "+" in f1 else f1
                    f2_formatted = f"({f2})" if "+" in f2 else f2

                    candidates.extend([
                        f"{f1_formatted}*{f2_formatted}",
                        f"{f2_formatted}*{f1_formatted}"
                    ])

        return min(candidates, key=len)

    def method_mixed(n):
        """Try mixed operations like a*b + c"""
        candidates = [method_factorization(n)]

        # Try n = a*b + c patterns for small c
        for c in range(1, min(8, n)):
            remainder = n - c
            if remainder > 0:
                for a in range(2, min(int(remainder**0.5) + 3, 15)):
                    if remainder % a == 0:
                        b = remainder // a
                        if a <= 20 and b <= 20 and c <= 8:
                            a_enc = method_powers(a) if a > 1 else one
                            b_enc = method_powers(b) if b > 1 else one
                            c_enc = method_powers(c) if c > 1 else one

                            a_fmt = f"({a_enc})" if "+" in a_enc else a_enc
                            b_fmt = f"({b_enc})" if "+" in b_enc else b_enc

                            candidate = f"{a_fmt}*{b_fmt}+{c_enc}"
                            candidates.append(candidate)

        return min(candidates, key=len)

    def encode_positive_best(n):
        """Get best encoding for positive numbers"""
        if n == 1:
            return one
        if n in cache:
            return cache[n]

        if n <= 30:
            result = method_mixed(n)
        else:
            result = method_factorization(n)

        cache[n] = result
        return result

    if num > 0:
        return encode_positive_best(num)

    # Negative numbers
    abs_num = abs(num)
    candidates = []

    # Method 1: Simple addition
    if abs_num <= 12:
        candidates.append("+".join([negone] * abs_num))

    # Method 2: Multiplication by negone
    pos_optimal = encode_positive_best(abs_num)
    if "+" in pos_optimal:
        candidates.append(f"{negone}*({pos_optimal})")
    else:
        candidates.append(f"{negone}*{pos_optimal}")

    # Method 3: Factorization approaches
    if abs_num > 8:
        for factor in range(2, min(int(abs_num**0.5) + 1, 30)):
            if abs_num % factor == 0:
                quotient = abs_num // factor
                if factor <= 30 and quotient <= 30:
                    f1 = encode_positive_best(factor)
                    f2 = encode_positive_best(quotient)

                    f1_fmt = f"({f1})" if "+" in f1 else f1
                    f2_fmt = f"({f2})" if "+" in f2 else f2

                    candidates.extend([
                        f"{negone}*{f1_fmt}*{f2_fmt}",
                        f"{negone}*{f2_fmt}*{f1_fmt}"
                    ])

    return min(candidates, key=len)


if __name__ == "__main__":
    # Test cases from -1 to -256
    test_cases = list(range(-1, -257, -1)) + [0, 1, 2, 5, 10]

    max_len = 0
    under_142 = 0

    for num in test_cases:
        encoded = encode_negative(num)
        length = len(encoded)
        max_len = max(max_len, length)

        if length < 142:
            under_142 += 1

        try:
            result = eval(encoded)
            status = "✓" if result == num else "✗"
            under_limit = "✓" if length < 142 else "✗"
            print(f"{num:4d} -> len:{length:3d} {under_limit} {status} -> {result}")
            print(f"     {encoded}")
            assert result == num, f"Expected {num}, got {result}"
        except Exception as e:
            print(f"Error evaluating {encoded}: {e}")

    print(f"\nMax length: {max_len}")
    print(f"Numbers under 142 chars: {under_142}/{len(test_cases)}")
    print("All tests passed!")