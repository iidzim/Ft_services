#!/bin/sh
pgrep nginx 
$n = $?
pgrep php-fpm
$p = $?
pgrep telegraf
$t = $?

if [$n -ne 0] && [$p -ne 0] && [$t -ne 0]; then
  exit 1
fi
