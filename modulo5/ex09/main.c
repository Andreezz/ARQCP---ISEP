#include <stdio.h>
#include "asm.h"


int main(void)
{

  structB B;
  structA A;

  A.x = 20;
  A.y = (short)4;

  B.a = A;
  B.b = &A;
  B.x = 10;
  B.z = (short) 6;
  B.c = (char) 7;
  B.y = 1;
  B.e[0] = 11;
  B.e[1] = 13;
  B.e[2] = 19;
  
  short result1 = fun1(&B);
  printf("\n|------|\n");
  printf("|  %d  |",result1);
  printf("\n|------|\n");
  
  return 0;
 
}
