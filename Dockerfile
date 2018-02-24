FROM kotsios/env:latest
MAINTAINER kotsios 

RUN sudo chmod 755 /var/www/html/*
RUN sudo chmod 755 /var/www/*
RUN sudo chown -R www-data:www-data /var/www/html*
RUN sudo chown -R www-data:www-data /var/www/*


