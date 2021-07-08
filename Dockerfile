FROM centos:latest
MAINTAINER nitintaneja809@gmail.com
RUN yum install httpd -y \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/burger-king.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip burger-king.zip
RUN cp -rvf food-website-template/* .
RUN rm -rf food-website-template burger-king.zip
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
EXPOSE 80
