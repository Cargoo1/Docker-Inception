FILE_PATH = ./srcs/docker-compose.yml
COMPOSE_CLI = docker compose -f $(FILE_PATH)
IMAGES = $(shell docker images -qa)
SETUP_SCRIPT = ./setup.sh

all: setup
ifeq ($(IMAGES),)
	@make build
endif
	@make up

setup:
	@chmod +x $(SETUP_SCRIPT) && $(SETUP_SCRIPT)

up:
	$(COMPOSE_CLI) up -d
build:
	$(COMPOSE_CLI) build
start:
	$(COMPOSE_CLI) start
stop:
	$(COMPOSE_CLI) stop
down_v:
	$(COMPOSE_CLI) down -v
logs:
	$(COMPOSE_CLI) logs
volumes:
	$(COMPOSE_CLI) volumes
ps:
	$(COMPOSE_CLI) ps
clean:
	$(COMPOSE_CLI) down

fclean: down_v
ifneq ($(IMAGES),)
	docker rmi -f $(IMAGES)
endif

re: fclean all
