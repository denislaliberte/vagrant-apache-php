# tp1-vagrant 

## how to
Add these files to your projects to create virtual machine with apache 2.2 and php 5.4 5.3 ou 5.6

The vhost will be in the public folder

Change de host name in the etc/vagrant_local.conf
Add the adresse 10.0.0.10 to your /etc/hosts, you can change the adresse in VagrantFile

Use the command `vagrant up` to create the virtual machine

Use the command `vagrant` to see the available command and [COMMAND-LINE INTERFACE | vagrantup.com](https://docs.vagrantup.com/v2/cli/index.html) for the documentation.

## PHP version

You can change the php version in the Vagrantfile, use php53, php54 or php56. To add more version see provisionner/script.sh



