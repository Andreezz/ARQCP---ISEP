main: main.o exists.o vec_diff.o
	gcc -g -Wall main.o exists.o vec_diff.o -o main

main.o: main.c asm.h 
	gcc -g -Wall -c main.c

exists.o: exists.s
	gcc -g -Wall -c exists.s
	
vec_diff.o: vec_diff.s
	gcc -g -Wall -c vec_diff.s

debug:
	gdb -tui ./${EXEC}

vg:
	valgrind ./${EXEC}
     
run: main     
	./main
    
clean:
	rm *.o main 
