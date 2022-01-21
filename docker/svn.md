# 搭建svn
```
docker run --name svn -d --restart=always -v /opt/svn:/home/svn/ -p 7443:80 -p 3690:3690 elleflorio/svn-server
```

# 新建仓库
```
docker exec -it svn /bin/sh
svnadmin create /home/svn/FarmGame
docker exec -t svn htpasswd -b /home/svn/passwd.conf Steve Steve@123
```
