ex08: ex08.o main.o
	gcc ex08.o main.o -o ex08

ex08.o: ex08.c
	gcc -g -Wall -c ex08.c -o ex08.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex08

run: ex08
	./ex08