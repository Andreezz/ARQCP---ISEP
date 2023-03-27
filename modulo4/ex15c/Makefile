ex15c: activate_bits.o activate_invert_bits.o main.o
	gcc activate_bits.o activate_invert_bits.o main.o -o ex15c
	
activate_bits.o: activate_bits.s
	gcc -g -Wall -c activate_bits.s -o activate_bits.o
	
activate_invert_bits.o: activate_invert_bits.s
	gcc -g -Wall -c activate_invert_bits.s -o activate_invert_bits.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex15c

debug: ex15c
	gdb -tui ./ex15c

vg: ex15c
	valgrind ./ex15c
	
run: ex15c
	./ex15c

	