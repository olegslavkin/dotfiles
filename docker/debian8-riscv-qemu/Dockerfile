FROM debian8-olegsl
MAINTAINER Oleg Slavkin <oleg@slavkin.info>

ARG SRCDIR=/usr/src

RUN sudo apt-get update && sudo apt-get install -y libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev \
                                         libaio-dev libbluetooth-dev libbrlapi-dev libbz2-dev  \
                                         libcap-dev libcap-ng-dev libcurl4-gnutls-dev libgtk-3-dev \
                                         libibverbs-dev libjpeg62-turbo-dev libncurses5-dev libnuma-dev \
                                         librbd-dev librdmacm-dev libsasl2-dev libsdl1.2-dev libseccomp-dev \
                                         libsnappy-dev libssh2-1-dev libvde-dev libvdeplug-dev \
                                         libvte-2.90-dev libxen-dev liblzo2-dev valgrind xfslibs-dev
ADD $SRCDIR /usr/src

RUN cd /usr/src
RUN ./configure --target-list=riscv64-softmmu,riscv32-softmmu,riscv64-linux-user,riscv32-linux-user --prefix=/opt && \
    make -j $(( $(nproc) * 2 )) && \
    sudo make install

# cd ~/ && git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
# cd riscv-gnu-toolchain/riscv-qemu
# docker build --build-arg SRCDIR=$(pwd) -t $(basename $(pwd)) .
