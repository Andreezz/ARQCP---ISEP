ex02: ex02.o main.o
	gcc ex02.o main.o -o ex02

ex02.o: ex02.c
	gcc -g -Wall -c ex02.c -o ex02.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex02

run: ex02
	./ex02
