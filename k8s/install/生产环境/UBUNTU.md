## 设置主机名
在主节点上
```shell
sudo hostnamectl set-hostname "k8smaster.example.net"
```
在从节点上
```shell
sudo hostnamectl set-hostname "k8sworker1.example.net"
sudo hostnamectl set-hostname "k8sworker2.example.net"
```

并在每台的hosts文件增加域名映射
```
192.168.0.101   k8smaster.example.net k8smaster
192.168.0.174   k8sworker1.example.net k8sworker1
192.168.0.175   k8sworker2.example.net k8sworker2
```

## 禁用Swap和kernel设置
禁用Swap
```shell
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
```
修改内核（所有节点）
```shell
sudo tee /etc/modules-load.d/containerd.conf <<EOF
overlay
br_netfilter
EOF
sudo modprobe overlay
sudo modprobe br_netfilter
```
修改内核（所有节点）
```shell
sudo tee /etc/sysctl.d/kubernetes.conf <<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF
```
重新加载（所有节点）
```shell
sudo sysctl --system
```

## 安装容器运行时
```shell
sudo apt install -y curl gnupg2 software-properties-common apt-transport-https ca-certificates
```

添加docker仓库
```shell
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/docker.gpg
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
```
更新和安装容器
```shell
sudo apt update
sudo apt install -y containerd.io
```
配置容器
```shell
containerd config default | sudo tee /etc/containerd/config.toml >/dev/null 2>&1
sudo sed -i 's/SystemdCgroup \= false/SystemdCgroup \= true/g' /etc/containerd/config.toml
```
重启和启用容器
```shell
sudo systemctl restart containerd
sudo systemctl enable containerd
```

## 增加Kubernetes的apt仓库
```shell
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
```

