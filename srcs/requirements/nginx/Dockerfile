FROM debian:bullseye

RUN apt-get update
RUN apt-get install -y nginx openssl

EXPOSE 443

COPY ./conf/default /etc/nginx/sites-enabled/default
COPY ./tools/yback_crt_key_gen.sh /var/www/
COPY ./tools/yback_to_the_sun.sh /

RUN chmod 777 yback_to_the_sun.sh

ENTRYPOINT [ "./yback_to_the_sun.sh" ]

