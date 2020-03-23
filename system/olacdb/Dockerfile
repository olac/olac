FROM haepal/olac:db-base-1 AS stage1

USER mysql
VOLUME /db

ADD olac_schema.sql /

RUN ( echo "use olac;"; cat /olac_schema.sql; ) | \
    mysqld --user=mysql --datadir=/db --bootstrap

ENTRYPOINT ["mysqld", "--datadir=/db", "--skip-networking=false"]
