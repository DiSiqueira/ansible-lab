Vagrant.configure("2") do |config|
  config.vm.define "web001" do |web001|
    web001.vm.box = "ubuntu/xenial64"
    web001.vm.hostname = "web001"
    web001.vm.network "private_network", ip: "10.254.255.11"
    web001.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end
    web001.vm.provision :file, source: "~/.ssh/id_rsa.pub", destination: "/tmp/host.pub"
    web001.vm.provision :shell, inline: "apt-get update && apt-get -y install python-minimal && cat /tmp/host.pub >> ~ubuntu/.ssh/authorized_keys"
  end
  config.vm.define "web002" do |web002|
    web002.vm.box = "ubuntu/xenial64"
    web002.vm.hostname = "web002"
    web002.vm.network "private_network", ip: "10.254.255.12"
    web002.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end
    web002.vm.provision :file, source: "~/.ssh/id_rsa.pub", destination: "/tmp/host.pub"
    web002.vm.provision :shell, inline: "apt-get update && apt-get -y install python-minimal && cat /tmp/host.pub >> ~ubuntu/.ssh/authorized_keys"
  end
  config.vm.define "db001" do |db001|
    db001.vm.box = "ubuntu/xenial64"
    db001.vm.hostname = "db001"
    db001.vm.network "private_network", ip: "10.254.255.21"
    db001.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end
    db001.vm.provision :file, source: "~/.ssh/id_rsa.pub", destination: "/tmp/host.pub"
    db001.vm.provision :shell, inline: "apt-get update && apt-get -y install python-minimal && cat /tmp/host.pub >> ~ubuntu/.ssh/authorized_keys"
  end
  config.vm.define "db002" do |db002|
    db002.vm.box = "ubuntu/xenial64"
    db002.vm.hostname = "db002"
    db002.vm.network "private_network", ip: "10.254.255.22"
    db002.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end
    db002.vm.provision :file, source: "~/.ssh/id_rsa.pub", destination: "/tmp/host.pub"
    db002.vm.provision :shell, inline: "apt-get update && apt-get -y install python-minimal && cat /tmp/host.pub >> ~ubuntu/.ssh/authorized_keys"
  end
end
