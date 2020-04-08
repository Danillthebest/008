FROM ubuntu:18.04 as base
MAINTAINER <danillthebest3547@gmail.com>

RUN apt-get update && \
    apt-get install -y apache2 && \
    /etc/init.d/apache2 start 


EXPOSE 8081
ENTRYPOINT tail -f /dev/null