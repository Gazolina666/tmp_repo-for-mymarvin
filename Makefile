##
## EPITECH PROJECT, 2024
## B-BDG-400-STG-4-1-asmminilibc-lucas.scheidecker
## File description:
## Makefile
##

SRC_ASM	= 	my_strchr.asm \
			my_strlen.asm \
			my_strrchr.asm \
			my_memset.asm \
			my_memcpy.asm \
			my_strcmp.asm \
			my_memmove.asm \
			my_strncmp.asm \
			my_strcasecmp.asm \

SRC_C	= main.c

ASM_OBJ	=	$(SRC_ASM:.asm=.o)

C_OBJ = $(SRC_C:.c=.o)

LIB =  libasm.so

BIN = test

all: $(LIB)

$(LIB): $(ASM_OBJ)
	ld -shared -o $(LIB) $(ASM_OBJ)

%.o: %.asm
	nasm -f elf64 $< -o $@

debug:	all
	export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH &&	\
	gcc -o $(BIN) $(SRC_C) -L. -lasm -w -fno-builtin &&	\
	./$(BIN)

clean:
	rm -f $(ASM_OBJ)

fclean: clean
	rm -f $(LIB)
	rm -f $(BIN)

re: fclean all

.PHONY: all clean fclean re debug
