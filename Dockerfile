FROM centos:latest
MAINTAINER Chris Short <chris@chrisshort.net>

RUN yum clean all && yum update -y
RUN yum install -y ntp && yum clean all
EXPOSE 123
ENTRYPOINT ["ntpd"]
