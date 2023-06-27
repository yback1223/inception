FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir -p /var/run/mysqld && chown mysql:mysql /var/run/mysqld

COPY ./tools/init-db.sh /tmp/init-db.sh
RUN chmod +x /tmp/init-db.sh

EXPOSE 3306

CMD ["sh", "-c", "mysqld & sleep 10 && /tmp/init-db.sh && wait $!"]

