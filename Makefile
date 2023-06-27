all: up

net:
	@docker network inspect inception >/dev/null 2>&1 || (echo "Network 'inception' does not exist"; exit 1)

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
	@sudo rm -rf ~/data/wordpress/*
	@sudo rm -rf ~/data/mariadb/*

fclean:
	@docker stop $$(docker ps -qa)
	@docker system prune --all --force --volumes
	@docker network prune --force
	@docker volume prune --force
	@sudo rm -rf ~/data/wordpress/*
	@sudo rm -rf ~/data/mariadb/*

.PHONY	: all build down re clean fclean



top:
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env top

.PHONY: top