Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end

  config.vm.define "centos" do |centos|
    centos.vm.network :"forwarded_port", guest: 80, host: 8080
    centos.vm.box = "centos/7"
    config.vm.provision "shell", inline: $apache	
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.network :"forwarded_port", guest: 80, host: 8081
    ubuntu.vm.box = "ubuntu/bionic64"
  end

end



  $apache = <<-SCRIPT
   mkdir Hilyuk
   yum install -y httpd
   systemctl enable httpd.service
   systemctl restart httpd.service
  SCRIPT
