#include "ex16.h"
#include <stdio.h>
#include <stdlib.h>

int main() {
    char str1[100], str2[100];

    printf("Escreve uma frase: ");
    scanf("%[^\n]s", str1);

    while ((getchar()) != '\n'); // // to flush the input buffer

    printf("Escreve outra frase: ");
    scanf("%[^\n]s", str2);

    if(where_exists(str1, str2) == NULL){
        printf("A primeira frase não está contida na segunda.\n");
    }
    else{
        printf("A primeira frase está contida na segunda.\n");
    }

    return 0;
}
