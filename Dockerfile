FROM ubuntu:14.04
MAINTAINER nicolas.deloof@gmail.com <Nicolas De Loof>

# install curl so we can download JDK
RUN apt-get update
RUN apt-get -y install curl

# Download JDK 8u11 from Oracle download site
RUN cd /opt &&  curl -L 'http://download.oracle.com/otn-pub/java/jdk/8u11-b12/jdk-8u11-linux-x64.tar.gz' -H 'Cookie: oraclelicense=accept-securebackup-cookie; gpw_e24=Dockerfile' | tar -xz

ENV JAVA_HOME /opt/jdk1.8.0_11

RUN ln -s /opt/jdk1.8.0_11/bin/* /usr/local/bin/

