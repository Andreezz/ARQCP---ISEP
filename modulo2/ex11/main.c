#include <stdio.h>
#include "asm.h"

int op1 = 0;
int op2 = 0;

int main()
{

    int r = test_flags();

    printf("%d \n", r);

}