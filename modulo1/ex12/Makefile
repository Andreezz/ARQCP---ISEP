ex12: ex12.o main.o
	gcc ex12.o main.o -o ex12

ex12.o: ex12.c
	gcc -g -Wall -c ex12.c -o ex12.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex12

run: ex12
	./ex12