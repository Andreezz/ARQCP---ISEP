main: main.o sum_multiples_x.o
	gcc -Wall -g main.o sum_multiples_x.o -o main

main.o: main.c sum_multiples_x.h
	gcc -Wall -g -c main.c -o main.o

sum_multiples_x.o: sum_multiples_x.c
	gcc -Wall -g -c sum_multiples_x.c -o sum_multiples_x.o

run: main
	./main

clean:
	rm *.o main