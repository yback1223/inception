FROM debian:bullseye

RUN apt-get update && apt-get upgrade
RUN apt-get install -y mariadb-server
RUN apt-get install -y mariadb-client

RUN mkdir -p /var/run/mysqld && \
    chown -R mysql:mysql /var/run/mysqld && \
    chmod 777 /var/run/mysqld

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools /

EXPOSE 3306

RUN chmod +x /init-db.sh
ENTRYPOINT ["/init-db.sh"]