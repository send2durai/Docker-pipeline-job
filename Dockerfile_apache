FROM centos:7
MAINTAINER thangadurai.murugan@dell.com
RUN yum install -y httpd
ENV Name=CloudcareersFrontend
COPY index.html /var/www/html/index.html
EXPOSE 80
RUN useradd centos
USER centos
CMD httpd -DFOREGROUND
