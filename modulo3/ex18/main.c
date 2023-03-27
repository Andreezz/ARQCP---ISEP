#include <stdio.h>
#include "asm.h"

short* ptrsrc;
short* ptrdest;
int num=4;

int main(){
 
 short src[]={2,8,4,1};
 short dest[4] = {};
 int i;

 ptrsrc = src;
 ptrdest = dest;
	
	
	

	

	
	for(i = 0; i < 4; i++){
		printf("%d ", src[i]);
	}
	printf("\n");

  	int num_elements = sort_without_reps();
	
	for(i = 0; i < 4; i++){
		printf("%d ", dest[i]);
	}
	printf("\n");
	
	printf("O número de elementos que foram postos no segundo array é %d\n", num_elements);
	

  return 0;
}