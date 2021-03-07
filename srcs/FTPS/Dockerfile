FROM alpine:3.11
EXPOSE 21 1030 1031 1032
RUN apk update
RUN apk add --no-cache openrc vim openssl vsftpd
COPY ./vsftpd.conf /etc/vsftpd/vsftpd.conf

# # COPY ./pure-ftpd-1.0.47.tar.bz2 /
# RUN wget pure-ftpd-1.0.47.tar.bz2
# RUN tar -xvf pure-ftpd-1.0.47.tar.bz2
# RUN rm -rf pure-ftpd-1.0.47.tar.bz2
# RUN mv pure-ftpd-1.0.47 pure-ftpd

#telegraf
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir -p /etc/telegraf/
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY start.sh /
CMD ["sh", "start.sh"]