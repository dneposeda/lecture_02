FROM ubuntu:16.04

MAINTAINER Denis Tivikov

RUN apt-get -yqq update
RUN apt-get -yqq install nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN mkdir /var/www/


ADD project /var/www/
WORKDIR /var/www/

RUN npm install

EXPOSE 80

CMD [ "npm", "run", "server" ]