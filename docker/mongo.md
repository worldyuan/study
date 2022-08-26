### 快速
```shell
docker run -itd --name mongo -p 27017:27017 mongo
```

### 需要用户名和密码才能链接
```shell
docker run -itd --name mongo -p 27017:27017 mongo --auth
```
添加密码
```shell
docker exec -it mongo mongo admin
db.createUser({ user:'admin',pwd:'123456',roles:[ { role:'userAdminAnyDatabase', db: 'admin'},"readWriteAnyDatabase"]});
db.auth('admin', '123456')
```