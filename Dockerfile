#
# MAINTAINER        Terry.Li<libin2722@sohu.com>
# DOCKER-VERSION    1.12.1
#
# Dockerizing CentOS7: Dockerfile for building CentOS images
#
FROM       daocloud.io/libin2722/centos:latest
MAINTAINER Terry.Li,<libin2722@sohu.com>

RUN yum install -y nginx

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]

