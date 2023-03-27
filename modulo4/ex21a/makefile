main: main.o distance.o
		gcc main.o distance.o -o main

main.o: main.c distance.h
		gcc -Wall -g -c main.c -o main.o

distance.o: distance.c
		gcc -Wall -g -c distance.c -o distance.o

valgrind:
		valgrind ./prog

run: main
		./main

debug: main
	gdb -tui ./main

vg: main
	valgrind ./main
	
clean:
		rm *.o main
