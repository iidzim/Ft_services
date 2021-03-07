echo -e "\n\n\n\n\n\n\n\n" > input
openssl req -newkey rsa:2048 -new -nodes -x509 -days 365 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem < input
rm input
rc-status
echo -e "1234\n1234\n" > input
adduser ikram < input
rm input
rc-service vsftpd restart
/usr/bin/telegraf &
# /bin/sh
sleep infinity

