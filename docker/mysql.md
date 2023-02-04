# 连接mysql服务
```shell
docker run -it --rm --network docker_overlay mysql:8 mysql -h mysql -u root -p
docker run -dt --restart=always --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root  -e MYSQL_DATABASE=pusdt -e MYSQL_USER=pusdt -e MYSQL_PASSWORD=pusdt  mysql:8  --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci --lower_case_table_names=1

```

## 导出数据库
```shell
sudo docker run -it --rm --link mysql mysql mysqldump -h mysql -uroot -p"root" --databases ruoyi-vue-pro >/tmp/test.sql
```




