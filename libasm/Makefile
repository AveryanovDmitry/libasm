NAME = libasm.a

HEADER = libasm.h

SRC =	ft_strlen.s \
	    ft_strcpy.s\
		ft_strcmp.s\
		ft_strdup.s\
		ft_read.s\
		ft_write.s

OBJ = $(SRC:.s=.o)

FLAGS = -f macho64

CC = gcc

%.o: %.s
	nasm ${FLAGS}  $<

all: ${NAME}
	
#gcc main.c libasm.a
#	./a.out

${NAME}: ${OBJ} ${HEADER}
	ar -rcs ${NAME} ${OBJ}


clean:
	rm -f ${OBJ}

fclean: clean
		 rm -f ${NAME} a.out

re:
	make fclean
	make
	
