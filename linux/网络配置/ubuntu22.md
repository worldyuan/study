### 配置文件
```yaml
network:
  ethernets:
    ens32:                    ## network card name
      dhcp4: false
      addresses:
        - 192.168.3.88/24   ## set static IP
      routes:
        - to: default
          via: 192.168.3.1  ## gateway
      nameservers:
        addresses: [8.8.8.8,8.8.4.4,192.168.3.1]
  version: 2
```

### 重启网卡
```shell
sudo systemctl restart systemd-networkd
```