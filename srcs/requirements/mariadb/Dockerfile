FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/yback_create_db.sql /var/www/

EXPOSE 3306

RUN service mysql start
RUN mysql < /var/www/yback_create_db.sql
RUN rm -rf /var/www/yback_create_db.sql

CMD ["mysqld"]