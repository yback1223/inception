#!/bin/sh

echo "Starting with DB_HOST: $DB_HOST"
echo "Starting with DB_NAME: $DB_NAME"
echo "Starting with DB_USER: $DB_USER"


# chmod +x /var/www/yback_wp_config.sh
chmod 777 yback_prepare_wp.sh
chmod 777 yback_start_wp.sh

# bash /var/www/yback_wp_config.sh
./yback_prepare_wp.sh
./yback_start_wp.sh

php-fpm7.4 --nodaemonize