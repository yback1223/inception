FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server mariadb-client

RUN mkdir /var/run/mysqld && chmod 777 /var/run/mysqld
RUN mkdir -p /etc/my.cnf.d && chmod 755 /etc/my.cnf.d

RUN echo '[mysqld]' > /etc/my.cnf.d/docker.cnf \
    && echo 'skip-host-cache' >> /etc/my.cnf.d/docker.cnf \
    && echo 'skip-name-resolve' >> /etc/my.cnf.d/docker.cnf \
    && echo 'bind-address=0.0.0.0' >> /etc/my.cnf.d/docker.cnf

RUN sed -i "s|skip-networking|skip-networking=0|g" /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

EXPOSE 3306

COPY requirements/mariadb/conf/yback_create_db.sh .
RUN chmod +x yback_create_db.sh \
    && ./yback_create_db.sh \
    && rm yback_create_db.sh

USER mysql
CMD ["/usr/sbin/mysqld", "--skip-log-error"]
