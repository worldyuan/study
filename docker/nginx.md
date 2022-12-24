## 启动
```shell
docker run -dt --name nginx -p 80:80 -p 443:443 nginx
docker cp nginx:/usr/share/nginx/html ./
docker cp nginx:/etc/nginx ./conf
docker stop nginx
docker rm nginx
docker run -dt --name nginx -p 80:80 -p 443:443 -v $(pwd)/log:/var/log/nginx -v $(pwd)/html:/usr/share/nginx/html -v $(pwd)/conf:/etc/nginx nginx

```


## https
### DNS
docker-compose.yml
```yaml
version: '3'

services:
  nginx:
    container_name: nginx
    image: nginx:latest
    ports:
      - 80:80
      - 443:443
    restart: always
    volumes:
      - ./log/:/var/log/nginx/:rw
      - ./html/:/usr/share/nginx/html/:ro
      - ./conf/:/etc/nginx/:ro
      - ./certbot/www/:/var/www/certbot/:ro
  certbot:
    image: certbot/certbot:latest
    volumes:
      - ./certbot/www/:/var/www/certbot/:rw
      - ./conf/ssl/:/etc/letsencrypt/:rw
```

ziwo.me.conf
```
server {
    listen       80;
    listen  [::]:80;
    server_name *.ziwo.me ziwo.me;

    location /.well-known/acme-challenge/ {
        root /var/www/certbot;
    }

    location / {
        return 301 https://$host$request_uri;
    }
}

server {
    listen 443 default_server ssl http2;
    listen [::]:443 ssl http2;
    server_name *.ziwo.me ziwo.me;

    ssl_certificate /etc/nginx/ssl/live/ziwo.me/fullchain.pem;
    ssl_certificate_key /etc/nginx/ssl/live/ziwo.me/privkey.pem;

    location / {
        root   /usr/share/nginx/html/www.ziwo.me;
        index  index.html index.htm;
        try_files $uri $uri/ @router;
    }
    location @router {
        rewrite ^.*$ /index.html last;
    }

    location /app-api {
        client_max_body_size    5m;
        proxy_pass http://10.12.106.2:48080;
        proxy_set_header Host $http_host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Scheme $scheme;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
    }
}

```

申请证书
```shell
docker compose run --rm  certbot certonly --manual --preferred-challenges=dns --webroot-path /var/www/certbot/ -d ziwo.me -d *.ziwo.me
 docker compose run --rm  certbot certonly --manual --preferred-challenges=dns -d ziwo.me -d *.ziwo.me
```
### godaddy
github: https://github.com/miigotu/certbot-dns-godaddy

/var/lib/letsencrypt/godaddy_credentials.ini
```
dns_godaddy_secret = 0123456789abcdef0123456789abcdef01234567
dns_godaddy_key = abcdef0123456789abcdef01234567abcdef0123
```

运行命令
```shell
docker run --rm \
  -v /var/lib/letsencrypt:/var/lib/letsencrypt \
  -v $(pwd)/conf/ssl:/etc/letsencrypt \
  --cap-drop=all \
  miigotu/certbot-dns-godaddy certbot certonly \
    --authenticator dns-godaddy \
    --dns-godaddy-propagation-seconds 900 \
    --dns-godaddy-credentials /var/lib/letsencrypt/godaddy_credentials.ini \
    --keep-until-expiring --non-interactive --expand \
    --server https://acme-v02.api.letsencrypt.org/directory \
    --agree-tos --email "webmaster@example.com" \
    -d example.com -d '*.example.com'
```

### cloudflare
```shell
sudo docker run -it --rm --name certbot -v "$(pwd)/conf/ssl:/etc/letsencrypt" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" certbot/certbot certonly
sudo docker run -it --rm -v "$(pwd)/conf/ssl:/etc/letsencrypt" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" -v "$(pwd):/opt/cloudflare" certbot/dns-cloudflare certonly --key-type rsa --dns-cloudflare --dns-cloudflare-credentials /opt/cloudflare/credentials -m test@123.com --agree-tos --no-eff-email --dns-cloudflare-propagation-seconds 20 --cert-name ziwo.com -d "ziwo.com" -d "*.ziwo.com"
```

### aliyun
```shell
git clone https://gitee.com/keijack/certbot-dns-aliyun-docker.git
cd certbot-dns-aliyun-docker
docker run -it --rm -e "ALIYUN_AK=LTAI5tNFcbvTHsWetWK5aKEr" -e "ALIYUN_SK=p5ZzTc6OTROKtTDjZ6vQggF5y558Wz" -e "EMAIL=hhkoffg0@163.com" -v "$(pwd)/conf/ssl:/etc/letsencrypt" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" certbot/aliyun obtain_cert -d "ziwo.icu" -d "*.ziwo.icu" -d "ziwo.me" -d "*.ziwo.me" -d "ziwo.com" -d "*.ziwo.com"
```