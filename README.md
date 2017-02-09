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

# FAQ

While mounting with external volume, if the host contains files that may be overwrited by the installation, you may be prompted with something like this:

Configuration file '/etc/nginx/nginx.conf'
==> File on system created by you or by a script.
==> File also in package provided by package maintainer.
What would you like to do about it ? Your options are:
Y or I : install the package maintainer's version
N or O : keep your currently-installed version
D : show the differences between the versions
Z : start a shell to examine the situation
The default action is to keep your current version.
* nginx.conf (Y/I/N/O/D/Z) [default=N] ?

Just press ENTER if you fell like keeping the files from the host.
