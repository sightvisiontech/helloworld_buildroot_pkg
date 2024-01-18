CROSS_COMPILE := arm-linux-gnueabi-

CFLAGS	:= -Wall -std=gnu11 -g -D_REENTRANT

SRC	:= helloworld.c
OBJ	:= $(SRC:.c=.o)

PROG	:= hellworld
	
all: $(PROG)
	
$(PROG): $(OBJ)
	$(CC) -static $^ -o $@

clean:
	$(RM) $(PROG) $(OBJ)
