FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx openssl

EXPOSE 443

COPY ./conf/default /etc/nginx/sites-enabled/default
COPY ./tools/yback_crt_key_gen.sh /var/www
RUN chmod +x /var/www/yback_crt_key_gen.sh

ENTRYPOINT [ "var/www/yback_crt_key_gen.sh" ]

CMD ["nginx", "-g", "daemon off;"]
