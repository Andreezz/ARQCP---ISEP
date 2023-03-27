#include <stdio.h>
#include "ex20.h"


int main (void) {
    char str1[] = "teste a teste aa teste aaa teste";
    //vetor de char que aponta para o vetor str1
    char *s = str1;
    char str2[] = "teste";
    //vetor de char que aponta para o vetor str2
    char *w = str2;
    //vetor para armazenar as palavras encontradas
    char *found[10];

    find_all_words(str1, str2, found);
//String dada e o token que é a palavra que quer ser encontrada
    printf("String: %s, token: %s\n", s, w);

    //percorre o vetor found e diz a quantidade de vezes que o token foi encontrado
    for (int i = 0; *(found+i); i++) {

        printf("%d occurence in %s\n", i + 1, *(found+i));

    }
    //pedro tem de estar 3 vezes no vetor found
    return 0;
}