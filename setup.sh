#!/bin/bash

DB_DIR="/home/acamargo/data/acamargo.42.fr/db"
FRONT_END_DIR="/home/acamargo/data/acamargo.42.fr/frontend/"
CACHE_DIR="/home/acamargo/data/acamargo.42.fr/cache"
PORTAFOLIO_DIR="/home/acamargo/data/cargoo"
PORTAINER_DIR="/home/acamargo/data/portainer"
SITE_DIR="/home/acamargo/data/acamargo.42.fr/"

if [ ! -d $DB_DIR ]
then
	sudo mkdir -p $DB_DIR
	sudo chown -R mysql:mysql $DB_DIR
fi

if [ ! -d $FRONT_END_DIR ]
then
	sudo mkdir -p $FRONT_END_DIR
	sudo chown -R www-data:www-data $SITE_DIR
	sudo chmod -R 775 $FRONT_END_DIR
fi

if [ ! -d $CACHE_DIR ]
then
	sudo mkdir -p $CACHE_DIR
	sudo chown -R mysql:mysql $CACHE_DIR
fi

if [ ! -d $PORTAFOLIO_DIR ]
then
	sudo mkdir -p $PORTAFOLIO_DIR
	sudo chown -R www-data:www-data $PORTAFOLIO_DIR
fi

if [ ! -d $PORTAINER_DIR ]
then
	sudo mkdir -p $PORTAINER_DIR
	sudo chown -R www-data:www-data $PORTAINER_DIR
fi
