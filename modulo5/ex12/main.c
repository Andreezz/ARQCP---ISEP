#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "main.h"


int main(void) {

    int lines = 10;
    int columns = 2;

    int **resultMatrix;

    resultMatrix = new_matrix(lines, columns);

    printf("resultMatrix: %p\n", resultMatrix);


    // Add random numbers to matix


    int r;
    int h;
    for (r = 0; r < lines; r++) {
        for (h = 0; h < columns; h++) {
            resultMatrix[r][h] = rand() % 99 + 1;
        }
    }


    resultMatrix[0][0] = 10;

    // Print matrix

    int k;
    int j;
    for (k = 0; k < lines; k++) {
        for (j = 0; j < columns; j++) {
            printf("%d ", resultMatrix[k][j]);
        }
        printf("\n");
    }






    int novo_resultado = find_matrix(resultMatrix, 2, 2, 10);

    printf("NOVO RESULTADO: %d", novo_resultado);
    printf("\n");



    // Free memory

    int i;
    for (i = 0; i < lines; i++) {
        free(*(resultMatrix + i));
    }
    free(resultMatrix);

    return 0;
}
