main: main.o new_matrix.o find_matrix.o
	gcc -g -Wall main.o new_matrix.o find_matrix.o -o main

main.o: main.c main.h
	gcc -g -Wall -c main.c
	
new_matrix.o: new_matrix.c
	gcc -g -Wall -c new_matrix.c -o new_matrix.o

find_matrix.o: find_matrix.c
	gcc -g -Wall -c find_matrix.c -o find_matrix.o
     
clean:
	rm -f *.o main

debug: main
	gdb -tui ./main

vg: main
	valgrind ./main
	
run: main
	./main