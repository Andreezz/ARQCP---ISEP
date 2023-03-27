#include <stdio.h>
int join_bits(int a, int b, int pos){
	

	b=b>>(pos);

	for(int i=0;i<pos+1;i++){
		b=(b<<1)|0;
	}
	int newNumber=0;
	newNumber=newNumber|(a&1);
	for(int i=pos;i>0;i--){
		
		
		newNumber=newNumber<<1;
		a=a>>1;
		newNumber=newNumber|(a&1);
		
	}
	b=b|newNumber;
	return b;
}