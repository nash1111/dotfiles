FROM ubuntu:devel

RUN apt-get update && apt-get install -y wget

RUN apt-get install -y sudo git

RUN apt-get install -y vim tmux xonsh

ADD setup.sh /home

ADD commands /home

ADD home /home
