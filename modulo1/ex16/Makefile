ex16: ex16.o main.o
	gcc ex16.o main.o -o ex16

ex16.o: ex16.c
	gcc -g -Wall -c ex16.c -o ex16.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex16

run: ex16
	./ex16