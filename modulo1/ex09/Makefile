ex09: ex09.o main.o
	gcc ex09.o main.o -o ex09
ex09.o: ex09.c
	gcc -g -Wall -c ex09.c -o ex09.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o ex09
run: ex09
	./ex09