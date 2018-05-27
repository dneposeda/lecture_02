FROM ubuntu

MAINTAINER Denis Tivikov

RUN apt-get update
RUN apt-get install nginx -y

ADD cfg/nginx.conf /etc/nginx/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]