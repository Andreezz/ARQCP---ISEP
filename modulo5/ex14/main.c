#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "main.h"


int main(void) {

    int lines = 4;
    int columns = 9;

    int **resultMatrix;
    int **secondMatrix;
    int **addMatrix;

    resultMatrix = new_matrix(lines, columns);
    secondMatrix =  new_matrix(lines, columns);

    printf("resultMatrix: %p\n", resultMatrix);
    printf("resultMatrix: %p\n", secondMatrix);


    // Add random numbers to matix


    int r;
    int h;
    for (r = 0; r < lines; r++) {
        for (h = 0; h < columns; h++) {
            resultMatrix[r][h] = rand() % 99 + 1;
             secondMatrix[r][h] = rand() % 99 + 1;
        }
    }


    resultMatrix[0][0] = 10;
    secondMatrix[0][0] = 10;

    // Print matrix

    int k;
    int j;
    for (k = 0; k < lines; k++) {
        for (j = 0; j < columns; j++) {
            printf("%d   ", resultMatrix[k][j]);
          
        }
        printf("\n");
    }
    
     printf("\n");
    
     for (k = 0; k < lines; k++) {
        for (j = 0; j < columns; j++) {
       
             printf("%d  ", secondMatrix[k][j]);
        }
        printf("\n");
    }

 printf("\n");


    addMatrix = add_matrixes(resultMatrix,secondMatrix,4,6);
    for (k = 0; k < lines; k++) {
        for (j = 0; j < columns; j++) {
            printf("%d  ", addMatrix[k][j]);
         
        }
        printf("\n");
    }






    // Free memory

    int i;
    for (i = 0; i < lines; i++) {
        free(*(resultMatrix + i));
         free(*(secondMatrix + i));
         // erro 
         free(*(addMatrix+i));
    }
     free(resultMatrix);
     free(secondMatrix);
     //erro
     free(addMatrix);

    return 0;
}
