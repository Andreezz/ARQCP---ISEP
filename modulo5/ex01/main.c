#include <stdio.h>
#include <limits.h>
typedef struct { 
	union u1 *b;
	int c; 
char a[3];
int d[9]; 
 
 
}s1; 
typedef struct {
 s1 d; 
 struct s1 *e; 
 struct s2 *f; 
 long long int g; 
 short h[3];
 
}s2;
typedef union {
int i;
  s2 j; 
 struct s1 *k;
}u1;






int main(void){
	
	printf("union size: %d\n", (int) sizeof(u1));
	printf("struct size: %d\n", (int) sizeof(s1));
	printf("struct size: %d\n", (int) sizeof(s2));
	
	

	
	/*
	 * Unions use the same memory location for all variables, 
	 * 32 is the largest size of the 3 variables,
	 * so the union will have size of 32.
	 * 
	 * Each element of struct have their own memory,
	 * in this case 32 + 4 + 4, therefore 40.
	 * 
	*/ 
	
}
