#!/usr/bin/env make

CC = gcc
RM = rm -f

CFLAGS += -Wall -Wextra

SRCS = kalyna.c main.c tables.c
OBJS = kalyna.o main.o tables.o
TARGET = kalyna


default: all

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS)

test:  $(TARGET)
	./$(TARGET)

clean:
	$(RM) *.o $(TARGET)

tables.c: tables.h kalyna.h

main.c:   kalyna.h transformations.h

kalyna.c:  transformations.h tables.h

.c.o:
	$(CC) $(CFLAGS) -o $@ -c $<
