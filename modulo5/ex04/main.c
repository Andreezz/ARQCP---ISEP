
#include <stdio.h>
#include <string.h>
#include "asm.h"

int main(void)
{

    Student s;

    s.age = 28;
    s.number = 10;
    strcpy(s.name, "Diogo");
    strcpy(s.address, "Rua clube Dragões Valboenses");
    printf("%s\n", "Address before update!");
    printf("%s\n\n", s.address);

    char *newAddress = "Rua Habival, 38";

    Student *sPointer = &s;

    update_address(sPointer, newAddress);

    printf("%s\n", "Address updated!");
    printf("%s\n", sPointer->address);
    return 0;
}
