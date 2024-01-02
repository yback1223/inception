FROM debian:bullseye

RUN apt-get update && apt-get upgrade
RUN apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir -p /var/run/mysqld && chown mysql:mysql /var/run/mysqld

COPY ./tools/init-db.sh /init-db.sh
RUN chmod +x /init-db.sh

EXPOSE 3306

# MariaDB 서버를 시작하는 CMD
CMD ["mysqld"]

# 초기화 스크립트를 실행하는 ENTRYPOINT
ENTRYPOINT ["/init-db.sh"]