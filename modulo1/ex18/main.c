#include <stdio.h>
#include "ex18.h"

int main() {
    short vec1[4] = {1, 2, 3, 4};
    int vec_size = sizeof(vec1) / sizeof(vec1[0]);
    //o vetor de short é criado apenas com 2 casas pois como um short ocupa 2 bytes e um inteiro ocupa 4 ,
    // apenas é pricos 2 inteiros para guardar 4 shorts
    int vec2[2];

    //igualar o vetor ao apontado do mesmo
    short *ptr1 = vec1;
    int *pt2 = vec2;

    compress_shorts(ptr1, vec_size, pt2);
    //como short tem apenas 2 bytes o vec_size tem de ser metade pois um int é 4 bytes
    for (int i = 0; i < vec_size / 2; i++) {
        printf("%d ", vec2[i]);
    }
    return 0;
}