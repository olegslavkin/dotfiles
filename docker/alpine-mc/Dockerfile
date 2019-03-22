FROM alpine-olegsl:latest
MAINTAINER Oleg Slavkin <oleg@slavkin.info>

ARG LINUXUSER=user

RUN sudo apk add --no-cache mc
    
USER $LINUXUSER

# docker build --build-arg LINUXUSER=$(whoami) -t $(basename $(pwd) ) .
