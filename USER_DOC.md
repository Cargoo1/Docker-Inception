# User documentation

The services provided by the stack are the following
- NGINX with Adminer
- WordPress and Php-fpm
- MariaDB
- Redis Cache
- Vsftpd
- Portainer
In order to start the stack you need to run:
```bash
    make build
    make
```
to stop the services run:
```bash
    make clean
```
you can the site opening the following url in your browser: https://acamargo.42.fr.

if you wish to see the wordpress administration panel: https://acamargo.42.fr/wp-admin or to see Adminer open https://acamargo.42.fr/adminer.php

The credentials are store in the .env file in the srcs/ directory

To check if the services are running correctly run:
```bash
    make logs
    make ps
```
