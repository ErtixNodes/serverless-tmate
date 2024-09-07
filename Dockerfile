# Container image that runs your code
FROM alpine:latest

RUN "echo 'https://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories"

RUN apk upgrade
RUN apk add bash htop curl wget sudo

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
