FROM ubuntu:14.04
MAINTAINER nicolas.deloof@gmail.com <Nicolas De Loof>

# install curl so we can download JDK
RUN apt-get update
RUN apt-get -y install curl

# Download JDK 7u65 from Oracle download site
RUN cd /opt &&  curl -L 'http://download.oracle.com/otn-pub/java/jdk/7u65-b17/jdk-7u65-linux-x64.tar.gz' -H 'Cookie: oraclelicense=accept-securebackup-cookie; gpw_e24=Dockerfile' | tar -xz

ENV JAVA_HOME /opt/jdk1.7.0_65

RUN ln -s /opt/jdk1.7.0_65/bin/* /usr/local/bin/

