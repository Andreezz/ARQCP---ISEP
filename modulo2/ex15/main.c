#include <stdio.h>
#include "asm.h"

int A = 2;
int B = 2;
int C = 2;
int D = 2;
int main(void)
{

    int r = compute();
    printf("Result --> %d\n", r);

}