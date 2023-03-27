#include<stdio.h>
#include "armazem.h"



int main(void) {

	int armazem[5] = {0x01640164,0x03540264,0x03640232,0x03640100,0x03640234};
	int produtos_preco[3] = {0};
	
	int *ptr1 = armazem;
	int *ptr2 = produtos_preco;
	
	calcule_armazem(ptr1, ptr2);
 
	return 0;
}
