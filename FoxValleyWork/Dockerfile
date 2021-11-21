FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nodejs -y
RUN apt-get install mysql-server mysql-client -y
CMD service mysql start
RUN apt-get install apache2 apache2-doc apache2-utils libexpat1 ssl-cert -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y phpmyadmin
CMD bash



