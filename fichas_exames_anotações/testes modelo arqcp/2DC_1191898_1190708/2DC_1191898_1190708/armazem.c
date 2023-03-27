#include "preco.h"

int produto = 0;
int produto_quantidade = 0;

void calcule_armazem(int *armazem, int *produtos_preco) {
	
	char *ptr = (char*)armazem;
	
	
	while(armazem != '\0') { //percorre o armazem 
		
		produto = *ptr; 	//prt aponta para codigo do produto 
		int i = 2;			//comeca em 2 porque o proximo produto encontra-se 2 bits depois
		while(i != '\0') {		//este ciclo while vai procurar no armazem produto com o mesmo codigo e soma as quantidades
			if(produto == *(ptr+i)){
				produto_quantidade = produto_quantidade + *(ptr + i + 1);
			}
			i+=2;
		}
		
		calcule_preco(); //chamar a funcao calcule_preco
		
		ptr+=2;	
		armazem+=4;	//proximo elemento do array armazem 
	}
	
}	

