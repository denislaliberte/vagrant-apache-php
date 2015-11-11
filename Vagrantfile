Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-6.7"
  config.vm.network "private_network", ip: "10.0.0.10"
  config.vm.provision "shell", path: "provisioner.sh",
    run: "always"
end
