#!/bin/sh

APT_REGION=jp
VAGRANT_HOME=/home/vagrant

# configure apt mirror & install pip
sed -i "s/archive.ubuntu.com/${APT_REGION}.archive.ubuntu.com/g" /etc/apt/sources.list
apt-get update && apt-get install -y python3-pip

# clone kubespray
git clone https://github.com/kubernetes-sigs/kubespray.git /opt/kubespray
cd /opt/kubespray

# install required packages
pip3 install -r requirements.txt

# execute playbook
ansible-playbook -i inventory/local/hosts.ini --become --become-user=root cluster.yml

# apply KUBECONFIG
cp /etc/kubernetes/admin.conf ${VAGRANT_HOME}
chown vagrant ${VAGRANT_HOME}/admin.conf
echo "export KUBECONFIG=${VAGRANT_HOME}/admin.conf" >> ${VAGRANT_HOME}/.profile
