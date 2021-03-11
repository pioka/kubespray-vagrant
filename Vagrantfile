Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.hostname = "localk8s"

  config.vm.provision "shell", path: "provision.sh"

  config.vm.provider "virtualbox" do |v|
  # CPUは環境に応じて. RAMは最低2GB.
    v.cpus = 1
    v.memory = 2048
  end
end
