YML_FILE= ./srcs/docker-compose.yml

all: run

run:
	@echo "Building files for volumes ..."
	sudo mkdir -p /home/j/data/wordpress
	sudo mkdir -p /home/j/data/mysql
	@echo "Building containers ..."
	docker compose -f $(YML_FILE) up -d --build

stop:
	@echo "Stopping containers ..."
	docker compose -f $(YML_FILE) stop

clean: clean
	@echo "Deleting all container ..."
	docker system prune -af
	@-docker volume rm `docker volume ls -q`
	@-docker image rmi `docker image ls -q`
	@echo "Deleting success !"

fclean:	stop clean
	@echo "Deleting all data ..."
	sudo rm -rf /home/anmande/data/wordpress
	sudo rm -rf /home/anmande/data/mysql
	@echo "Deleting all success !"

.PHONY: run stop clean
