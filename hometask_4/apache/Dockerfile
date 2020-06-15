FROM centos:latest

MAINTAINER <danilConteiner@gmail.com>

EXPOSE 8081

CMD apt-get update && \
apt-get install -y apache2 && \
/etc/init.d/apache2 start

ENTRYPOINT tail -f /dev/null

