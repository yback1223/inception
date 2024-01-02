#!/bin/bash
set -e

echo "Waiting for MariaDB server to start..."
while ! mysqladmin ping -h localhost --silent; do
    sleep 1
    echo "Waiting for MariaDB server to start..."
done

echo "Creating SQL file !!!"

cat <<EOF | mysql -u root --password=$DB_ROOT
USE mysql;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT}';
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
EOF

echo "Created SQL file !!!"
