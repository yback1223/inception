#!/bin/sh

sed -i "s/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/" "/etc/php/7.4/fpm/pool.d/www.conf";
chown -R www-data:www-data /var/www/*;
chown -R 777 /var/www/*;
mkdir -p /run/php/;
touch /run/php/php7.4-fpm.pid;

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar; 
mv wp-cli.phar /usr/local/bin/wp;