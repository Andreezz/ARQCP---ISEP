
#include <stdio.h>
#include <string.h>

typedef struct{
char vec[32];
float a;
int b;
} u;

int main( void ){

/*Define a u*/
u u1;
/*Define a pointer to u*/
u  * ptr = &u1;

/*copy the string into the vec using pointers*/
strcpy(ptr->vec, "arquitectura de computadores" );
printf( "[1]=%s\n", ptr->vec );

/*Access the data in u using pointers*/
ptr->a = 123.5;
printf( "[2]=%f\n", ptr->a );

ptr->b = 2;
printf( "[3]=%d\n", ptr->b );
/*-----------------------------------------*/
printf( "[1]=%s\n", ptr->vec );
printf( "[2]=%f\n", ptr->a );
printf( "[3]=%d\n", ptr->b );

/*A structure is a custom data type that holds
 multiple members of different data type under a 
 single unit where union is a user defined data 
 type that combine object of different data type 
 in the exact memory location.
 Only one member can hold a value at any given time.*/

return 0;
}


/* 
#include <stdio.h>
#include <string.h>

union union_u1{
char vec[32];
float a;
int b;
} u;


int main( void ){

union union_u1 * ptr = &u;

strcpy(ptr->vec, "arquitectura de computadores" );
printf( "[1]=%s\n", ptr->vec );

ptr->a = 123.5;
printf( "[2]=%f\n", ptr->a );
ptr->b = 2;
printf( "[3]=%d\n", ptr->b );
printf( "[1]=%s\n", ptr->vec );
printf( "[2]=%f\n", ptr->a );
printf( "[3]=%d\n", ptr->b );
return 0;
} */
