#include <stdio.h>
#include "asm.h"

 int op1=1, op2=1;

extern long op3;
extern long op4;
int main(void) {
  

long res=sum_v3();

printf("sum = %ld:0x%lx\n", res,res);

return 0;
}