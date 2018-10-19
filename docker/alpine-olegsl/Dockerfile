FROM alpine:latest
MAINTAINER Oleg Slavkin <oleg@slavkin.info>

ARG LINUXUSER=user
COPY sudoers /etc/sudoers

RUN apk add --no-cache sudo && \
    adduser -u 1000 -G wheel -D $LINUXUSER
    
USER $LINUXUSER

# docker build --build-arg LINUXUSER=$(whoami) -t alpine-$(whoami) .
