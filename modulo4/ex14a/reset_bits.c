#include <stdio.h>
int reset_bit(int *ptr,int pos){
	if((((*ptr) >> pos)&1)==1){
		*ptr ^= 1u<<pos;
		return 1;
	}else return 0;
}
