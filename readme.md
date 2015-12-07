# Vagrant 

## how to
Add these files to your projects to create virtual machine with apache 2.2 and php 5.4 5.3 ou 5.6

The vhost will be in the /public folder, see /public/index.php

In the /etc/host.conf, change the server name to the local url of your project.
```
<VirtualHost *:80>
    DocumentRoot "/vagrant/public"
    ServerName vagrant.local
    ErrorLog "/vagrant/log/error_log"
    CustomLog "/vagrant/log/access_log" common
</VirtualHost>
```

In your /etc/hosts, Add the adresse 10.0.0.10 with the local url of your project.

```
127.0.0.1 localhost
10.0.0.10 vagrant.local
```

In the /Vagrantfile, you can change the ip address of your project, use different addresse for each projects.
In the /Vagrantfile, you can change the php version, use the args  php53, php54 or php56. 
```
Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-6.7"
  config.vm.network "private_network", ip: "10.0.0.10"
  config.vm.provision "shell", path: "provisioner/script.sh",
    run: "always", args: "php56" ## use php53 php54 or php56, see provisionner/scripts.sh
end
```

To add more version see /provisionner/script.sh

## Mysql
To connect to the database on the host, use the adresse 10.0.0.1, see the example in the /public/index.php
```
<?php 
      try {
        $dbh = new PDO('mysql:host=10.0.0.1', 'root', '');
```

Use the command `vagrant up` to create the virtual machine

Use the command `vagrant destroy` to delete the virtual machine

Use the command `vagrant` to see the available command and [COMMAND-LINE INTERFACE | vagrantup.com](https://docs.vagrantup.com/v2/cli/index.html) for the documentation.
