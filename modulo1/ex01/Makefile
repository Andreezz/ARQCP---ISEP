ex01: ex01.o main.o
	gcc ex01.o main.o -o ex01

ex01.o: ex01.c
	gcc -g -Wall -c ex01.c -o ex01.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex01

run: ex01
	./ex01