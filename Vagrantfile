# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.provider "VirtualBox" do |v|
    v.cpus = 4
    v.memory = 2000
  end

  config.vm.box = "ubuntu/xenial64"
  config.vm.synced_folder ".", "/home/ubuntu/sync", disabled: true

  config.vm.provision "shell", path: "preinstall.sh"

end
