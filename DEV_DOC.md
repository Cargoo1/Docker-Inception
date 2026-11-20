# Developer documentation

To setup the environment from scratch you will need Docker and the plugin Docker-compose. All the configuration files are in each service directory.

In the secrets directory are the credentials needed for the tls protocol.

To build the docker images run:
```bash
    make build
```
To run the stack run:
```bash
    make 
```
The docker-compose.yaml is in the srcs/ directory, and all the Dockerfiles in their corresponding service directory.

To list the containers running, run:
```bash
    make ps
```
To see the all docker volumes run:
```bash
    make volumes
```
To see where the data is store and to modify it, search in the docker-compose.yml in the srcs/ directory in the volumes section:
```yml
volumes:
    ...
```
