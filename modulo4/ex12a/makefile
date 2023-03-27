main: main.o count_bits_one.o
	gcc -Wall -g main.o count_bits_one.o -o main

main.o: main.c count_bits_one.h
	gcc -Wall -g -c main.c -o main.o

count_bits_one.o: count_bits_one.c
	gcc -Wall -g -c count_bits_one.c -o count_bits_one.o

clean:
	rm *.o main

debug: main
	gdb -tui ./main

vg: main
	valgrind ./main
	
run: main
	./main