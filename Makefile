# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aal-fala <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/08 14:23:22 by aal-fala          #+#    #+#              #
#    Updated: 2025/05/08 14:26:45 by aal-fala         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = get_next_line.a
CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC = get_next_line.c get_next_line_utils.c
OBJ = $(SRC:.c=.o)
HEADER = get_next_line.h

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

test: $(OBJ) main.c
	$(CC) $(CFLAGS) -D BUFFER_SIZE=42 $(SRC) main.c -o gnl

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME) gnl

re: fclean all

.PHONY: all clean fclean re test
