#include <stdio.h>
#include "noves_fora.h"

int main() {
	unsigned int numeros [10] = {0x0B0F0000, 0x0C0A0000, 0x0B080000, 0x07100000, 0x0F120000,
	0xF0E10000, 0x0B0F0000, 0x0A0B0000, 0x0F100000, 0x090F0000};
	int n = sizeof(numeros)/sizeof(int);	
	noves_fora(numeros,n);
	unsigned short* vec = (unsigned short*)(numeros); 
	printf("\n");
	for(int i=0;i<n;i++) {
		printf("%d\n",*vec);
		vec += 2;
	}
	
	return 0;
}
