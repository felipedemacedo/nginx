#!/bin/bash

set -x

pwd

DIRECTORY="/etc/nginx"
mkdir -p $DIRECTORY
cd $DIRECTORY

apt-get install -y nginx-extras

apt-get -qq update
apt-get -qq upgrade -y

service nginx restart

/bin/bash