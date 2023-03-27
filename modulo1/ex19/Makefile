ex19: ex19.o main.o
	gcc ex19.o main.o -o ex19
ex19.o: ex19.c
	gcc -g -Wall -c ex19.c -o ex19.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o ex19
run: ex19
	./ex19