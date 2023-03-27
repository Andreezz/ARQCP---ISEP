#include <stdio.h>
#include "ex02.h"

int main(){
    int A[] = {1,2,3,4,5};
    int B[] = {6,7,8,9,10};
    printf("Before--> %d, %d, %d, %d, %d", B[0],B[1],B[2],B[3],B[4]);
    copy_vec(A, B, 5);
    printf("\nAfter--> %d, %d, %d, %d, %d", B[0],B[1],B[2],B[3],B[4]);
    return 0;
}