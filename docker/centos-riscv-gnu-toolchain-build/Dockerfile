FROM centos-olegsl:latest
MAINTAINER Oleg Slavkin <oleg@slavk.in>

RUN sudo yum install autoconf automake libmpc-devel mpfr-devel gmp-devel \
                     gawk git bison flex texinfo patchutils gcc gcc-c++ \
                     zlib-devel expat-devel make

WORKDIR /opt
RUN git clone --recursive https://github.com/riscv/riscv-gnu-toolchain && \
    cd riscv-gnu-toolchain && \
    ./configure --prefix=/opt/riscv && \
    sudo make linux && \
    #make install

# docker volume create --label riscv64-unknown-linux-gnu && 
# docker run -it --rm -v riscv64-unknown-linux-gnu:/opt/riscv centos-riscv-gnu-toolchain-build
                     
