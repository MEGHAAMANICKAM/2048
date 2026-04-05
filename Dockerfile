FROM ubuntu:22.04

RUN apt-get update 
RUN apt-get install -y nginx zip curl

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN curl -L -o /var/www/html/master.zip  https://github.com/gabrielecirulli/2048/archive/refs/heads/master.zip
RUN cd /var/www/html && unzip master.zip && mv 2048-master/* . && rm -rf master.zip 2048-master

EXPOSE 80
CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]