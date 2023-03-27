#include <stdio.h>
#include "asm.h"

char* ptr1;
char* ptr2;
char* ptr3;

int main(){

char vec1[40]="Hello ";
char vec2[40]="World!";
char vec3[80]="";

ptr1=vec1;
ptr2=vec2;
ptr3=vec3;

printf("1ª frase: %s\n",vec1);
printf("2ª frase: %s\n",vec2);

str_cat();

printf("As duas frases juntas: %s\n",vec3);
  return 0;
}