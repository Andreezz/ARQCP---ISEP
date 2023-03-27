#include <stdio.h>
#include "asm.h"


short array[] = {-1,-1,-1};
short* ptrvec = array;
unsigned short num = sizeof(array)/sizeof(array[0]);

int main(void) {
	
	
	
	keep_positives();
	
	for(unsigned short i = 0; i < num ; i++){
		
	printf("%d\n",array[i]);
	}
	
	
	return 0;
}
