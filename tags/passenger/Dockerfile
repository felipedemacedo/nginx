FROM felipederodrigues/nginx:v1

RUN sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger xenial main > /etc/apt/sources.list.d/passenger.list'
RUN apt-get -qq update

# Install Passenger + Nginx
RUN apt-get install -y nginx-extras passenger
RUN apt-get -qq update

# uncomment include /etc/nginx/passenger.conf;
RUN cat /etc/nginx/nginx.conf | grep -e "passenger.conf"
RUN sed -i.bak "s/# include \/etc\/nginx\/passenger.conf;/include \/etc\/nginx\/passenger.conf;/g" /etc/nginx/nginx.conf
RUN cat /etc/nginx/nginx.conf | grep -e "passenger.conf"

#restart nginx
RUN service nginx restart

WORKDIR /etc/nginx

CMD ["sh", "-c", "apt-get -qq update ; apt-get -qq upgrade -y ; service nginx restart ; ls . ; /usr/bin/passenger-config validate-install --auto ; /usr/sbin/passenger-memory-stats ; /bin/bash"]