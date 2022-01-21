# 搭建svn
```
docker run --restart always --name svn -d -v /opt/svn:/var/opt/svn -p 7443:80 -p 3690:3690 garethflowers/svn-server
```

# 新建仓库
```
docker exec -it svn svnadmin create FarmGame
```
