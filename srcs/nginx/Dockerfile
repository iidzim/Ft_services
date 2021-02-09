FROM alpine:latest
RUN apk update && apk add \
    vim \
    curl \
    openrc \
    nginx 

EXPOSE 80 443 



#  COPY  ./nginx.conf /etc/nginx/nginx.conf
# RUN mkdir -p /run/nginx
CMD ["nginx", "-g", "daemon off;"]
