main: main.o test_equal.o
	gcc -g -Wall main.o test_equal.o -o main

main.o: main.c test_equal.h
	gcc -g -Wall -c main.c

test_equal.o: test_equal.s
	gcc -g -Wall -c test_equal.s
     
run: main     
	./main
    
clean:
	rm *.o main 
