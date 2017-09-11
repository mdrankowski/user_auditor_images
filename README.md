**_Dockerhub_**

Images are available on Dockerhub:
https://hub.docker.com/r/mdrankowski/tourradar/tags/

**_Details_**

**Apache:**

version: apache 2.4.27

build command: docker build . -t mdrankowski/tourradar:apache

comments: logstash beaver installed

**Php-fpm:**

version: php-fpm 7.2

build command: docker build . -t mdrankowski/tourradar:php-fpm

comments: sendmail and logrotate installed. Sendmail forwarding requires further tests.

**Load-balancer:**

version: haproxy 1.7

build command: docker build . -t mdrankowski/tourradar:load-balancer

**Mysql:**

version: mysql 5.7.19

build command: docker build . -t mdrankowski/tourradar:mysql

comments: tourradar db created automatically with one table - logs

**Logstash:**

version: logstash 5.5.2

build command: docker build . -t mdrankowski/tourradar:logstash

comments: logstash fail due to incorrect cgroups location, issue on github 
awaiting resolution: https://github.com/elastic/logstash/issues/6824.
Further investigation required

**Ftp:**

version: pureftp

comments: the image set up and committed from the running container
No further changes on Dockerfile necessary.