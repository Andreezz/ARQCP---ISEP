#include <string.h>

/**
 * Struct student
*/
typedef struct {
    short number;
    char age;
    int grades[5];
    char name[60];
    char address[100];
} Student;

/**
 * saves the age, number, name, and address of a 
 * student in the fields of a 
 * structure whose address is given in s.
*/
void fill_student(Student *s, char age, short number, char *name, char *address){
    s->number = number;
    s->age = age;
    strcpy(s->name,name);
   strcpy(s->address,address);
}