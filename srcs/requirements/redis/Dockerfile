FROM	debian:bookworm

RUN	apt update -y && \
	apt install redis -y

COPY	entrypoint.sh /usr/bin/

RUN	chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
