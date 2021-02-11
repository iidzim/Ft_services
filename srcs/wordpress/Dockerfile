FROM alpine:latest
RUN apk update
RUN apk add vim nginx curl

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz
RUN rm -rf latest.tar.gz
RUN cp -rf wordpress /var/www/html/

COPY  ./default.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /var/www/

