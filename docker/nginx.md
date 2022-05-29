# 启动
```shell
docker run -dt --name nginx -p 80:80 -p 443:443 nginx
docker cp nginx:/usr/share/nginx/html ./
docker cp nginx:/etc/nginx ./conf
docker stop nginx
docker rm nginx
docker run -dt --name nginx -p 80:80 -p 443:443 -v log:/var/log/nginx -v html:/usr/share/nginx/html -v conf:/etc/nginx nginx

```
