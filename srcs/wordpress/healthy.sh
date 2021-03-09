#!/bin/sh
pgrep nginx
N=$?
pgrep php-fpm
P=$?
pgrep telegraf
T=$?

if [ $N -ne 0 -o $P -ne 0 -o $T -ne 0 ];
then
  return 1
else
  return 0
fi
# if [ $n -ne 0 ]; then
#   exit $n
# fi