FROM alpine:3.11
EXPOSE 8086 
# 8086: this is the HTTP API endpoint port, it’s used to send query to
# influxdb by HTTP request
RUN apk update
RUN apk add vim wget openrc curl libc6-compat
RUN apk add influxdb --no-cache
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir -p /etc/telegraf/
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY ./healthy.sh /
COPY start.sh /
CMD ["sh", "start.sh"]
