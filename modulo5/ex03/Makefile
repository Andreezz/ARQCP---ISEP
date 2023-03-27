main: main.o fill_student.o
	gcc -g -Wall main.o fill_student.o -o main

main.o: main.c main.h
	gcc -g -Wall -c main.c
	
fill_student.o: fill_student.c
	gcc -g -Wall -c fill_student.c -o fill_student.o
     
clean:
	rm -f *.o main

debug: main
	gdb -tui ./main

vg: main
	valgrind ./main
	
run: main
	./main