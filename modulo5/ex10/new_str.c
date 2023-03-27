#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "new_str.h"


// dynamically creates a new string with the same content as the input string but a minimum size
char *new_str(char str[80]) {
    // determine the length of the input string
    int len = strlen(str);

    // allocate memory for the new string
    char *new_str = malloc(len + 1);

    // check if memory allocation was successful
    if (new_str == NULL) {
        // return NULL if memory allocation failed
        return NULL;
    }

    // copy the content of the input string into the new string
    strcpy(new_str, str);

    // return the address of the new string
    return new_str;
}