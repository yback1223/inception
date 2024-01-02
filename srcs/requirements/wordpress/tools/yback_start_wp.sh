#!/bin/sh

echo "Checking for MariaDB connection !!!"

i=0
while ! mysqladmin -h$DB_HOST -u$DB_USER -p$DB_PASS ping >/dev/null 2>&1; do
  sleep 5
  echo "Still connecting ...."
  i=$(($i+1))
done

echo "Good Database Connection !!!"
echo "Make /var/www/html directory !!!"

mkdir -p /var/www/html

echo "Move to /var/www/html !!!"

cd /var/www/html;

echo "wp-cli Begin !!!"

wp core download --allow-root
wp config create --allow-root --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST
wp core install --allow-root --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADMIN_NAME --admin_password=$WP_ADMIN_PASS --admin_email=${WP_ADMIN_EMAIL}
wp user create --allow-root $DB_USER $DB_EMAIL --user_pass=$DB_PASS --role=subscriber;
wp theme install --allow-root astra 
wp theme update  --allow-root astra
wp theme activate --allow-root astra

echo "wp-cli job done"