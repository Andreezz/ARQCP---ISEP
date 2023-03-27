#include <stdio.h>
#include "test_equal.h"
 
int main(void){
	
	char *a;
	char *b;
	char string1[] = "bruhh";
	char string2[] = "bruhh";
	int resultado;
	
	a = string1;
	b = string2;
	resultado = test_equal(a,b);
	if(resultado == 1){
		printf("As strings são iguais.");
	}else{
		printf("As strings são diferentes.");
	}
	
	return 0;
}