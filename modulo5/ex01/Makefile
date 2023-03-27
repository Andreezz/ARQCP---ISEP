main: main.o
	gcc -Wall -g main.o -o main

main.o: main.c
	gcc -Wall -g -c main.c -o main.o

clean:
	rm *.o main

debug:
	gdb -tui ./main

vg:
	valgrind ./main
	
run: main
	./main
