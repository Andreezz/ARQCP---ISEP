#include <stdio.h>
#include "ex06.h"

int main(){

    int x = 2;
    int y = 8;

    printf("%d^%d =", x, y);

    power_ref(&x, y);

    printf(" %d\n", x);

    return 0;

}