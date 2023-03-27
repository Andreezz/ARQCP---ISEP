#include <stdio.h>
#include "asm.h"


int main (){

  short r = 0; 
	
  r = crossSumBytes(); 
	
  printf("%hd \n", r);

  return 0;
}