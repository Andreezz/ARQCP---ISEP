#include "ex19.h"
#include <stdio.h>


char *find_word(char *word, char *initial_addr) {
    int i;
    while (*initial_addr) {
        for (i = 0; *(word + i) && toLower(*(word + i)) == toLower(*(initial_addr + i)); i++);
        if (*(word + i) == 0) {
            return initial_addr;
        }

        initial_addr++;
    }

    return NULL;
}

char toLower(char ch) {
    return (ch >= 'A' && ch <= 'Z') ? ch + 'a' - 'A' : ch;
}
