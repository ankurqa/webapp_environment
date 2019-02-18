FROM ubuntu
RUN apt-get update
RUN echo -e "/n6/n/n44" | apt install php7.0 -y
RUN apt install apache2 -y
RUN mkdir -p /opt/data
RUN echo "service apache2 start"  >> /etc/bash.bashrc
RUN service apache2 start





FROM php:7.0.30-apache
RUN docker-php-ext-install mysqli

