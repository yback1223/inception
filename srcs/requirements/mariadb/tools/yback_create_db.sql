USE mysql;
ALTER USER 'root'@'localhost' IDENTIFIED BY ${DB_ROOT};
CREATE DATABASE ${DB_NAME};
CREATE USER ${DB_USER}@'%' IDENTIFIED by ${DB_PASS};
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO ${DB_USER}@'%';
FLUSH PRIVILEGES;
