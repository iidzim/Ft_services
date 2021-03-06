FROM alpine:3.11
EXPOSE 21
RUN apk add vsftpd openrc vim openssl
COPY ./vsftpd.conf /etc/vsftpd/vsftpd.conf

#telegraf
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir -p /etc/telegraf/
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY start.sh /
CMD ["sh", "start.sh"]