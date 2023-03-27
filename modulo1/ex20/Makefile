ex20: ex20.o main.o
	gcc ex20.o main.o -o ex20

ex20.o: ex20.c
	gcc -g -Wall -c ex20.c -o ex20.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex20

run: ex20
	./ex20