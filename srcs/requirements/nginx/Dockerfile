FROM debian:12

EXPOSE	443/tcp

ARG	DOMAIN_NAME

ARG	NGINX_CONF_PATH

RUN 	apt update -y && apt install -y nginx curl \
	&& mkdir -p /var/www/$DOMAIN_NAME

RUN	curl -O --silent -L https://github.com/gohugoio/hugo/releases/download/v0.167.0/hugo_0.167.0_linux-amd64.tar.gz \
	&& tar -xf hugo*

RUN	mv hugo /usr/bin/

COPY	./nginx.conf $NGINX_CONF_PATH

COPY	config /

COPY	content /

COPY	entrypoint.sh .

RUN	chmod +x ./entrypoint.sh && \
	mv entrypoint.sh /usr/bin/

ENTRYPOINT ["entrypoint.sh"]
