ex13: asm.o main.o
	gcc -g -Wall asm.o main.o -o ex13
asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o ex13
run: ex13
	./ex13