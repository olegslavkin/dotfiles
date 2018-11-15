FROM alpine-olegsl:latest
MAINTAINER Oleg Slavkin <oleg@slavkin.info>

ARG LINUXUSER=user

RUN sudo apk add --no-cache python3 && \
    sudo pip3 install ipython
    
USER $LINUXUSER

# docker build --build-arg LINUXUSER=$(whoami) -t $(basename $(pwd) ) .
