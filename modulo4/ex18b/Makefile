main: main.o asm.o
		gcc main.o asm.o -o main

main.o: main.c asm.h
		gcc -Wall -g -c -s main.c -o main.o

asm.o: asm.s
		gcc -Wall -g -c -s asm.s -o asm.o

run: main
		./main

debug:
	gdb -tui ./${EXEC}

vg:
	valgrind ./${EXEC}

clean:
		rm *.o main