ex10: ex10.o main.o
	gcc ex10.o main.o -o ex10

ex10.o: ex10.c
	gcc -g -Wall -c ex10.c -o ex10.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex10

run: ex10
	./ex10