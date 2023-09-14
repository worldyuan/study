### 申请https证书
```shell
sudo docker run -it --rm -v $(pwd)/cert/:/etc/letsencrypt/archive/:rw certbot/certbot certonly --manual --preferred-challenges=dns -d ziwo.com -d *.ziwo.com
```
