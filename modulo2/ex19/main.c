#include <stdio.h>
#include "asm.h"

short current = 90, desired = 100;


int main(){
    short r = needed_time();
    printf("Needed time --> %hd\n", r);
    return 0;

}