FROM centos:7
MAINTAINER thangadurai.murugan@dell.com
RUN yum -y install epel-release
RUN yum -y update
RUN yum install -y nginx
ENV Name=demodurai
COPY index.html /usr/share/nginx/html
EXPOSE 80
RUN useradd appuser
USER appuser
CMD nginx -DFOREGROUND
