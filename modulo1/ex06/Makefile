ex06: ex06.o main.o
	gcc ex06.o main.o -o ex06

ex06.o: ex06.c
	gcc -g -Wall -c ex06.c -o ex06.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex06

run: ex06
	./ex06