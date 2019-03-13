FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install -y mysql-server nano

RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password password xxx'"]
RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password xxx'"]

RUN mkdir /var/run/mysqld \
 && chown -R mysql:mysql /var/run/mysqld

COPY init.sql /tmp
COPY setupaccess /tmp

RUN chmod u+x /tmp/setupaccess
RUN /tmp/setupaccess

COPY mysqld.cnf /etc/mysql/mysql.conf.d/

EXPOSE 3306

CMD mysqld_safe