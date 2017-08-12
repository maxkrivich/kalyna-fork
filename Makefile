#!/usr/bin/env make

CC = gcc

CFLAGS += -Wall -Wextra

# Folders
SRC = src
BIN = bin
OBJ = $(BIN)/obj

SOURCE_FILES = \
		kalyna.c   \
		main.c     \
		tables.c

OBJECT_FILES = $(addprefix $(OBJ)/, $(SOURCE_FILES:.c=.o))

EXECUTABLE_NAME = kalyna_test


build: create_directories create_executable
	@echo "Build successful!"

create_executable: create_objects
	$(CC) $(LDFLAGS) $(OBJECT_FILES) -o $(BIN)/$(EXECUTABLE_NAME)
	@echo "Created executable."

create_objects: $(SOURCE_FILES)
	@echo "Created objects."

create_directories:
	@mkdir -p $(OBJ)

%.c:
	@echo "Compiling "$@
	$(CC) $(LDFLAGS) -c $(SRC)/$@ -o $(OBJ)/$(patsubst %.c,%.o,$@)

test: build
	@echo "\n\nRun test"
	$(BIN)/$(EXECUTABLE_NAME)

clean:
	@rm -rf $(BIN)
