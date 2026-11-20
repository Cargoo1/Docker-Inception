FROM	debian:bookworm

RUN	apt update -y && \
	apt install vsftpd -y

RUN	mkdir -p /var/run/vsftpd/empty

COPY	vsftpd.conf /etc/vsftpd.conf

COPY	entrypoint.sh /usr/bin/

RUN	chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
