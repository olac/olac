FROM haepal/olac:db-base-1 AS stage1

USER mysql

ADD olac_schema.sql /

RUN ( echo "use olac;"; cat /olac_schema.sql; ) | \
    mysqld --user=mysql --datadir=/db --bootstrap

VOLUME /db

ENTRYPOINT ["mysqld", "--datadir=/db", "--skip-networking=false"]
