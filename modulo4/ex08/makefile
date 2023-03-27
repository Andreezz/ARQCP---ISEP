main: main.o calc.o
	gcc -g -Wall main.o calc.o -o main

main.o: main.c calc.h
	gcc -g -Wall -c main.c

calc.o: calc.s
	gcc -g -Wall -c calc.s
     
run: main     
	./main
    
clean:
	rm *.o main 
