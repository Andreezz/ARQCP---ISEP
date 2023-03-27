ex05: ex05.o main.o
	gcc ex05.o main.o -o ex05

ex05.o: ex05.c
	gcc -g -Wall -c ex05.c -o ex05.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex05

run: ex05
	./ex05