#!/bin/sh
pgrep nginx 
n=$?
pgrep sshd
s=$?
pgrep telegraf
t=$?

if [ $n -ne 0 -o $s -ne 0 -o $t -ne 0 ];
then
  return 1
else
  return 0
fi
