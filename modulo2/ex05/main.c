#include <stdio.h>
#include "asm.h"

short s = 1;

int main(void){

  s = swapBytes();
  printf("\n|-------------------------------\n");
  printf("|Short alteration --> %hd\n", s);
  printf("|-------------------------------\n");	
  return 0;	
}