#include <stdio.h>
#include "y.h"

unsigned char potencia=120;
unsigned char horas = 3;
unsigned char id=0;

extern unsigned char id_max_consumo=0;

void preenche_consumos(unsigned int * radiadores, int n){
	unsigned char *r = (unsigned char *)(radiadores);
	
	for(int i = 0; i <n*4; i++){	// n*4 pois é um char e quer se um int
		*(r+i)=consumo();
		id++;
		printf("%d:\n",id);
	} 
}




