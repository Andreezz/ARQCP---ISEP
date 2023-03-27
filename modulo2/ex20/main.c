
#include <stdio.h>
#include "asm.h"

int num = 2 ;

int main(void) {
	
	char r = check_num();
	
	printf("Resultado = %d\n", r);
	
	return 0;
}

