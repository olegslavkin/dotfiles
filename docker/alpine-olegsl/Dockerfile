FROM alpine:latest
MAINTAINER Oleg Slavkin <oleg@slavkin.info>

ARG LINUXUSER=user
ARG UID=1000
COPY sudoers /etc/sudoers

RUN apk add --no-cache sudo && \
    adduser -u $UID -G wheel -D $LINUXUSER
    
USER $LINUXUSER

# docker build --build-arg LINUXUSER=$(whoami) --build-arg UID=$(id -u) -t alpine-$(whoami) .
