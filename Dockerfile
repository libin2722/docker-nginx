#
# MAINTAINER        Terry.Li<libin2722@sohu.com>
# DOCKER-VERSION    1.12.1
#
# Dockerizing CentOS7: Dockerfile for building CentOS images
#
# docker run -d -p 80:80 --name nginx --add-host www.paladonsystems.com.cn:10.168.11.69 -v /opt/software/docker/docker-nginx/nginx.conf:/etc/nginx/nginx.conf daocloud.io/libin2722/nginx
#
FROM       daocloud.io/libin2722/centos:latest
MAINTAINER Terry.Li,<libin2722@sohu.com>

RUN yum install -y nginx

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]

