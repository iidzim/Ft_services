FROM alpine:3.11
EXPOSE 5050
RUN apk update
RUN apk add vim wget nginx curl openrc
RUN apk add php7-fpm php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz
RUN rm -rf latest.tar.gz
RUN mv  wordpress /var/www/html/
COPY  wp-config.php /var/www/html/
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /run/openrc/
RUN touch /run/openrc/softlevel

#telegraf
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir -p /etc/telegraf/
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY ./healthy.sh /
COPY start.sh /
CMD ["sh", "start.sh"]