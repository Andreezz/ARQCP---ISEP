#include <stdio.h>
#include "ex08.h"

int main(){

    int vector[] = {-1, 0, 2, -4, 4};
    int size=sizeof (vector)/sizeof (vector[0]); //tamanho do array
    int *p;
    p = &vector;

    printf("\nThe numbers in the original order are: \n");
    for (int i = 0; i < size; i++){

        printf("%d\n ", *(p+i));


    }

    array_sort2(p, size);

    return 0;

}