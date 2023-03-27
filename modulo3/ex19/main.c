#include <stdio.h>
#include "asm.h"


char* ptrgrades;
int num = 3;
int result[21];
int* ptrfreq;

int main(void) {
	
	char array[] = {2,1,20};
	int result[21];

	ptrgrades= array;
	ptrfreq= result;

	frequencies();
	
	
	for(int i=0;i<21;i++){
		printf("[%d]-> %d\n",i,result[i]);
		ptrfreq ++;		
	}
	
	return 0;
}
