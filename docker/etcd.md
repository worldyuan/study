## 快速
```shell
sudo docker run -dt --name etcd -p 2379:2379 -p 2380:2380 -e ALLOW_NONE_AUTHENTICATION=yes -e ETCD_ADVERTISE_CLIENT_URLS=http://192.168.0.99:2379 bitnami/etcd
```