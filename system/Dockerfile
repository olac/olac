FROM alpine
MAINTAINER Haejoong Lee

WORKDIR /olac

VOLUME /olac
VOLUME /db

RUN apk --update add \
    apache2 apache2-mod-wsgi \
    mariadb \
    php-apache2 php-mysql php-cgi php-json php-gd \
    python py-pip py-mysqldb py-curl py-dateutil py-openssl py-cryptography py-enum34 py-cffi && \
    rm -f /var/cache/apk/*

RUN pip install CherryPy

RUN mkdir /run/apache2 && \
    sed -i -r 's/#(LoadModule rewrite_module )/\1/' /etc/apache2/httpd.conf && \
    echo "IncludeOptional /olac/system/olac-vhost.conf" >> /etc/apache2/httpd.conf && \
    mkdir /usr/lib/python2.7/site-packages/olac && \
    mkdir /usr/share/pear && \
    mkdir /run/mysqld && \
    chown mysql.mysql /run/mysqld && \
    ln -s /run/mysqld /var/run/mysqld && \
    echo "local0.debug /var/log/olac.log" > /etc/syslog.conf

COPY olacbase /etc/
COPY olacvar olacvarlist /bin/
COPY python/*.py /usr/lib/python2.7/site-packages/olac/
COPY PyMeld.py /usr/lib/python2.7/site-packages
COPY optionparser.py /usr/lib/python2.7/site-packages/
COPY olac.php /usr/share/pear/

ENTRYPOINT ["/olac/system/start.sh"]

