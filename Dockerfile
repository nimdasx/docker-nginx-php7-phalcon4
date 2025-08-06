FROM webdevops/php-nginx:7.4-alpine

LABEL maintainer="nimdasx@gmail.com" \
    description="nginx php-7.4 phalcon-4.1"

RUN ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime \
    && echo "Asia/Jakarta" > /etc/timezone \
    && apk add --no-cache nodejs npm

COPY php-nimdasx.ini /usr/local/etc/php/conf.d/php-nimdasx.ini
COPY vhost.conf /opt/docker/etc/nginx/vhost.conf

ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN install-php-extensions sqlsrv pdo_sqlsrv psr phalcon-4.1.2

#arm
#RUN wget -O "/usr/local/bin/go-replace" "https://github.com/webdevops/goreplace/releases/download/1.1.2/gr-arm64-linux" \
#    && chmod +x "/usr/local/bin/go-replace" \
#    && "/usr/local/bin/go-replace" --version

RUN apk update && apk add --no-cache \
    libreoffice