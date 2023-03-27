#include <stdio.h>
void upper2(char *str)
{

    while (*str != '\0')
    {
       if(*str >= 97 && *str <= 122)
       {
            *str -= 32;

       }
    
        printf("%c \n", *str);
        str++;

    }

}