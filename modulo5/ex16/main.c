#include<stdio.h>
#include <stdlib.h>
#include"asm.h"


int main(){
	
	group school;

	school.n_students = 7;

	school.individual_grades=(unsigned short *)calloc(school.n_students,sizeof( unsigned short));
	
	
	for(int i=0;i<7;i++){
		*(school.individual_grades+i)=0b1111111111000000;
	}
	
	group *group_school =&school;
	
	int result = approved_semester(group_school);
	
	printf("\n|---|\n");
	printf("| %d |",result);
	printf("\n|---|\n");
	
  //erro
	free(school.individual_grades);
	return 0;
}
