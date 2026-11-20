#!/bin/bash

curl -fSL --silent -o /var/www/$DOMAIN_NAME/adminer.php https://github.com/vrana/adminer/releases/download/v6.2.0/adminer-6.2.0.php 

if [ -z "$(ls -A /var/www/cargoo 2>/dev/null)" ]
then
	hugo new site --force /var/www/cargoo 1>/dev/null

	rm -f /var/www/cargoo/hugo.toml

	cd /var/www/cargoo

	curl -fSL --silent -o blowfish.tar.gz https://github.com/nunocoracao/blowfish/archive/refs/tags/v3.9.0.tar.gz 

	tar -xf blowfish.tar.gz && rm -f blowfish.tar.gz

	mv blowfish-3.9.0 blowfish && mv blowfish ./themes/

	mkdir /var/www/cargoo/config

	mv /_default /var/www/cargoo/config/

	mv /projects /var/www/cargoo/content/

	hugo 1>/dev/null
fi

chown -R www-data:www-data /var/www/
chmod -R 775 /var/www/$DOMAIN_NAME

exec nginx -g "daemon off;"
