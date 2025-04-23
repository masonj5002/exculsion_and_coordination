all: main

CC = clang
CFLAGS = -Wall
LDFLAGS = -pthread

main: main.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o main main.o

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

clean:
	rm -f main *.o
