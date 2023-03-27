#include <stdio.h>
#include <stdlib.h>

// sums two matrixes a and b of dimensions y x k and returns the address of a dynamically created matrix that stores the result
int **add_matrixes(int **a, int **b, int y, int k) {
    // allocate memory for the result matrix
    int **resultado = malloc(y * sizeof(int *));
    if (resultado == NULL) {
        return NULL;
    }
    for (int i = 0; i < y; i++) {
        resultado[i] = malloc(k * sizeof(int));
        if (resultado[i] == NULL) {
            return NULL;
        }
    }

    // sum the elements of the two input matrixes and store the results in the result matrix
    for (int i = 0; i < y; i++) {
        for (int j = 0; j < k; j++) {
            resultado[i][j] = a[i][j] + b[i][j];
        }
    }

    // return the address of the result matrix
    return resultado;
}
