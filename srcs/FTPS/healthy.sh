#!/bin/sh
pgrep vsftpd 
$v = $?
pgrep telegraf
$t = $?

if [$v -ne 0] && [$t -ne 0]; then
  exit 1
fi
