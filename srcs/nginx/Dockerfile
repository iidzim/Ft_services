FROM alpine:3.11
EXPOSE 80 443 22
RUN apk update
RUN apk add vim nginx curl openrc openssl openssh-server 
COPY  ./default.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /var/www/index.html
RUN mkdir -p /run/nginx
RUN mkdir -p /run/openrc/
RUN touch /run/openrc/softlevel

#telegraf
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir -p /etc/telegraf/
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY ./healthy.sh /
COPY start.sh /
CMD ["sh", "start.sh"]
