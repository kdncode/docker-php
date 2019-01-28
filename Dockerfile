FROM centos
MAINTAINER khoa


RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install mongodb-server; yum clean all
RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm; yum clean all
RUN yum -y install php56u-gd php56u-mysqlnd php56u-fpm php56u-pgsql php56u-common php56u-bcmath php56u-xml php56u-pdo php56u-pecl-jsonc-devel php56u-process php56u-xml php56u-intl php56u-ldap php56u-mbstring php56u-cli php56u-pear php56u-devel php56u-opcache php56u-pecl-jsonc php56u; yum clean all

RUN mkdir -p /data/www
RUN cd /data/www
RUN php -S localhost:80
 
EXPOSE 80
