main: main.o ex05.o asm.o
		gcc main.o ex05.o asm.o -o main

main.o: main.c ex05.h
		gcc -Wall -g -c main.c -o main.o

ex05.o: ex05.c
		gcc -Wall -g -c ex05.c -o ex05.o

asm.o: asm.s
		gcc -Wall -g -c asm.s -o asm.o

valgrind:
		valgrind ./prog

run: main
		./main

clean:
		rm *.o main