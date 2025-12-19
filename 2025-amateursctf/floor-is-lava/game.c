#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Initial maze and encrypted flag from the binary
unsigned char data_404010[8] = {0x8b, 0xc9, 0x92, 0x08, 0xf9, 0x91, 0xd6, 0xc8};
unsigned char data_404020[21] = {0xd6, 0xb2, 0x05, 0x20, 0x95, 0x5b, 0x1a, 0xbe, 
                                 0x4e, 0x70, 0x5f, 0x60, 0xf9, 0x74, 0x51, 0xee, 
                                 0x69, 0x56, 0x8c, 0x6a, 0xc1};

// Game state
unsigned char data_404050 = 0;  // x position
unsigned char data_404051 = 0;  // y position
unsigned char data_404060[28];  // move buffer
unsigned char* data_404038 = data_404060;  // pointer to move buffer

void print_grid() {
    printf("\n  0 1 2 3 4 5 6 7\n");
    for (int row = 0; row < 8; row++) {
        printf("%d ", row);
        for (int col = 0; col < 8; col++) {
            if (col == data_404050 && row == data_404051) {
                printf("@ ");  // Player position
            } else if (data_404010[row] & (1 << col)) {
                printf("█ ");  // Bit is set
            } else {
                printf("· ");  // Bit is clear
            }
        }
        printf(" 0x%02x\n", data_404010[row]);
    }
    printf("\nPosition: (%d, %d)\n", data_404050, data_404051);
}

int main() {
    printf("=== MAZE GAME ===\n");
    printf("Navigate using: w (up), a (left), s (down), d (right)\n");
    printf("You have 28 moves. Good luck!\n");
    
    int i = 0;
    
    while (i <= 0x1b) {  // 28 moves (0-27)
        printf("\n--- Move %d/28 ---", i + 1);
        print_grid();
        printf("> ");
        
        char j;
        do {
            j = getchar();
        } while (j == '\n');
        
        if (j == 'w') {
            data_404051 -= 1;
            *data_404038 = 0;
            data_404038++;
        }
        else if (j == 'a') {
            data_404050 -= 1;
            *data_404038 = 1;
            data_404038++;
        }
        else if (j == 's') {
            data_404051 += 1;
            *data_404038 = 2;
            data_404038++;
        }
        else if (j == 'd') {
            data_404050 += 1;
            *data_404038 = 3;
            data_404038++;
        }
        else {
            printf("Invalid input! Use w/a/s/d\n");
            continue;
        }
        
        // Wrap positions to 0-7
        data_404050 &= 0x7;
        data_404051 &= 0x7;
        
        // Toggle bit at current position
        data_404010[data_404051] ^= (1 << data_404050);
        
        i++;
    }
    
    printf("\n--- Final Grid ---");
    print_grid();
    
    // Validation
    printf("\n=== VALIDATION ===\n");
    int var_24 = 0;
    
    while (1) {
        if (var_24 > 7) {
            // Success! Decrypt flag
            printf("\n✓ All checkpoints passed!\n\n");
            
            // Pack moves
            long long var_18_1 = 0;
            for (int i_1 = 0; i_1 <= 0x1b; i_1++) {
                var_18_1 = data_404060[i_1] | (var_18_1 << 2);
            }
            
            // XOR with offset
            unsigned int* ptr = (unsigned int*)&var_18_1;
            unsigned int seed = ptr[0] ^ ptr[1];
            
            // Decrypt flag
            srand(seed);
            for (int i_2 = 0; i_2 <= 0x14; i_2++) {
                data_404020[i_2] ^= rand();
            }
            
            printf("you made it across!\n");
            printf("here's your reward:\n");
            printf("amateursCTF{%s}\n", data_404020);
            break;
        }
        
        int seed = var_24 * 0x1337 - 0x21524111;
        srand(seed);
        unsigned char expected = rand() & 0xFF;
        
        printf("Row %d: actual=0x%02x, expected=0x%02x ", 
               var_24, data_404010[var_24], expected);
        
        if (expected != data_404010[var_24]) {
            printf("✗\n\nyou fell into lava\n");
            break;
        }
        
        printf("✓\n");
        var_24++;
    }
    
    return 0;
}
