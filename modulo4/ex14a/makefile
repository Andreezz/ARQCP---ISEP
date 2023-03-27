main: main.o reset_bits.o
	gcc -Wall -g main.o reset_bits.o -o main

main.o: main.c reset_bits.h
	gcc -Wall -g -c main.c -o main.o

reset_bits.o: reset_bits.c
	gcc -Wall -g -c reset_bits.c -o reset_bits.o

clean:
	rm *.o main

debug: main
	gdb -tui ./main

vg: main
	valgrind ./main
	
run: main
	./main