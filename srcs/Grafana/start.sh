rc-status
# /bin/sh
/grafana/bin/grafana-server --homepath=/grafana &
/usr/bin/telegraf &
sleep infinity