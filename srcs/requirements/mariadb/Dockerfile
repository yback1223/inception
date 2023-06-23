FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/yback_create_db.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld"]
