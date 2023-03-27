#include "calcula_resto.h"
extern unsigned short numero_atual;
void noves_fora(unsigned int *numeros, int n) {
	unsigned short *s = (unsigned short *)(numeros);
	for(int i=1;i<n*2;i++) {
		numero_atual = *(s+i);
		*(s+i-1) = calcula_resto();
	}
}
