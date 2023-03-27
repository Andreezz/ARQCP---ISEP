#include <stdio.h>
#include "asm.h"

short s1 = 1; // Variável inteira global que será utilizada pela função para fazer a soma
short s2 = 2; // Outra Variável inteira global que será utilizada pela função para fazer a soma

int main(void){
	

  short r = 0; // Variável inteira que recebe o valor a retornar pela função implementada
	
  r = crossSumBytes(); //Chama a função que soma duas variáveis inteiras (short) de forma cruzada
	
  printf("%hd \n", r);
	
  return 0;
}