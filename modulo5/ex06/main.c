
#include <stdio.h>
#include <string.h>
#include "asm.h"

int main()
{

  Student s;

  Student *sPointer = &s;
  s.grades[0] = 6;
  s.grades[1] = 7;
  s.grades[2] = 8;
  s.grades[3] = 9;
  s.grades[4] = 10;

  int minimum = 9;
  int greaterGrades[5] = {};

  int result = locate_greater(sPointer, minimum, greaterGrades);

  printf("%s\n", "Grades updated!");
  printf("%s%d\n", "RESULTADO: ", result);

  int i = 0;
  while (i < 5)
  {
    printf("%d ", greaterGrades[i]);
    i++;
  }

  return 0;
}
