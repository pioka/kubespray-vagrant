Vagrant.configure("2") do |config|
  VM_IP = "192.168.222.11"
  VM_CPU = 2
  VM_MEM = 2048
  VM_APT_REGION = "jp"

  config.vm.box = "bento/ubuntu-20.04"

  config.vm.network "private_network", ip: VM_IP

  config.vm.provision "shell", env: {IP: VM_IP, APT_REGION: VM_APT_REGION}, path: "provision.sh"

  config.vm.provider "virtualbox" do |v|
    v.cpus = VM_CPU
    v.memory = VM_MEM
  end
end
