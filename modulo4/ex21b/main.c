#include <stdio.h>
#include "distance.h"

char string1[] = "ab";
char string2[] = "ab";
char *ptr1 = string1;
char *ptr2 = string2;

int main()
{
      int result = distance(ptr1,ptr2);
      printf("%d\n", result);
}
