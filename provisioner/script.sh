#!/bin/bash
#PHP_REPO="--enablerepo=remi-php56"
#PHP_REPO="--enablerepo=remi" ## php54
PHP_REPO="" #php 5.3
PHP_PACKAGE=php
echo '## Install utils'
sudo yum install vim -y

echo "## Enable remi and epel"
cd /etc/yum.repos.d/
rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm 

echo "## Install apache 2.4"
sudo yum --enablerepo=remi install -y httpd 
/opt/rh/httpd24/root/usr/sbin/httpd -version

echo '## Install php 56'
sudo yum $PHP_REPO  install -y $PHP_PACKAGE #php php-gd php-mysql php-mbstring php-xml

echo 'include /vagrant/etc/*.conf' | sudo tee -a /etc/httpd/conf/httpd.conf
service httpd start
