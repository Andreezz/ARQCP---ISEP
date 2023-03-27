main: ex11.o main.o
	gcc ex11.o main.o -o main
	
ex11.o: ex11.c
	gcc -g -Wall -c ex11.c -o ex11.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o main

debug:
	gdb -tui ./main

vg:
	valgrind ./main
		
run: main
	./main