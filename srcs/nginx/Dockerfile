FROM alpine:3.11
RUN apk update
RUN apk add vim nginx curl openrc openssl openssh-server 
EXPOSE 80 443 22
COPY  ./default.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /var/www/
RUN mkdir -p /run/nginx
RUN mkdir -p /run/openrc/
RUN touch /run/openrc/softlevel

#telegraf
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
COPY ./telegraf.conf /etc/

COPY start.sh /
CMD ["sh", "start.sh"]
