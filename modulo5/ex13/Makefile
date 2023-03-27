main: main.o asm.o ex13.o
	gcc -g -Wall main.o asm.o ex13.o -o main

main.o: main.c asm.h
	gcc -g -Wall -c main.c

asm.o: asm.s
	gcc -g -Wall -c asm.s

ex13.o: ex13.c asm.h
	gcc -g -Wall -c ex13.c
     
clean:
	rm -f *.o main

debug: main
	gdb -tui ./main

vg: main
	valgrind ./main
	
run: main
	./main
	
