FROM php:7.2-rc-fpm

# add directory for the auditor app, tr user and install sendmail, logrotate
RUN mkdir /var/www/auditor && \
    useradd -U tr && \
    apt-get update && apt-get install -y sendmail logrotate

# copy config files
COPY ./conf/php-fpm.conf /usr/local/etc/php-fpm.d/www.conf
COPY ./conf/sendmail.conf /usr/local/etc/php/conf.d/sendmail.ini

# copy cron file
COPY ./cron/user_auditor /etc/cron.d/

# copy sendmail aliases
COPY ./conf/aliases /etc/mail/

# copy logrotate file
COPY ./logrotate/user_auditor /etc/logrotate.d/

# copy and define docker run bash script
COPY ./run.sh /opt/run.sh
CMD ["bash", "/opt/run.sh"]
