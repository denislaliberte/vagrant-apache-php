#!/bin/bash
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
sudo yum --enablerepo=remi,remi-test  install -y php php-gd php-mysql php-mbstring php-xml

#echo 'LoadModule php5_module /usr/lib64/httpd/modules/libphp5.so' | sudo tee -a /etc/httpd/conf/httpd.conf
echo 'include /vagrant/etc/*.conf' | sudo tee -a /etc/httpd/conf/httpd.conf
service httpd start
