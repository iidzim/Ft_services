FROM alpine:3.11
EXPOSE 21
RUN apk add vsftpd openrc
COPY start.sh /
CMD ["sh", "start.sh"]