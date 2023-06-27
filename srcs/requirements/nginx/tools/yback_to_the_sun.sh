#!/bin/sh

cd /var/www
chmod 777 yback_crt_key_gen.sh

./yback_crt_key_gen.sh

cd /var/log/nginx
cat error.log
