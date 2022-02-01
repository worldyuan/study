# 下载和安装nebula
https://docs.nebula-graph.com.cn/2.6.2/4.deployment-and-installation/2.compile-and-install-nebula-graph/3.deploy-nebula-graph-with-docker-compose/
```
git clone -b v2.6 --single-branch --depth=1 https://github.com/vesoft-inc/nebula-docker-compose.git
cd nebula-docker-compose/

```

# 设置密码
```
docker run --rm -ti --network nebula-docker-compose_nebula-net --entrypoint=/bin/sh vesoft/nebula-console:v2.6
nebula-console -u root -p Nebula@123 --address=graphd --port=9669
```

# 查看运行状态
```
show hosts
```

# 下载和安装nebula studio
```
curl -O https://oss-cdn.nebula-graph.com.cn/nebula-graph-studio/nebula-graph-studio-v3.1.0.tar.gz
tar -xvf ./nebula-graph-studio-v3.1.0.tar.gz -C ./nebula-graph-studio
cd ./nebula-graph-studio
docker-compose up -d
```