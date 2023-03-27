#include <stdio.h>
#include "asm.h"

char byte1;
char byte2;
int main(){

  byte1 = 's';
  byte2 = 'a';

  short res= concatBytes();

  printf("Resultado = %hd \n",res);

  return 0;
}