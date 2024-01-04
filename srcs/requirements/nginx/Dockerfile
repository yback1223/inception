FROM debian:bullseye

RUN apt-get update
RUN apt-get install -y nginx openssl

EXPOSE 443

COPY conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./tools/yback_crt_key_gen.sh /

RUN chmod 777 /yback_crt_key_gen.sh

ENTRYPOINT [ "./yback_crt_key_gen.sh" ]
