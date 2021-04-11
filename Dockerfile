FROM ubuntu:latest

RUN apt-get update && apt-get -y install cowsay
ENV PATH="/usr/games/:${PATH}"

ADD ./sentences.log /root/sentences.log
ADD ./tehenszkript.sh /root/tehenszkript.sh


CMD ["/bin/bash", "/root/tehenszkript.sh"]