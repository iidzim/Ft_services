FROM alpine:3.11
EXPOSE 21
RUN apk add vsftpd openrc

#telegraf
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
COPY ./telegraf.conf /etc/

COPY start.sh /
CMD ["sh", "start.sh"]