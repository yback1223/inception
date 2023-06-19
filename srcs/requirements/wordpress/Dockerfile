FROM debian:buster

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y --no-install-recommends \
    php-fpm php-mysqli php-json php-curl php-dom php-exif php-fileinfo php-mbstring php-xml php-zip wget unzip 

RUN sed -i "s|listen = 127.0.0.1:9000|listen = 9000|g" \
      /etc/php/7.3/fpm/pool.d/www.conf && \
    sed -i "s|;listen.owner = nobody|listen.owner = nobody|g" \
      /etc/php/7.3/fpm/pool.d/www.conf && \
    sed -i "s|;listen.group = nobody|listen.group = nobody|g" \
      /etc/php/7.3/fpm/pool.d/www.conf

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /var/www

RUN wget --no-check-certificate https://wordpress.org/latest.zip && \
    unzip latest.zip && \
    cp -rf wordpress/* . && \
    rm -rf wordpress latest.zip

COPY ./requirements/wordpress/conf/yback_wp_cnf_create.sh .
RUN sh yback_wp_cnf_create.sh && rm yback_wp_cnf_create.sh && \
    chmod -R 0777 wp-content/

CMD ["/usr/sbin/php-fpm7.3", "-F"]
