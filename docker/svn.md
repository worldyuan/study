# 搭建svn
```
docker run --name svn-server -d --restart=always -v /home/docker/svn:/home/svn/ -p 7443:80 -p 3690:3690 elleflorio/svn-server
```

# 新建仓库
```
docker exec -it svn svnadmin create FarmGame
```
