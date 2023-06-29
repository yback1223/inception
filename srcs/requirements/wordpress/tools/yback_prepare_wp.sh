#!/bin/sh

echo "Change listen option to 9000 !!!"

sed -i "s/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/" "/etc/php/7.4/fpm/pool.d/www.conf";

echo "Allow Nginx Web server to access to /var/www !!!"

chown -R www-data:www-data /var/www/*;

echo "Permission 777 open for /var/www !!!"

chown -R 777 /var/www/*;

echo "Make /run/php directory !!!"

mkdir -p /run/php/;

echo "Make process ID Storage !!!"

touch /run/php/php7.4-fpm.pid;

echo "Download wp-cli !!!"

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

echo "Permission 777 open for wp-cli.phar !!!"

chmod 777 wp-cli.phar; 

echo "Make wp-cli command to wp !!!"

mv wp-cli.phar /usr/local/bin/wp;