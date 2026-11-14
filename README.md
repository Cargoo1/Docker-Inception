*This project has been created as part of the 42 curriculum by acamargo*

# Inception

## Description

The goal of this project is to use and learn the different uses and options of **Docker** and **Docker-compose**, seting up our own website.
The services in this project are:
- NGINX
- WordPress and Php-fpm
- MariaDB
- Redis Cache
- Vsftpd
- Portainer
Some of the extra utils used are:
- Hugo for generating a static portfolio website
- Adminer.php for managing the DB
Theres one container for each service, all the Docke images all localy built, so theres also one Dockerfile for each service.
The OS chosen for all the container is Debian:12.

## Instructions

There is a *Makefile* at the root of the repository and the rules are:
| Syntax | Description |
| --- | --- |
| make (all, setup, up) | sets the necessary directories and permissions starts the services and builds the images if necessary |
| make up | starts the containers and builds the images if necessary |
| make build | builds the images |
| make start | starts the containers if the images were built |
| make logs | shows the logs of the containers |
| make ps | shows the current containers that are being executed |
| make clean | stops and removes the containers |
| make down_v | stops, removes the containers and the volumes |
| make fclean | stops and removes the containers, volumes and all the images that were already built |

## Resources

Some of the resources used in this project are listed below:
- [Docker Reference](https://docs.docker.com/reference/)
- [NGINX tls server](https://nginx.org/en/docs/http/configuring_https_servers.html)
- [MariaDB how to create a database and a user](https://docs.bitnami.com/virtual-machine/infrastructure/lamp/configuration/create-database-mariadb/)
- [Setting up WordPress and Nginx] (https://www.youtube.com/watch?v=BN8lMesmvPw)
- [Adminer] (https://blog.crea-troyes.fr/4554/adminer-tutoriel-comment-le-maitriser/)
- [Vsftpd] (https://www.youtube.com/watch?v=t50UfbGvWhw&t=118s)
- [Redis] (https://dev.to/rijultp/understanding-redisconf-how-to-configure-your-redis-server-38lf)

## Project description

### Virtual machines vs Docker 

Virtual machines are isolated from the host machine and have their own kernel and OS, but with docker we can have an enviroment that uses the same kernel and resources of the host machine, in this way is way faster and lighter than a vm.

### Secrets vs Enviroment Variables

Docker secrets are a solution to share sensible files to the docker container in order to avoid leaking sensible data like certificates, api keys, etc.
If instead you need to use a password, or a username in the container, you can use enviroment variables so that the container can have does values instead of hardcoding them in the Dockerfile, because you can see all the values used in the Dockerfile when building an image.

### Docker network vs Host network


