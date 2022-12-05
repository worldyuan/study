# 连接redis服务
> 启动
```shell
docker run -dt --name redis -p 6379:6379 redis
docker run -dt --name redis -p 10.12.106.2:6379:6379 redis --requirepass "Redis#987"

docker run -dt --name redis -p 6379:6379 redis:alpine
docker run -dt --name redis -p 6379:6379 redis --appendonly yes --replica-read-only no ​
```
> 客户端
```shell
docker run -it --rm --network docker_overlay redis redis-cli -h redis
```

