# 启动
```shell
docker run -dt --name nginx -p 80:80 -p 443:443 nginx
docker cp nginx:/usr/share/nginx/html ./
docker cp nginx:/etc/nginx ./conf
docker stop nginx
docker rm nginx
docker run -dt --name nginx -p 80:80 -p 443:443 -v $(pwd)/log:/var/log/nginx -v $(pwd)/html:/usr/share/nginx/html -v $(pwd)/conf:/etc/nginx nginx

```
