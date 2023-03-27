#include <stdio.h>
#include "ex19.h"

int main() {
    char str[] = "Hello World!!";
    char str2[] = "ld";
    char *s = str;
    char *w = str2;
    char *found;

    found = find_word(str2, str);

    printf("Frase original: %s, chave: %s, resultado: %s\n", s, w, found);

    return 0;


}