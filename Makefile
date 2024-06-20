# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anmande <anmande@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/08 10:46:47 by anmande           #+#    #+#              #
#    Updated: 2024/06/10 13:43:58 by anmande          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: up

build:
	@docker compose -f ./srcs/docker-compose.yml build


up: build
	@docker compose -f ./srcs/docker-compose.yml up

down:
	@docker compose down
	@docker image prune -f

#clean:
#	@docker-compose volumes rm 
