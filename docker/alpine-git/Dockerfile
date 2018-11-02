FROM alpine-olegsl:latest
MAINTAINER Oleg Slavkin <oleg@slavkin.info>

ARG LINUXUSER=user

RUN sudo apk add --no-cache git openssh-client
    
USER $LINUXUSER

# docker build --build-arg LINUXUSER=$(whoami) -t $(basename $(pwd) ) .
