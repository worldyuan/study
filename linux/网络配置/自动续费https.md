## 1. 安装工具

### nginx配置文件
编辑nginx配置，增加/.well-known访问路径
vim conf.d/gityyds.com.conf
```
server {
    listen       80;
    listen  [::]:80;
    server_name  gityyds.com *.gityyds.com;

    #access_log  /var/log/nginx/host.access.log  main;

    location / {
        proxy_pass http://10.12.106.2:10880/;
    }

    location /.well-known {
        alias /usr/share/nginx/html/gityyds.com/.well-known;
    }
}
```
创建对应目录和文件
```shell
mkdir -p /usr/share/nginx/html/gityyds.com/.well-known
cd /usr/share/nginx/html/gityyds.com/.well-known
echo test > ./test.txt
exit
```
### 安装certbot
```shell
sduo docker exec -it nginx /bin/bash
apt update
apt install certbot
exit
```
重启nginx
```shell
docker restart nginx
```
[访问 http://gityyds.com/.well-known/test.txt](http://gityyds.com/.well-known/test.txt)

## 创建证书
### 1. 单域名https证书
```shell
certbot certonly --webroot -w /usr/share/nginx/html/gityyds.com -d gityyds.com -m jeekhell@gmail.com --agree-tos
```
nginx配置文件增加如下
```shell
    listen 443 ssl;

    # RSA certificate
    ssl_certificate /etc/letsencrypt/live/gityyds.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/gityyds.com/privkey.pem; # managed by Certbot

    # Redirect non-https traffic to https
    if ($scheme != "https") {
        return 301 https://$host$request_uri;
    }
```
编辑如下配置文件:
```shell
vim /opt/nginx/conf/conf.d/gityyds.com.conf
```
```shell
server {
    listen       80;
    listen  [::]:80;
    server_name  gityyds.com *.gityyds.com;

    listen 443 ssl;

    ssl_certificate /etc/letsencrypt/live/gityyds.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/gityyds.com/privkey.pem; # managed by Certbot

    if ($scheme != "https") {
        return 301 https://$host$request_uri;
    }
    
    location / {
        proxy_pass http://10.12.106.2:10880/;
    }

    location /.well-known {
        alias /usr/share/nginx/html/gityyds.com/.well-known;
    }
}
```
### 2. 泛域名https证书
泛域名只能通过dns验证
```shell

```

### 定时任务，自动续费
```shell
sudo docker exec -it nginx /bin/bash
sudo crontab -e
```
添加如下内容
```shell
0 12 * * * /usr/bin/certbot renew --quiet
```