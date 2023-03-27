ex13: ex13.o main.o
	gcc ex13.o main.o -o ex13
ex13.o: ex13.c
	gcc -g -Wall -c ex13.c -o ex13.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o ex13
run: ex13
	./ex13