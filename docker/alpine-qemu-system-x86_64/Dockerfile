FROM alpine-olegsl:latest
MAINTAINER Oleg Slavkin <oleg@slavkin.info>

ARG LINUXUSER=user

RUN sudo apk add --no-cache qemu-system-x86_64
    
USER $LINUXUSER

# docker build --build-arg LINUXUSER=$(whoami) -t $(basename $(pwd) ) .
