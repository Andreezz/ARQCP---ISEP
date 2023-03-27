#include <stdio.h>
#include "ex03.h"

int main(){

    int sum = 0;
    int vec[4] = {2, 3, 5, 7};
    int *ptr2;
    ptr2 = vec;
    sum = sum_even(ptr2, 4);
    
    printf("Sum --> %d\n", sum);

}