##
## EPITECH PROJECT, 2017
## Makefile
## File description:
## Makefile
##

CC      = gcc

RM      = rm -f

CFLAGS  = -I ./include -Wall -Werror -Wextra

NAME    =      my_screensaver

SRCS    =	src/management.c	\
		src/main.c		\
		src/my_strcmp.c		\
		src/my_putstr.c		\
		src/my_putchar.c	\
		src/my_atoi.c

OBJS    = $(SRCS:.c=.o)


all:    $(NAME)

$(NAME): $(OBJS)
	$(CC) $(OBJS) -o $(NAME) $(CFLAGS)

./%o : ./%c
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re:     fclean all

.PHONY: all clean fclean re
