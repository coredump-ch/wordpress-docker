FROM wordpress:4.6.1-php7.0
MAINTAINER Danilo <mail@dbrgn.ch>

# Install dependencies
RUN apt-get update && \
    apt-get install -y libmcrypt-dev && \
    rm -r /var/lib/apt/lists/*

# Install PHP core extensions
RUN docker-php-ext-install -j$(nproc) mcrypt
