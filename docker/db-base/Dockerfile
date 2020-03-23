FROM alpine:3.11.3 AS stage1

RUN apk --update add mariadb && rm -rf /var/cache/apk/*
RUN mysql_install_db --user=mysql --datadir=/db; \
    ( echo "create database olac;"; \
    echo "grant all on olac.* to 'olac'@'%' identified by 'olac123';"; ) | \
    mysqld --user=mysql --datadir=/db --bootstrap --skip-grant-tables=off
RUN mkdir /run/mysqld && chown mysql.mysql /run/mysqld /db

