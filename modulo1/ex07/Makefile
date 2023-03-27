ex07: ex07.o main.o
	gcc ex07.o main.o -o ex07
ex07.o: ex07.c
	gcc -g -Wall -c ex07.c -o ex07.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o ex07
run: ex07
	./ex07