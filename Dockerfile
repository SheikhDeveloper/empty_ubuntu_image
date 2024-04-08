#Download base image ubuntu 22.04
FROM ubuntu:22.04

LABEL maintainer="tvemperror@gmail.com"
LABEL description="This is custom Docker Image based on Ubuntu 22.04."

RUN apt update --fix-missing
RUN apt install -y apt-utils
#NOTE: Replace new user with your custom username if you want
RUN useradd -ms /bin/bash new_user
RUN apt install -y libncurses5 gcc-multilib g++ make gdb binutils python3 git openssh-client cmake wget xz-utils python3-pip texinfo binutils-gold binutils-dev python-is-python3 gcc-10-plugin-dev automake autoconf vim
 
USER root
WORKDIR /home/new_user/
