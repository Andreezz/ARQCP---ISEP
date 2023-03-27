#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "new_str.h"


int main() {
    char str[80] = "Hello, world!";
    char *new_st = new_str("blabbbb");
    if (new_st == NULL) {
        printf("Memory allocation failed.\n");
        return 1;
    }
    printf("Original string: %s\n", str);
    printf("New string: %s\n", new_st);
    printf("Original string length: %ld\n", strlen(str));
    printf("New string length: %ld\n", strlen(new_st));
    
    free(new_st);

    /*It is possible to return the address of the new string
     because the malloc function returns a pointer to a memory location 
     that is guaranteed to be valid until the memory is explicitly deallocated using the free function. 
     In this case, the new_str function returns the address of the memory allocated*/
    return 0;
}