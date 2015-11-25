mkdir ../log
touch ../log/error_log
touch ../log/access_log
mkdir etc
cp provisioner/files/apache-local.conf etc/vhost.conf
echo "your ip address is :"
ifconfig en0 | grep inet | grep -v inet6
