#!/bin/sh
# chkconfig: 2345 10 90 
# description: myservice ....
bt 1 && /etc/init.d/httpd restart && /etc/init.d/php-fpm-56 restart && /etc/init.d/mysqld restart && bt 14