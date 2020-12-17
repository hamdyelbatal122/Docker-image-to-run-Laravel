FROM hitalos/php:latest
LABEL maintainer="hitalos <hitalos@gmail.com>"

# Download and install NodeJS
ADD install-node.sh /usr/sbin/install-node.sh
RUN /usr/sbin/install-node.sh

WORKDIR /var/www
CMD php ./artisan serve --port=80 --host=0.0.0.0
EXPOSE 80
