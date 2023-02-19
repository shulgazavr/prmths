Vagrant.configure(2) do |config|
    config.vm.box = "centos/7"
    config.vm.box_version = "2004.01"
  
  
   config.vm.provider "virtualbox" do |v|
      v.memory = 6144
      v.cpus = 3
  end
   config.vm.define "srv" do |srv|
      srv.vm.network "private_network", ip: "192.168.56.200", virtualbox__intnet: "net1"
      srv.vm.network :forwarded_port, guest: 3000, host: 3000
      srv.vm.hostname = "srv"
      srv.vm.provision "shell", path: "prepare_os.sh"
      srv.vm.provision "file", source: "grafana.repo", destination: "/home/vagrant/grafana.repo"
      srv.vm.provision "shell", inline: <<-SHELL
        sudo cp grafana.repo /etc/yum.repos.d/grafana.repo
      SHELL
      srv.vm.provision "file", source: "node_exporter.service", destination: "/home/vagrant/node_exporter.service"
      srv.vm.provision "file", source: "prometheus.service", destination: "/home/vagrant/prometheus.service"
      srv.vm.provision "file", source: "prometheus.yml", destination: "/home/vagrant/prometheus.yml"
      srv.vm.provision "shell", path: "install_exporter_prmths.sh"
      srv.vm.provision "shell", path: "install_server_prmths.sh"
      srv.vm.provision "shell", path: "install_grafana.sh"
  end
end