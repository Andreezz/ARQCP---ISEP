main: main.o changes_vec.o asm.o
		gcc main.o changes_vec.o asm.o -o main

main.o: main.c changes_vec.h
		gcc -Wall -g -c -s main.c -o main.o

asm.o: asm.s
		gcc -Wall -g -c -s asm.s -o asm.o

changes_vec.o: changes_vec.s
	        gcc -g -Wall -c changes_vec.s -o changes_vec.o

run: main
		./main

debug:
	gdb -tui ./${EXEC}

vg:
	valgrind ./${EXEC}

clean:
		rm *.o main