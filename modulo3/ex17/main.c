#include <stdio.h>
#include "asm.h"

short array[] = {1,3,6,2,8};
short *ptrvec = array;
int num = 5;

int main(void){
	int i;

	
	printf("\nArray inicial:\n");
	for(i = 0; i < num; i++){
		printf("Array [%d] = %ld\n",i,array[i]);     
	}
	
	array_sort();
	
	printf("\nArray ordenado em ordem decrescente:\n");
	for(i = 0; i < num; i++){
		printf("Array [%d] = %ld\n",i,array[i]);    
	}
	
	return 0;
}
