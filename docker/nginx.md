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
```