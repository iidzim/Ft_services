FROM alpine:3.11
EXPOSE 3000
RUN apk update
RUN apk add vim openrc wget
RUN wget https://dl.grafana.com/oss/release/grafana-6.5.0.linux-amd64.tar.gz
RUN tar -zxvf grafana-6.5.0.linux-amd64.tar.gz
RUN rm -rf grafana-6.5.0.linux-amd64.tar.gz
RUN mv grafana-6.5.0 grafana
RUN cp -rf grafana  /var/lib/

#telegraf
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
COPY ./telegraf.conf /etc/

COPY start.sh /
CMD ["sh", "start.sh"]
