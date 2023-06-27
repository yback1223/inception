#!/bin/bash

echo "Starting with DB_HOST: $DB_HOST"
echo "Starting with DB_NAME: $DB_NAME"
echo "Starting with DB_USER: $DB_USER"


cat <<EOF | mysql -u root --password=$DB_ROOT
USE mysql;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT}';
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
EOF
