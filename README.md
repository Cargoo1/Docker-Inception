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
| make (make all) | starts the services and builds the images if necessary |
| make build | builds the images |
| make start | starts the containers if the images were built |



