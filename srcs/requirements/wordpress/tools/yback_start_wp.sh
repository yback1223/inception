#!/bin/sh

i=0
while ! mysqladmin -h$DB_HOST -u$DB_USER -p$DB_PASS ping >/dev/null 2>&1; do
  sleep 5
  i=$(($i+1))
done

# if [ ! -f /var/www/html/wp-config.php ]; then
	mkdir -p /var/www/html
	cd /var/www/html;
	
	wp core download --allow-root
	wp config create --allow-root --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST
	wp core install --allow-root --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADMIN_NAME --admin_password=$WP_ADMIN_PASS --admin_email=${WP_ADMIN_EMAIL}
	wp user create --allow-root $DB_USER $DB_EMAIL --user_pass=$DB_PASS --role=subscriber;
	wp theme install --allow-root astra 
	wp theme update  --allow-root astra
	wp theme activate --allow-root astra
# fi

echo "wp job done"