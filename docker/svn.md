# 搭建svn
```
docker run --name svn -d --restart=always -v /opt/svn:/home/svn/ -p 7443:80 -p 3690:3690 elleflorio/svn-server
```

# 查看svn配置
```
cat /etc/apache2/conf.d/dav_svn.conf
```
```
LoadModule dav_svn_module /usr/lib/apache2/mod_dav_svn.so
LoadModule authz_svn_module /usr/lib/apache2/mod_authz_svn.so

<Location /svn>
     DAV svn
     SVNParentPath /home/svn
     SVNListParentPath On
     AuthType Basic
     AuthName "Subversion Repository"
     AuthUserFile /etc/subversion/passwd
     AuthzSVNAccessFile /etc/subversion/subversion-access-control
     Require valid-user
```

# 新建仓库
```
docker exec -it svn /bin/sh
svnadmin create /home/svn/FarmGame
docker exec -t svn htpasswd -b /etc/subversion/passwd Steve Steve@123
```

# 账号
