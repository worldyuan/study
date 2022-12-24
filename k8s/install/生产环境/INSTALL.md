## 概念
* kubeadm：用来初始化集群的指令。

* kubelet：在集群中的每个节点上用来启动 Pod 和容器等。

* kubectl：用来与集群通信的命令行工具。

## 先决条件
### 启用br_netfilter
检查是否安装
```shell
lsmod | grep br_netfilter
```
配置K8s所需的模块
```shell
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF
```
安装模块
```shell
sudo modprobe overlay
```
```shell
sudo modprobe br_netfilter
```

设置所需的 sysctl 参数，参数在重新启动后保持不变
```shell
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables  = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward                 = 1
EOF
```

应用 sysctl 参数而不重新启动
```shell
sudo sysctl --system
```
查询是否安装完毕
```shell
lsmod | grep br_netfilter
```

### 查看cgroup驱动
一般系统默认是systemd，还有一个cgroupfs，推荐使用systemd，只能选择其中的一个，默认是systemd

## 安装
### 安装containerd
1. containerd
[下载文件](https://github.com/containerd/containerd/releases)
```shell
cd /tmp
curl -O https://github.com/containerd/containerd/releases/download/v1.6.8/containerd-1.6.8-linux-amd64.tar.gz
sudo tar Cxzvf /usr/local ./containerd-1.6.8-linux-amd64.tar.gz
```

2. systemd

[下载文件](https://github.com/containerd/containerd/blob/main/containerd.service)
```shell
cd /usr/local/lib/systemd/system/
cd /lib/systemd/system/
curl -O https://raw.githubusercontent.com/containerd/containerd/main/containerd.service
systemctl daemon-reload
systemctl enable --now containerd
```

3. 设置cgroup为systemd
创建配置文件
```shell
sudo mkdir /etc/containerd
sudo touch /etc/containerd/config.toml
containerd config default | sudo tee /etc/containerd/config.toml >/dev/null 2>&1
containerd config default > /etc/containerd/config.toml
```
修改containerd为sytemd

在 /etc/containerd/config.toml 中设置：

> [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc]
...
[plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc.options]
 
SystemdCgroup = true
```shell
sudo sed -i 's/SystemdCgroup \= false/SystemdCgroup \= true/g' /etc/containerd/config.toml
```

### 安装runc

[下载文件](https://github.com/opencontainers/runc/releases)
```shell
curl -O https://github.com/opencontainers/runc/releases/download/v1.1.4/libseccomp-2.5.4.tar.gz
sudo install -m 755 runc.amd64 /usr/local/sbin/runc
```

### 安装CNI插件
[下载文件](https://github.com/containernetworking/plugins/releases)
```shell
curl -O https://github.com/containernetworking/plugins/releases/download/v1.1.1/cni-plugins-linux-amd64-v1.1.1.tgz
mkdir -p /opt/cni/bin
sudo tar Cxzvf /opt/cni/bin cni-plugins-linux-amd64-v1.1.1.tgz
```

### 重启container
```shell
sudo systemctl restart containerd
```

## 安装k8s
1. 更新apt源
```shell
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
```

2. 下载Google Cloud的公开密钥
```shell
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
```

3. 添加Kubernetes apt仓库
```shell
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
```

4. 更新apt索引包，安装kubelet、kubeadm和kubectl
```shell
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
```

## 部署Kubernetes
创建一个Master节点
host中新增cluster-endpoint的映射
```
192.168.0.101   master.k8s.com   cluster-endpoint
```

```shell
sudo kubeadm init --control-plane-endpoint=cluster-endpoint
```
将会出现如下内容
```
kubeadm join 192.168.0.101:6443 --token pa05te.6s321bsozmxrbjvp \
        --discovery-token-ca-cert-hash sha256:376ecba64d11aab15565e2c1fb33b0b9410017fdf498979fd2b94a5ecb0bd851 
```
将Node加入到Master集群中
```
To start using your cluster, you need to run the following as a regular user:

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

Alternatively, if you are the root user, you can run:

  export KUBECONFIG=/etc/kubernetes/admin.conf

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join 192.168.0.101:6443 --token pa05te.6s321bsozmxrbjvp \
        --discovery-token-ca-cert-hash sha256:376ecba64d11aab15565e2c1fb33b0b9410017fdf498979fd2b94a5ecb0bd851
```
