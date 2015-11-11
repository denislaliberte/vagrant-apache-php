#!/bin/bash
echo '## Install utils'
sudo yum install vim

echo "## Install apache 2.4"
cd /etc/yum.repos.d/
sudo wget http://repos.fedorapeople.org/repos/jkaluza/httpd24/epel-httpd24.repo
sudo yum install httpd24.x86_64 -y
/opt/rh/httpd24/root/usr/sbin/httpd -version
echo 'include /vagrant/etc/*.conf' | sudo tee -a /opt/rh/httpd24/root/etc/httpd/conf/httpd.conf
service httpd24-httpd start
