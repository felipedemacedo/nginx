#!/bin/bash

set -x

DIRECTORY="/etc/nginx"
mkdir -p $DIRECTORY
cd $DIRECTORY

apt-get -qq update
sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger xenial main > /etc/apt/sources.list.d/passenger.list'
apt-get -qq update
apt-get install -y nginx-extras passenger
apt-get -qq update

# uncomment include /etc/nginx/passenger.conf;
cat /etc/nginx/nginx.conf | grep -e "passenger.conf"
sed -i.bak "s/# include \/etc\/nginx\/passenger.conf;/include \/etc\/nginx\/passenger.conf;/g" /etc/nginx/nginx.conf
cat /etc/nginx/nginx.conf | grep -e "passenger.conf"

apt-get -qq update
apt-get -qq upgrade -y

service nginx restart

/usr/bin/passenger-config validate-install --auto 
/usr/sbin/passenger-memory-stats 

/bin/bash