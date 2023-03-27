ex04: ex04.o main.o
	gcc ex04.o main.o -o ex04

ex04.o: ex04.c
	gcc -g -Wall -c ex04.c -o ex04.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex04

run: ex04
	./ex04