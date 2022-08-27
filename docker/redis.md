# 连接redis服务
> 启动
```shell
docker run -dt --name redis -p 6379:6379 redis
docker run -dt --name redis -p 6379:6379 redis --requirepass "Redis#987"
docker run -p 6379:6379 --name redis -v /data/redis/data:/data -d redis:7 redis-server --appendonly yes
```
> 客户端
```shell
docker run -it --rm --network docker_overlay redis redis-cli -h redis
```

