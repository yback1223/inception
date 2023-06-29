#!/bin/sh

echo "Move to /var/www !!!"

cd /var/www

echo "Permission 777 open for yback_crt_key_gen.sh !!!"

chmod 777 yback_crt_key_gen.sh

echo "Execute yback_crt_key_gen.sh !!!"

./yback_crt_key_gen.sh

echo "Print error logs !!!"

cd /var/log/nginx
cat error.log

echo "error.log done !!!"
