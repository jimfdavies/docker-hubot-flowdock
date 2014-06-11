FROM centos:latest
MAINTAINER Jim Davies

RUN yum install -y http://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum install -y nodejs npm redis python-setuptools git --enablerepo=epel
RUN easy_install supervisor

RUN npm install -g hubot coffee-script

# Create new hubot
RUN hubot --create /opt/hubot
WORKDIR /opt/hubot
RUN npm install && chmod +x bin/hubot

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ADD supervisor.conf /etc/supervisord.conf

CMD ["/tmp/run.sh"]