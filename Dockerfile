FROM alpine:3.3

WORKDIR /olac

RUN apk --update add \
    apache2 apache2-mod-wsgi \
    mariadb-client \
    php-apache2 php-mysql php-cgi php-json php-gd php-zip php-xmlreader \
    python py-pip py-mysqldb py-curl py-dateutil py-openssl py-cryptography py-enum34 py-cffi \
    perl perl-libwww perl-dbi perl-xml-parser perl-dbd-mysql \
    openjdk8-jre \
    unzip \
    bash \
    make sqlite && \
    rm -f /var/cache/apk/*

RUN pip install CherryPy==8.9.1

RUN yes | cpan XML::DOM && rm -rf $HOME/.cpan

RUN mkdir /run/apache2 && \
    sed -i -r 's/#(LoadModule rewrite_module )/\1/' /etc/apache2/httpd.conf && \
    sed -i -r 's@#(LoadModule.*)lib/apache2(/mod_cgi.so)@\1modules/\2@' /etc/apache2/httpd.conf && \
    echo "IncludeOptional /olac/system/olac-vhost.conf" >> /etc/apache2/httpd.conf && \
    mkdir /usr/lib/python2.7/site-packages/olac && \
    mkdir /usr/share/pear

COPY web /olac/web
COPY nonweb /olac/nonweb
COPY data /olac/data
COPY conf.docker /olac/conf
COPY system/olacbase /etc/
COPY system/olacvar system/olacvarlist /bin/
COPY system/python/*.py /usr/lib/python2.7/site-packages/olac/
COPY system/PyMeld.py /usr/lib/python2.7/site-packages
COPY system/optionparser.py /usr/lib/python2.7/site-packages/
COPY system/olac.php /usr/share/pear/
COPY system/xercesImpl.jar /usr/share/java/
COPY system/xercesSamples.jar /usr/share/doc/libxerces2-java-doc/examples/
COPY system/olac-vhost.conf /olac/system/
COPY system/start.sh /olac/

RUN mkdir /olac/web/register/tmp && chown apache /olac/web/register/tmp

VOLUME /olac/web/data

ENTRYPOINT ["/olac/start.sh"]

