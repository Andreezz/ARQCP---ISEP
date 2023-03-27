main: main.o new_matrix.o add_matrixes.o
	gcc -g -Wall main.o new_matrix.o add_matrixes.o -o main

main.o: main.c main.h
	gcc -g -Wall -c main.c
	
new_matrix.o: new_matrix.c
	gcc -g -Wall -c new_matrix.c -o new_matrix.o

add_matrixes.o: add_matrixes.c
	gcc -g -Wall -c add_matrixes.c -o add_matrixes.o
     
clean:
	rm -f *.o main

debug: main
	gdb -tui ./main

vg: main
	valgrind ./main
	
run: main
	./main