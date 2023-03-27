ex15: ex15.o main.o
	gcc ex15.o main.o -o ex15
ex15.o: ex15.c
	gcc -g -Wall -c ex15.c -o ex15.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o ex15
run: ex15
	./ex15