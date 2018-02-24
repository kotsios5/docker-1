FROM kotsios/env:latest
MAINTAINER kotsios 

RUN sudo chmod 755 /var/www/html/*
RUN sudo chmod 755 /var/www/*
RUN sudo chown -R www-data:www-data /var/www/html*
RUN sudo chown -R www-data:www-data /var/www/*

RUN sudo apt-get install -y git
RUN sudo git clone https://github.com/kotsios5/build-travis-ci /build

RUN ls /build
RUN ls /var/www
RUN ls /var/www/html

