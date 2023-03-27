ex18: ex18.o main.o
	gcc ex18.o main.o -o ex18

ex18.o: ex18.c
	gcc -g -Wall -c ex18.c -o ex18.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex18

run: ex18
	./ex18