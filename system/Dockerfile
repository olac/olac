FROM alpine
MAINTAINER Haejoong Lee

WORKDIR /olac

VOLUME /olac
VOLUME /db

RUN apk --update add apache2 php-apache2 php-mysql python mariadb py-mysqldb py-curl py-dateutil && \
    rm -f /var/cache/apk/* && \
    mkdir /run/apache2 && \
    sed -i 's@/var/www/localhost/htdocs@/olac/web@' /etc/apache2/httpd.conf && \
    mkdir /usr/lib/python2.7/site-packages/olac && \
    mkdir /usr/share/pear && \
    mkdir /run/mysqld && \
    chown mysql.mysql /run/mysqld && \
    ln -s /run/mysqld /var/run/mysqld && \
    echo "local0.debug /var/log/olac.log" > /etc/syslog.conf

COPY olacbase /etc
COPY olacvar /bin
COPY olacvarlist /bin
COPY python/*.py /usr/lib/python2.7/site-packages/olac/
COPY optionparser.py /usr/lib/python2.7/site-packages
COPY olac.php /usr/share/pear

ENTRYPOINT ["/olac/system/start.sh"]

