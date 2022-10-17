# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zyunusov <zyunusov@student.42wolfsburg.de> +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/24 13:06:09 by zyunusov          #+#    #+#              #
#    Updated: 2021/12/05 20:42:15 by zyunusov         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

LIST =		ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strrchr.c\
			ft_memchr.c ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c \
			ft_strchr.c ft_strnstr.c ft_strncmp.c ft_atoi.c ft_isalpha.c \
			ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c \
			ft_tolower.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c\
			ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c\
			ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c\

LISTB =		ft_lstnew.c ft_lstadd_front.c ft_lstlast.c ft_lstadd_back.c\
			ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c ft_lstsize.c\

OBJS = $(subst .c,.o,$(LIST))

OBJB = $(subst .c,.o,$(LISTB))

CC = gcc

RM = rm -f

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs ${NAME} ${OBJS}
	ranlib $(NAME)
$(OBJS): $(LIST)
	$(CC) -c $(CFLAGS) $(LIST)
	
bonus: $(OBJB)

$(OBJB) : $(LISTB)
	$(CC) -c $(FLAGS) $(LISTB)
	ar rcs $(NAME) $(OBJB)
	ranlib $(NAME)
clean:
	$(RM) $(OBJS) $(OBJB)

fclean: clean
	$(RM) $(NAME)

re: clean all

.PHONY: bonus all clean fclean re