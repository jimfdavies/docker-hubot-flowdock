FROM centos:latest
MAINTAINER Jim Davies

RUN yum install -y http://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum install nodejs npm --enablerepo=epel