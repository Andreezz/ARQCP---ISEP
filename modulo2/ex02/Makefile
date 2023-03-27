main: ex02.o main.o
	gcc ex02.o main.o -o main
ex02.o: ex02.s
	gcc -g -Wall -c ex02.s -o ex02.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o main
run: main
	./main
