Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-24.04"

  config.vm.define "apernotS" do |s|
    s.vm.network "private_network", ip: "192.168.56.110"
    s.vm.hostname = "apernotS"
    s.vm.provider "virtualbox" do |vb|
      vb.name = "apernotS"
      vb.memory = "1024"
      vb.cpus = 1
    end
    s.vm.provision "shell", path: "scripts/servers.sh"
  end
  
  config.vm.define "apernotSW" do |sw|
    sw.vm.network "private_network", ip: "192.168.56.111"
    sw.vm.hostname = "apernotSW"
    sw.vm.provider "virtualbox" do |vb|
      vb.name = "apernotSW"
      vb.memory = "1024"
      vb.cpus = 1
    end
    sw.vm.provision "shell", path: "scripts/workers.sh"
  end
end

