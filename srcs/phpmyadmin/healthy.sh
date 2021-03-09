#!/bin/sh
pgrep nginx 
$n = $?
pgrep php-fpm
$p = $?
pgrep telegraf
$t = $?

if [ $n -ne 0 -a $p -ne 0 -a $t -ne 0 ]; then
  exit 1
fi
