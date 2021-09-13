FROM centos:7

MAINTAINER Javier León Peris <javierleonperis@gmail.com>

LABEL name="MySQL and InfluxDB client" \
      io.k8s.display-name="MySQL + InfluxDB client" \
      io.k8s.description="The goal of this project is to make a container with tools to manage InfluxDB and MySQL DBs" \
      summary="The goal of this project is to make a container with tools to manage InfluxDB and MySQL DBs" \
      io.openshift.tags="centos-db-management" \
      build-date="2021-09-09" \
      version="1.0" \
      release="1"

COPY influxrepo/influxdb.repo /etc/yum.repos.d/influxdb.repo

RUN yum -y install influxdb

RUN yum -y install mysql && \
    yum -y update 
	