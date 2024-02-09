# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.provision "shell", path: "scripts/install_flatpak.sh", name: "Install flatpak"
  config.vm.provision "shell", path: "scripts/configure_flatpak.sh", privileged: false, name: "Configure flatpak"
  config.vm.provision "shell", path: "https://raw.githubusercontent.com/dusansimic/fp-build/main/vagrant/provision.sh", name: "Install fp-build"
end
