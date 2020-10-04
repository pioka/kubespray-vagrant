Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04" 
  config.vm.provision "shell", path: "provision.sh"
  
  config.vm.provider "virtualbox" do |v|
  # CPUは環境に応じて. RAMは最低2GB.
  #v.cpus = 4
    v.memory = 2048
  end
end
