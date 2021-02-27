echo -e "\n\n\n\n\n\n\n\n" > input
openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout /etc/ssl/nginx_cert.key -out /etc/ssl/nginx_cert.crt < input
rm input
rc-status
rc-service nginx restart
echo -e "1234\n1234\n" > input
adduser ikram < input
rm input
rc-service sshd restart
sleep infinity