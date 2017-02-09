FROM ubuntu:16.04

##NGINX INSTALL (https://www.phusionpassenger.com/library/install/nginx/install/oss/xenial/)

# Install our PGP key and add HTTPS support for APT
RUN apt-get update
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates vim sudo nginx-extras
RUN apt-get update
RUN apt-get upgrade -y

WORKDIR /etc/nginx

#restart nginx
RUN service nginx restart

CMD ["sh", "-c", "apt-get -qq update ; apt-get -qq upgrade -y ; service nginx restart ; ls . ; /bin/bash"]