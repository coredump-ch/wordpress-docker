FROM wordpress:4.6.1-php5.6
MAINTAINER Danilo <mail@dbrgn.ch>

RUN apt-get update && \
    apt-get install -y php5-imagick php5-mcrypt && \
    rm -r /var/lib/apt/lists/*
