FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/yback_create_db.sql /tmp/yback_create_db.sql

RUN chmod 755 /tmp/yback_create_db.sql
RUN mkdir -p /var/run/mysqld && chown mysql:mysql /var/run/mysqld

EXPOSE 3306

CMD ["mysqld", "--bind-address=0.0.0.0", "--socket=/var/run/mysqld/mysqld.sock", "--init-file=/tmp/yback_create_db.sql"]
