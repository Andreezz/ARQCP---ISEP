ex14: ex14.o main.o
	gcc ex14.o main.o -o ex14

ex14.o: ex14.c
	gcc -g -Wall -c ex14.c -o ex14.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex14

run: ex14
	./ex14