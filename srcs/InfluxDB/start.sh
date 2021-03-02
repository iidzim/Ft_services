rc-status
touch /run/openrc/softlevel
influx user create -n admin -p admin 
rc-service telegraf restart
influxd
/usr/bin/telegraf
sleep infinity
