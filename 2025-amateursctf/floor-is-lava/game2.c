#include <stdio.h>
#include <stdlib.h>

void print_binary(unsigned char val) {
    for (int i = 7; i >= 0; i--) {
        printf("%d", (val >> i) & 1);
    }
}

int main() {
    unsigned char initial_maze[8] = {0x8b, 0xc9, 0x92, 0x08, 0xf9, 0x91, 0xd6, 0xc8};
    
    printf("=== MAZE CHECKPOINTS ===\n\n");
    printf("Initial maze state:\n");
    for (int row = 0; row < 8; row++) {
        printf("Row %d: 0x%02x = ", row, initial_maze[row]);
        print_binary(initial_maze[row]);
        printf("\n");
    }
    
    printf("\n=== TARGET VALUES ===\n\n");
    for (int row = 0; row < 8; row++) {
        int seed = row * 0x1337 - 0x21524111;
        srand(seed);
        unsigned char expected = rand() & 0xFF;
        
        printf("Row %d:\n", row);
        printf("  Start:  0x%02x = ", initial_maze[row]);
        print_binary(initial_maze[row]);
        printf("\n");
        printf("  Target: 0x%02x = ", expected);
        print_binary(expected);
        printf("\n");
        
        unsigned char xor_val = initial_maze[row] ^ expected;
        printf("  XOR:    0x%02x = ", xor_val);
        print_binary(xor_val);
        printf("  <- Toggle these bits\n");
        
        printf("  Positions to toggle in row %d: ", row);
        int first = 1;
        for (int col = 0; col < 8; col++) {
            if (xor_val & (1 << col)) {
                if (!first) printf(", ");
                printf("(%d,%d)", col, row);
                first = 0;
            }
        }
        if (first) printf("(none)");
        printf("\n\n");
    }
    
    printf("=== SUMMARY ===\n");
    printf("Legend: █ = bit ON (1), · = bit OFF (0)\n");
    printf("@ = your position\n\n");
    
    printf("You need to toggle specific positions to transform\n");
    printf("each row from its initial state to the target state.\n");
    printf("Each time you move to a position, that bit gets toggled (XOR).\n");
    printf("You have exactly 28 moves to do this!\n");
    
    return 0;
}
