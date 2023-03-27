main: main.o join_bits.o
	gcc -Wall -g main.o join_bits.o -o main

main.o: main.c join_bits.h
	gcc -Wall -g -c main.c -o main.o

join_bits.o: join_bits.c
	gcc -Wall -g -c join_bits.c -o join_bits.o

clean:
	rm -f *.o main

debug: main
	gdb -tui ./main

vg: main
	valgrind ./main
	
run: main
	./main