FROM centos:latest
MAINTAINER Oleg Slavkin <oleg@slavkin.info>

ARG LINUXUSER=user
COPY sudoers /etc/sudoers

RUN yum install -y sudo && \
    adduser -u 1000 -G wheel $LINUXUSER
    
USER $LINUXUSER

# docker build --build-arg LINUXUSER=$(whoami) -t centos-$(whoami) .
