# kubespray-vagrant
Vagrant+KubesprayでシングルノードKubernetsクラスタ立てるやつ

## セットアップ
```
git clone https://github.com/pioka/kubespray-vagrant.git
cd kubespray-vagrant
vagrant up
```

## セットアップ後
### ゲストOSからkubectl
`vagrant ssh` でVMに乗り込む。

kubectl叩く。

## ホストOSからkubectl
`vagrant ssh` でVMに乗り込む。

ゲストOS側の`/home/vagrant/.kube/config_for_host_os`の中身をそのままホストOS側の`~/.kube/config`にペーストする。

kubectl叩く。

## Vagrantfileの変数

* VM_IP
  * VMのホストネットワークアダプタに割り当てるIPアドレス。
* VM_CPU
  * VMに割り当てるCPUコア数。
* VM_MEM
  * VMに割り当てるメモリ[MB]。最低2048。
* VM_APT_REGION
  * aptのパッケージミラーのリージョン
