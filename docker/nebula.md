# 下载和安装nebula
```
git clone https://github.com/vesoft-inc/nebula-docker-compose.git
cd nebula-docker-compose/

```

# 设置密码
```
docker run --rm -ti --network nebula-docker-compose_nebula-net --entrypoint=/bin/sh vesoft/nebula-console
nebula-console -u root -p <密码随意设置> --address=graphd --port=9669

```

# 下载和安装nebula studio
```
git clone https://github.com/vesoft-inc/nebula-studio.git

```