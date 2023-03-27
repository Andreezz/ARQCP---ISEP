ex17: ex17.o main.o
	gcc ex17.o main.o -o ex17
ex17.o: ex17.c
	gcc -g -Wall -c ex17.c -o ex17.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o ex17
run: ex17
	./ex17