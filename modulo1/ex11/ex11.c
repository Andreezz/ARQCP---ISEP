#include <stdio.h>
#include "ex11.h"

#define MAX 100


int palindrome(char *str) {

    int size = 0;
    char newString[MAX] = "";

    for (int i = 0; *(str+i) != '\0'; i++) {

        if (*(str+i) >= 'a' && *(str+i) <= 'z') {
            newString[size] = *(str+i);
            size++;
        }

        if(*(str+i) >= 'A' && *(str+i) <= 'Z') {
            newString[size] = *(str+i) + 32;
            size++;
        }
    }

    if (size == 0) {
        return 0;
    }

    if (size % 2 == 0) {
        for (int i = 0; i < size / 2; i++) { // if para numeros pares
            if (newString[i] != newString[size - 1 - i]) {
                printf("\n|-------------------|\n");
                printf("|Is not a palindrome|\n");
                printf("|-------------------|\n");
                return 0;
            }
        }
    } else {
        for (int i = 0; i != size - 1 - i; i++) { // if para numeros ímpares
            if (newString[i] != newString[size - 1 - i]) {
                printf("\n|-------------------|\n");
                printf("|Is not a palindrome|\n");
                printf("|-------------------|\n");
                return 0;
            }
        }
    }
    printf("\n|-------------|\n");
    printf("|Is palindrome|\n");
    printf("|-------------|\n");

    return 1;
}
