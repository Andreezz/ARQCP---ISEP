typedef struct {
char c;
int i;
char d;
int j;
} s1;

#ifndef ASM_H
#define ASM_H
void fill_s1(s1 *s, int vi, char vc, int vj, char vd);
#endif