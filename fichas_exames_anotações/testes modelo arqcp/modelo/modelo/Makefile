modelo: calcula_resto.o noves_fora.o main.o
	gcc calcula_resto.o noves_fora.o main.o -o modelo

calcula_resto.o: calcula_resto.s
	gcc -g -Wall -c calcula_resto.s -o calcula_resto.o	
	
noves_fora.o: noves_fora.c
	gcc -g -Wall -c noves_fora.c -o noves_fora.o	

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o modelo
	
run: modelo
	./modelo
