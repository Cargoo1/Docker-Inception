FROM	debian:bookworm

ARG	DOMAIN_NAME

RUN 	apt update -y && \
	apt install curl tar php-fpm php-mysql -y

RUN	curl --silent https://wordpress.org/wordpress-7.1.tar.gz --output wordpress.tar.gz && \
	tar -xf wordpress.tar.gz

RUN	mkdir -p /var/www/$DOMAIN_NAME &&\
	chown -R www-data:www-data /var/www/$DOMAIN_NAME

COPY	wp-config.php /var/www/${DOMAIN_NAME}/

RUN	mv ./wordpress/* /var/www/$DOMAIN_NAME/

RUN	curl --silent -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x ./wp-cli.phar && \
	mv ./wp-cli.phar /usr/bin/wp

COPY	php.ini php-fpm.conf ./

COPY	entrypoint.sh	.

RUN	chmod -u+x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
