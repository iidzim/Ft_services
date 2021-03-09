#!/bin/sh
pgrep vsftpd 
v=$?
pgrep telegraf
t=$?

if [ $v -ne 0 -o $t -ne 0 ];
then
  return 1
else
  return 0
fi
