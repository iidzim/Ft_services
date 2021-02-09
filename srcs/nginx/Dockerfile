FROM alpine:latest
RUN apk update && apk add \
    vim \
    curl \
    openrc \
    nginx 

EXPOSE 80 443 



COPY  ./nginx.conf /etc/nginx/nginx.conf
COPY ./index.html ./var/www/
RUN mkdir -p ./run/nginx
RUN mkdir -p ./run/openrc/
RUN touch ./run/openrc/softlevel
CMD ["nginx", "-g", "daemon off;"]
