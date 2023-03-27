#include <stdio.h>
#include "asm.h"


long *ptrvec;
int num = 5;

int main(void){
	
	long array[5] = {22,2,1,7,8};
	ptrvec = array;
	
	int resultado = vec_greater10();
	
	printf("\nQuantidade de elementos maiores que 10 --> %d\n", resultado);
	
	return 0;
}