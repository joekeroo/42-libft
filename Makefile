NAME = libft.a
INCLUDES = -Iinc
AR = ar rcs
RM = rm -rf

SRC_PATH = src
OBJ_PATH = obj

SRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_memchr.c \
	  ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c \
	  ft_strnstr.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c \
	  ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_calloc.c \
	  ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
	  ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
	  ft_putnbr_fd.c ft_lstnew.c ft_lstlast.c ft_lstadd_front.c ft_lstadd_back.c \
	  ft_lstsize.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
OBJ = ${addprefix ${OBJ_PATH}/, ${SRC:.c=.o}}

all: ${NAME}

${NAME}: ${OBJ}
	@${AR} ${NAME} ${OBJ}

${OBJ_PATH}/%.o: ${SRC_PATH}/%.c
	@mkdir -p ${@D}
	@${CC} ${INCLUDES} -c $< -o $@

clean:
	@${RM} ${OBJ_PATH}

fclean: clean
	@${RM} ${NAME}
	@${RM} ${OBJ_PATH}

re: fclean all

.PHONY = all clean fclean re