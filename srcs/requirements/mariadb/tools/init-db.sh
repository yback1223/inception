#!/bin/bash
set -e

if [ ! -d "/var/lib/mysql/$MYSQL_DB" ]; then
  mysql_install_db --datadir=/var/lib/mysql --auth-root-authentication-method=normal >/dev/null
  mysqld --bootstrap << EOF
mysql -u root -e "FLUSH PRIVILEGES; 
ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT'; 
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;"

echo "MySQL initialization done!"
EOF
fi

exec mysqld --datadir=/var/lib/mysql