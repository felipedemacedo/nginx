# nginx
Nginx and Passenger with Docker

# How to use it

## Nginx
docker run -ti --name container_name -p 80:80 felipederodrigues/nginx:v1

## Nginx (external volume)
docker run -ti --name container_name -p 80:80 -v /path/to/host/dir:/etc/nginx felipederodrigues/nginx:v1_volume

## Nginx + Passenger
docker run -ti --name container_name -p 80:80 felipederodrigues/nginx:passenger

## Nginx + Passenger (external volume)
docker run -ti --name container_name -p 80:80 -v /path/to/host/dir:/etc/nginx  felipederodrigues/nginx:passenger_volume