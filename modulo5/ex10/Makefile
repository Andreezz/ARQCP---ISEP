main: main.o new_str.o
	gcc -g -Wall main.o new_str.o -o main

main.o: main.c new_str.h
	gcc -g -Wall -c main.c
	
new_str.o: new_str.c
	gcc -g -Wall -c new_str.c -o new_str.o
     
clean:
	rm -f *.o main

debug: main
	gdb -tui ./main

vg: main
	valgrind ./main
	
run: main
	./main