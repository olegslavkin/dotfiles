FROM debian:8
MAINTAINER Oleg Slavkin <oleg@slavkin.info>

ARG LINUXUSER=user
ARG UID=1000

RUN apt-get update && apt-get install -y sudo && \
    groupadd wheel && \
    groupadd $UID && \
    useradd -u $UID -g $UID -G wheel $LINUXUSER

COPY sudoers /etc/sudoers    

USER $LINUXUSER

# docker build --build-arg LINUXUSER=$(whoami) --build-arg UID=$(id -u) -t $(basename $(pwd)) .
