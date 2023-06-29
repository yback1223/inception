#!/bin/sh

echo "Permission 777 open for yback_prepare_wp.sh and yback_start_wp.sh !!!"

chmod 777 yback_prepare_wp.sh
chmod 777 yback_start_wp.sh

echo "Execute yback_prepare_wp.sh !!!"

./yback_prepare_wp.sh

echo "Execute yback_start_wp.sh !!!"

./yback_start_wp.sh

echo "Activate PHP-FPM at foreground !!!"

php-fpm7.4 --nodaemonize