#ifndef FILL_STUDENT_H
#define FILL_STUDENT_H
typedef struct {
    short number;
    char age;
    int grades[5];
    char name[60];
    char address[100];
} Student;
void fill_student(Student*s, char age, short number, char *name, char *address);
void update_grades(Student*s, int *new_grades);
#endif