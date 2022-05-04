# 非root方式运行docker
```shell
adduser docker
newgrp docker
```
```
sudo gpasswd -a ${USER} docker
sudo chmod a+rw /var/run/docker.sock
```
# 安装kubectl
k8s部署和管理工具
```shell
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client --output=yaml    
```

# 安装minikube
本地单节点k8s集群，一般用于开发
```shell
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

# 启动minikube
```shell
su - docker
minikube start
minikube status
```

