exe: y.o x.o main.o
	gcc y.o x.o main.o -o exe

y.o: y.s
	gcc -g -Wall -c y.s -o y.o	
	
x.o: x.c
	gcc -g -Wall -c x.c -o x.o	

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o exe
	
run: exe
	./exe
