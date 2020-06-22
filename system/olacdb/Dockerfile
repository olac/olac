FROM alpine:3.11.3

ADD init.sh /
ADD olac_schema.sql /
RUN chmod 755 /init.sh

RUN apk --update add mariadb && rm -rf /var/cache/apk/*

VOLUME /db

RUN mkdir /run/mysqld && chown mysql.mysql /run/mysqld /db

# When running mysqld with existing database:
# ENTRYPOINT ["mysqld", "--user=mysql", "--datadir=/db", "--skip-networking=false"]

# When initializing a new database:
# ENTRYPOINT ["/init.sh", "/olac_schema.sql"]
