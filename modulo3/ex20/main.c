#include <stdio.h>
#include "asm.h"

int* ptrvec;
int num=9 ;

int main(){
  int vec[]={1,3,1,2,3,4,4,5,4};

  ptrvec= vec;

  int res= count_max();

  printf("%d\n",res);


  return 0;
}