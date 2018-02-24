FROM kotsios/env:latest
MAINTAINER kotsios 

RUN sudo chmod 755 /var/www/html/*
RUN sudo chmod 755 /var/www/*
RUN sudo chown -R www-data:www-data /var/www/html*
RUN sudo chown -R www-data:www-data /var/www/*

RUN sudo git clone https://github.com/kotsios5/build-travis-ci /var/www/html/build

RUN ls /var/www/html/

RUN sh /var/www/html/build/install/install-yclas.sh



RUN sudo chmod -R 777 /var/www/yclas-test/oc/tests