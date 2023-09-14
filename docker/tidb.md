# TiDb

## 部署

### 单节点

docker部署

```sh
sudo mkdir -p /data/tidb/data
sudo docker run --name tidb -d -v /data/tidb/data:/tmp/tidb --privileged=true -p 4000:4000 -p 10080:10080 pingcap/tidb
```

设置root密码

```bash
update user set authentication_string = password('123456') where User = 'root';
```

添加用户

```bash
CREATE USER 'test'@'%' IDENTIFIED BY 'test';
GRANT ALL PRIVILEGES ON demo.* to 'test'@'%';
FLUSH PRIVILEGES;
```
