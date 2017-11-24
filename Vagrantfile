Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.3"
  config.vm.synced_folder '.', '/vagrant', disabled: true

  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"

  config.vm.define "vm-1" do |node1|
  	node1.vm.synced_folder './', '/etc/ansible', disabled: false
    node1.vm.network "private_network", ip: "192.168.99.101"
    node1.vm.provider "virtualbox" do |vb|
      vb.name = "vm-1"
	  vb.memory = 4096
	  vb.cpus = 2
    end
    node1.vm.provision :shell, path: "installtools.sh"
  end

  config.vm.define "vm-2" do |node2|  
    node2.vm.network "private_network", ip: "192.168.99.102"
    node2.vm.provider "virtualbox" do |vb|
      vb.name = "vm-2"
    end
  end
  
  
  config.vm.define "vm-3" do |node3|
    node3.vm.network "private_network", ip: "192.168.99.103"
    node3.vm.provider "virtualbox" do |vb|
      vb.name = "vm-3"
    end
  end

  


end
