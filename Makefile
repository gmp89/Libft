#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/12/16 13:47:03 by gpetrov           #+#    #+#              #
#    Updated: 2013/12/16 14:04:07 by gpetrov          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME	= fdf
SRC		= main.c
OBJS	= ${SRCS:.c=.o}
INC		=
FLAGS	= -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	make -C libft
	gcc $(FLAGS) $(SRCS) -o $(NAME)
%.o: %.c
	gcc -c $< -o $@ $(FLAGS) -I$(INC)
clean:
	rm -f $(OBJS)
fclean:
	rm -f $(NAME)
re: fclean all
