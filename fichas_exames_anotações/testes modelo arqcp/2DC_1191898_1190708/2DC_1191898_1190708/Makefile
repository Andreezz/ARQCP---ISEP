#variables
INCLUDES = preco.h	armazem.h 
SOURCES = armazem.c	preco.s	main.c
OBJFILES = armazem.o preco.o main.o
EXEC = prog

# Suffix rules
.SUFFIXES :	.c	.o

.c.o:
	gcc	-Wall -g -c $<

.SUFFIXES : .s .o

.s .o: 
	gcc -Wall -g -c $<


${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}:  ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
