FROM debian:bullseye

RUN apt-get update
RUN apt-get -y install php7.4 php7.4-mysqli php7.4-fpm curl sendmail mariadb-client

EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d
COPY ./tools /var/www/
COPY ./tools/yback_to_the_moon.sh /

RUN chmod 777 yback_to_the_moon.sh

CMD [ "./yback_to_the_moon.sh" ]