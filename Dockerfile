FROM wordpress:4.6.1-php7.0
MAINTAINER Danilo <mail@dbrgn.ch>

RUN curl -o dotdeb.gpg http://www.dotdeb.org/dotdeb.gpg && \
    apt-key add dotdeb.gpg && \
    echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y php7.0-imagick php7.0-mcrypt && \
    rm -r /var/lib/apt/lists/*
