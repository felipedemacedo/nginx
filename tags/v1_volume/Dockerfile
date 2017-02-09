FROM ubuntu:16.04

RUN apt-get -qq update
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
RUN apt-get -qq update
RUN apt-get -qq install -y apt-transport-https ca-certificates sudo vim
RUN apt-get -qq update
RUN apt-get -qq upgrade -y

ADD compile.sh ./
RUN chmod +x compile.sh

EXPOSE 80

VOLUME /etc/nginx

CMD ["sh", "-c", "./compile.sh ; /bin/bash"]