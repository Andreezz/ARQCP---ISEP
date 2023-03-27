#include <stdio.h>
#include "asm.h"


int *ptrvec;
int x;
int num = 4;

int main(void){
	
	int vec[] = {16, 14, 2, 14};
	
	ptrvec = vec;
	
	
int no_duplicates = vec_diff();
	
	printf("O número de elementos no vetor que não tem duplicados é igual a %d.\n", no_duplicates);
	
	return 0;
}
