typedef struct {
short number;     //OFFSET 0
char age;          // OFFSET 2
int grades[5];      //OFFSET
char name[60];
char address[100];
} Student;

 int locate_greater(Student *s, int minimun, int *greater_grades);
