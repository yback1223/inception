#!/bin/bash

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
openssl req -x509 -nodes -days 365 -newkey ${CRT_BIT} -keyout ${KEY_STRG}/nginx.key -out ${CRT_STRG}/nginx.crt -subj "/C=KR/ST=Seoul/L=Seoul/O=${WP_TITLE}/CN=${WP_URL}";
fi

nginx -g 'daemon off;'