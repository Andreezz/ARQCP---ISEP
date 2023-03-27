#include <stdio.h>
#include "ex02.h"

int op1=0,op2=0, res=0;

int main(){

printf("Primeiro valor: ");
scanf("%d",&op1);
printf("Segundo valor: ");
scanf("%d",&op2);
res = sum();
printf("Soma: %d\n", res);

  return 0;
}

