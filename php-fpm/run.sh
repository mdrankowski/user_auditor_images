#!/bin/bash
echo -e "$(hostname -i)\t$(hostname) $(hostname).localhost" >> /etc/hosts
yes | sendmailconfig
php-fpm