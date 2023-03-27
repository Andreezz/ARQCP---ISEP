#include <stdio.h>
#include "asm.h"

int *ptrvec;
int num = 3;

int main(void){
	
	int vec[] = {201, 2, 34};
	
	ptrvec = vec;
	
	int num_changed_elements = vec_zero();
	
	printf("O número de elementos mudados no vetor é igual a %d\n", num_changed_elements);
	
	return 0;
}
