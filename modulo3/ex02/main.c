#include <stdio.h>
#include "asm.h"

char* ptr1;
char* ptr2;

int main(){

  char s1[] = "heyo";
  char s2[] = "";

  ptr1=s1;
  ptr2=s2;

  str_copy_porto();

  printf("%s\n", ptr2);

  return 0;
}
