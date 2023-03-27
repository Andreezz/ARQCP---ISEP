#include <stdio.h>
#include "x.h"


int main(void) {
	int radiadores[5]={0x0010A5DC,0x002F7D0,0x003079C4,0x04125DC,0X00510BB8};
	int *s;
	s=radiadores;
	
	for(int i = 0; i<5 ; i++){
		int res=preenche_consumos(s, 5);
		printf("Consumo: %d\n",res);
	}

	
	return 0;
}
