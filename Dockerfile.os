FROM debian:jessie
#FROM debian:stretch

MAINTAINER darin.tracy@hcl.com 

RUN apt-get update && apt-get upgrade && apt-get dist-upgrade

RUN groupadd informix -g 200
RUN useradd -m -g informix -u 200 informix  -s /bin/bash

RUN apt-get -y install net-tools libaio1 bc libncurses5 ncurses-bin libpam0g libncurses5-dev libelf1 vim sudo curl jq 
#RUN apt-get -y install openssh-server
#RUN apt-get install -y openjdk-7-jre 
#RUN apt-get -y install openjdk-8-jdk
RUN  echo "informix ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN  echo "informix:in4mix" | chpasswd
