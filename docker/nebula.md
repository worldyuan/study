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

# studio
## 下载和安装nebula studio
```
curl -O https://oss-cdn.nebula-graph.com.cn/nebula-graph-studio/nebula-graph-studio-v3.1.0.tar.gz
mkdir nebula-graph-studio
tar -xvf ./nebula-graph-studio-v3.1.0.tar.gz -C ./nebula-graph-studio 
cd ./nebula-graph-studio
```
## 打通studio和nebula
修改docker-compose.yml配置文件，给studio的client增加nebula-docker-compose_nebula-net这个网络
```
version: '3.4'
services:
  client:
    image: vesoft/nebula-http-gateway:v2.1.1
    environment:
      USER: root
    ports:
      - 8080
    volumes:
      - ${UPLOAD_DIR}:${MAPPING_DOCKER_DIR}:rw
    networks:
      - nebula-web
      - nebula-docker-compose_nebula-net
  web:
    image: vesoft/nebula-graph-studio:v3.1.0
    environment:
      USER: root
      UPLOAD_DIR: ${MAPPING_DOCKER_DIR}
    ports:
      - 7001
    depends_on:
      - client
    volumes:
      - ${UPLOAD_DIR}:${MAPPING_DOCKER_DIR}:rw
    networks:
      - nebula-web
  nginx:
    image: nginx:alpine
    volumes:
      - ./nginx/nginx.conf:/etc/nginx/conf.d/nebula.conf
      - ${UPLOAD_DIR}:${MAPPING_DOCKER_DIR}:rw
    depends_on:
      - client
      - web
    networks:
      - nebula-web
    ports:
      - 8001:7001

networks:
  nebula-web:
  nebula-docker-compose_nebula-net:
    external: true
```
## 连接host
- HOST:graphd:9669
- 用户名：root
- 