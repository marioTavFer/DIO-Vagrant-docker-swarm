
machines = {
  "master" => {"memory" => "1024", "cpu" => "1", "ip" => "192.168.0.20", "image" => "bento/ubuntu-22.04"},
  "node01" => {"memory" => "1024", "cpu" => "1", "ip" => "192.168.0.21", "image" => "bento/ubuntu-22.04"},
  "node02" => {"memory" => "1024", "cpu" => "1", "ip" => "192.168.0.22", "image" => "bento/ubuntu-22.04"},
  "node03" => {"memory" => "1024", "cpu" => "1", "ip" => "192.168.0.23", "image" => "bento/ubuntu-22.04"}
}

Vagrant.configure("2") do |config|

  machines.each do |name, conf|
    config.vm.define "#{name}" do |machine|
      machine.vm.box = "#{conf["image"]}"
      machine.vm.hostname = "#{name}"
      machine.vm.network "public_network", ip: conf["ip"]
	  machine.vm.provider "virtualbox" do |vb|
        vb.name = "#{name}"
        vb.memory = conf["memory"]
        vb.cpus = conf["cpu"]
        
      end
      machine.vm.provision "shell", path: "install-docker.sh"
	  
	  if "#{name}" == "master"
		machine.vm.provision "shell", path: "master.sh"
	  else
		machine.vm.provision "shell", path: "/lab-vagrant/worker.sh"
	  end	
    end
  end
end
