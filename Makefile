# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: idouidi <idouidi@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/15 13:43:24 by idouidi           #+#    #+#              #
#    Updated: 2022/08/27 12:29:51 by idouidi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


all: up

up:
		 sudo docker-compose -f srcs/docker-compose.yml build 
		 sudo docker-compose -f srcs/docker-compose.yml up --force-recreate #-d --force-recreate


down:
		sudo docker-compose -f srcs/docker-compose.yml down

ps:		
		sudo docker-compose -f srcs/docker-compose.yml ps -a
		sudo docker ps -a

clean:	down
		# sudo rm -rf /home/${USER}/data/db
		# mkdir -p /home/${USER}/data/db
		sudo rm -rf /home/${USER}/data/wwebsite
		mkdir -p /home/${USER}/data/website

re : 	clean up

mariadb:
		sudo docker exec -it mariadb bash
nginx:
		sudo docker exec -it nginx bash

wordpress:
		sudo docker exec -it wordpress bash


.PHONY: start stop re ps clean
