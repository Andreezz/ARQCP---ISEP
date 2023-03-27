#include <stdio.h>
#include "ex17.h"

int main() {
    int a[5] = {1,2,3,4,5};
    int b[5] = {2,4,6,8,9};
    int *pa =  a;
    int *pb = b;

    swap(a, b, 5);
    printf("A --> ");
    for (int i = 0; i < 5; i++) {
        printf("%d | ", pa[i]);
    }
    printf("\nB --> ");
    for (int i=0; i<5; i++){
        printf("%d |", pb[i]);
    }
    return 0;
}