CFLAGS = -g
#CFLAGS = -O2
CC = gcc

.c.o:
	gcc $(I) $(CFLAGS) -c $<

GAMEO = game.o objects.o

all: game

game: $(GAMEO)
	$(CC) -o game $(CFLAGS) $(I) $(GAMEO)

tags:
	ctags *.c

clean:
	rm -fv *.o game
