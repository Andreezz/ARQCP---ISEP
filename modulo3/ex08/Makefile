main: main.o test_even.o vec_sum_even.o
	gcc -g -Wall main.o test_even.o vec_sum_even.o -o main

main.o: main.c asm.h 
	gcc -g -Wall -c main.c

test_even.o: test_even.s
	gcc -g -Wall -c test_even.s
	
vec_sum_even.o: vec_sum_even.s
	gcc -g -Wall -c vec_sum_even.s

debug:
	gdb -tui ./${EXEC}

vg:
	valgrind ./${EXEC}
     
run: main     
	./main
    
clean:
	rm *.o main 
