ex03: ex03.o main.o
	gcc ex03.o main.o -o ex03

ex03.o: ex03.c
	gcc -g -Wall -c ex03.c -o ex03.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex03

run: ex03
	./ex03