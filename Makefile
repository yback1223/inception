all: up

m:
	docker logs mariadb

w:
	docker logs wordpress

n:
	docker logs nginx

up:
	@sh ./srcs/requirements/yback_mkdir.sh
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d --build

down:
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env down

re:
	@make fclean
	@make all

clean: down
	@docker system prune -a

fclean:
	@docker stop $$(docker ps -qa)
	@docker system prune --all --force --volumes

.PHONY	: all build down re clean fclean
