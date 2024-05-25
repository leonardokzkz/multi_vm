Vagrant.configure("2") do |config|

  config.vm.define "web" do |web|
    web.vm.box = "hashicorp/bionic64"
    web.vm.provider "virtualbox" do |vb|
      vb.name = "web_server"
      vb.memory = 1048
      vb.cpus = 1
    end

    web.vm.network "forwarded_port", guest: 80, host: 8080
    web.vm.network "private_network", ip: "192.168.50.4"
    web.vm.synced_folder "site/", "/var/www/html"
    web.vm.provision "shell", path: "provision-web.sh"
  end

  config.vm.define "db" do |db|
    db.vm.box = "hashicorp/bionic64"
    db.vm.provider "virtualbox" do |vb|
      vb.name = "db_server"
      vb.memory = 1048
      vb.cpus = 1
    end

    db.vm.network "private_network", ip: "192.168.50.5"
    db.vm.provision "shell", path: "provision-db.sh"
  end
end