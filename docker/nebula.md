# 下载和安装nebula
```
git clone --branch v2.6 --single-branch --depth=1 https://github.com/vesoft-inc/nebula-docker-compose.git
cd nebula-docker-compose/

```

# 设置密码
```
docker run --rm -ti --network nebula-docker-compose_nebula-net --entrypoint=/bin/sh vesoft/nebula-console:v2.6.0
nebula-console -u root -p Nebula@123 --address=graphd --port=9669
```

# 查看运行状态
```
show hosts
```

# 下载和安装nebula studio
```
curl -O https://oss-cdn.nebula-graph.com.cn/nebula-graph-studio/nebula-graph-studio-v3.1.0.tar.gz


```