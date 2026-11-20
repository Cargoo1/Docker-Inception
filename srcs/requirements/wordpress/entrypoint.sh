#!/bin/bash

if ! wp --info &>/dev/null
then
	exit 1
fi

wp core install --allow-root --path=/var/www/$DOMAIN_NAME --url=https://acamargo.42.fr --title=inception \
		--admin_user=$WP_ADMIN_NAME --admin_email=$WP_ADMIN_EMAIL --admin_password=$WP_ADMIN_PASSWD 1>/dev/null

wp user create $WP_USR_NAME $WP_USR_EMAIL --path=/var/www/$DOMAIN_NAME --allow-root --role=author --user_pass=$WP_USR_PASSWD 1>/dev/null

wp config --allow-root --path=/var/www/$DOMAIN_NAME set WP_REDIS_HOST "redis" 1>/dev/null
wp config --allow-root --path=/var/www/$DOMAIN_NAME set WP_REDIS_PORT "6379" 1>/dev/null
wp config --allow-root --path=/var/www/$DOMAIN_NAME set WP_REDIS_PASSWORD "$REDIS_PASSWD" 1>/dev/null

wp plugin install --allow-root --path=/var/www/$DOMAIN_NAME redis-cache --activate 1>/dev/null

wp redis enable --allow-root --path=/var/www/$DOMAIN_NAME


BINARY=$(find /usr/sbin -name 'php-fpm*' -print -quit)

if ! $BINARY -t -y ./php-fpm.conf -c ./php.ini
then
	exit 1
fi

exec $BINARY -F -R -y ./php-fpm.conf -c ./php.ini
