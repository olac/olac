#! /bin/sh

confbase=`cat /etc/olacbase`/conf
hostname > $confbase/mysql/host
echo $OLAC_MYSQL_USER > $confbase/mysql/user
echo $OLAC_MYSQL_PASSWORD > $confbase/mysql/passwd

for d in static static-records xmldump register/pending register/hosted; do
    p=/olac/web/data/$d
    mkdir -p $p
    chgrp www-data $p
    chmod g+ws $p
done

syslogd

exec httpd -D FOREGROUND
