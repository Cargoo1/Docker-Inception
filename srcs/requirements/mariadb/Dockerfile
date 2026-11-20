FROM	debian:bookworm

RUN	apt update -y && apt install -y \
	mariadb-server \
	mariadb-client \
	galera-4

COPY	./entrypoint.sh /usr/bin/

RUN	chmod -u+x /usr/bin/entrypoint.sh

RUN	sed -i 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT ["entrypoint.sh"]
