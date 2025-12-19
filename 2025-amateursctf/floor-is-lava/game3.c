#include <stdio.h>
#include <stdlib.h>

unsigned char initial_maze[8] = {0x8b, 0xc9, 0x92, 0x08, 0xf9, 0x91, 0xd6, 0xc8};

void print_grid(unsigned char maze[8], const char* title) {
    printf("%s\n", title);
    printf("  0 1 2 3 4 5 6 7\n");
    for (int y = 0; y < 8; y++) {
        printf("%d ", y);
        for (int x = 0; x < 8; x++) {
            if (maze[y] & (1 << x)) {
                printf("█ ");
            } else {
                printf("· ");
            }
        }
        printf(" (0x%02x)\n", maze[y]);
    }
    printf("\n");
}

int main() {
    printf("=== MAZE PUZZLE - VISUAL GUIDE ===\n\n");
    
    // Calculate target
    unsigned char target_maze[8];
    for (int row = 0; row < 8; row++) {
        int seed = row * 0x1337 - 0x21524111;
        srand(seed);
        target_maze[row] = rand() & 0xFF;
    }
    
    // Show initial state
    print_grid(initial_maze, "INITIAL STATE (where you start):");
    
    // Show target state
    print_grid(target_maze, "TARGET STATE (where you need to be):");
    
    // Show positions to toggle
    printf("POSITIONS TO TOGGLE (visit odd number of times):\n");
    printf("  0 1 2 3 4 5 6 7\n");
    int toggle_count = 0;
    for (int y = 0; y < 8; y++) {
        printf("%d ", y);
        unsigned char xor_val = initial_maze[y] ^ target_maze[y];
        for (int x = 0; x < 8; x++) {
            if (xor_val & (1 << x)) {
                printf("X ");
                toggle_count++;
            } else {
                printf("· ");
            }
        }
        printf("\n");
    }
    
    printf("\nTotal positions to toggle: %d\n", toggle_count);
    printf("Total moves available: 28\n");
    printf("Starting position: (0, 0)\n\n");
    
    printf("LEGEND:\n");
    printf("  █ = bit ON\n");
    printf("  · = bit OFF\n");
    printf("  X = need to toggle this position\n\n");
    
    printf("RULES:\n");
    printf("- You start at (0, 0)\n");
    printf("- Use w/a/s/d to move (up/left/down/right)\n");
    printf("- Grid wraps around (8x8)\n");
    printf("- Each position you land on gets toggled\n");
    printf("- You have exactly 28 moves\n");
    printf("- Visit each 'X' position an odd number of times (1, 3, 5...)\n");
    printf("- Don't toggle non-X positions (visit 0 or even times)\n\n");
    
    // List all toggle positions
    printf("POSITIONS TO VISIT (odd times):\n");
    for (int y = 0; y < 8; y++) {
        unsigned char xor_val = initial_maze[y] ^ target_maze[y];
        for (int x = 0; x < 8; x++) {
            if (xor_val & (1 << x)) {
                printf("  (%d, %d)\n", x, y);
            }
        }
    }
    
    return 0;
}
