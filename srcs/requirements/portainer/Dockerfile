FROM	debian:bookworm

RUN	apt update -y && apt install curl tar -y

RUN	curl --silent -L -o portainer.tar.gz https://github.com/portainer/portainer/releases/download/2.45.3/portainer-2.45.3-linux-amd64.tar.gz \
	&& tar -xf portainer.tar.gz

WORKDIR	./portainer/

ENTRYPOINT ["./portainer"]
