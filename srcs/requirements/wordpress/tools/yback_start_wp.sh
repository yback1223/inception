#!/bin/sh

i=0
while ! mysqladmin -h$DB_HOST -u$DB_USER -p$DB_PASS ping >/dev/null 2>&1; do
  sleep 5
  i=$(($i+1))
done

if [ ! -f /var/www/html/wp-config.php ]; then
	mkdir -p /var/www/html
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar; 

	mv wp-cli.phar /usr/local/bin/wp;
	cd /var/www/html;
	
	wp core download --allow-root
	mv /var/www/wp-config.php /var/www/html/
	wp core install --allow-root --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADMIN_NAME --admin_password=$WP_ADMIN_PASS --admin_email=${WP_ADMIN_EMAIL}
	wp user create --allow-root $DB_USER $DB_EMAIL --user_pass=$DB_PASS --role=subscriber;
	wp theme install --allow-root astra 
	wp theme update  --allow-root astra
	wp theme activate --allow-root astra
fi