#! /bin/sh

confbase=`cat /etc/olacbase`/conf
hostname > $confbase/mysql/host
echo olac > $confbase/mysql/user
echo olac123 > $confbase/mysql/passwd

syslogd

exec httpd -D FOREGROUND
