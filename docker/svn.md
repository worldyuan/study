# 搭建svn
```
docker run --name svn -d --restart=always -v /opt/svn:/home/svn/ -p 7443:80 -p 3690:3690 elleflorio/svn-server
```

# 查看svn配置
```
cat /etc/apache2/conf.d/dav_svn.conf
```
```

```

# 新建仓库
```
docker exec -it svn /bin/sh
svnadmin create /home/svn/FarmGame
docker exec -t svn htpasswd -b /etc/subversion/passwd Steve Steve@123
```
