FROM debian:bullseye

RUN apt-get update
RUN apt-get -y install php7.4 php7.4-mysqli php7.4-fpm curl

EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d
COPY ./tools /var/www/

RUN chmod +x /var/www/yback_prepare_wp.sh
RUN chmod +x /var/www/yback_start_wp.sh
RUN chmod +x /var/www/yback_entrypoint.sh

ENTRYPOINT [ "/var/www/yback_entrypoint.sh" ]

