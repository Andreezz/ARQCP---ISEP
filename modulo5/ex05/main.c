#include <stdio.h>
#include "ex05.h"


int main(void)
{
     Student s1;
     fill_student(&s1, 12, 13, "Pedr", "Carr");
     update_grades(&s1, (int[5]) {0,1,2,3,6} );

     printf("\n|------|\n");
     printf("|  %d  |\n",s1.number);
     printf("|------|\n");
     printf("|  %d  |\n",s1.age);
     printf("|------|\n");
     printf("|  %d   |\n",s1.grades[4]);
     printf("|------|\n");
     printf("| %s |\n",s1.name);
     printf("|------|\n");
     printf("| %s |\n",s1.address);
     printf("|------|\n");

    return 0;
}
