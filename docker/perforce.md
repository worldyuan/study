# BASH
```
mkdir perforce && cd perforce
touch docker-compose.yml
touch Dockerfile
```

# docker-compose.yml
```
vim ./docker-compose.yml
```
```
version: '3'
services:
	perforce:
		build:
			context: .
			dockerfile: Dockerfile
		restart: unless-stopped
		volumes:
      #- ./p4dctl.conf.d:/etc/perforce/p4dctl.conf.d
			- ./perforce-data:/perforce-data
			- ./dbs:/dbs
		environment:
			- P4PORT=1666
			- P4ROOT=/perforce-data
		ports:
			- 1666:1666
```
# 新建perforce配置文件
```
mkdir p4dctl.conf.d
mkdir perforce-data
mkdir dbs
```

# Dockerfile
```
FROM ubuntu:focal

# Update our main system

RUN apt-get update
RUN apt-get dist-upgrade -y

# Get some dependencies for adding apt repositories

RUN apt-get install -y wget gnupg

# Add perforce repo

RUN wget -qO - https://package.perforce.com/perforce.pubkey | apt-key add -
RUN echo 'deb http://package.perforce.com/apt/ubuntu focal release' > /etc/apt/sources.list.d/perforce.list
RUN apt-get update

# Actually install it

RUN apt-get install -y helix-p4d

# Go into our directory, start Perforce, and view the log outputs

CMD chown -R perforce:perforce /perforce-data && cd /dbs && p4dctl start master && tail -F /perforce-data/logs/log
```

# 拉取配置文件
```
docker-compose run -T --rm perforce tar czf - -C /etc/perforce/p4dctl.conf.d  . | tar xvzf - -C p4dctl.conf.d/
```

# 打开docker-compose中volumes的注释

# 配置服务器
```
docker-compose run --rm perforce /opt/perforce/sbin/configure-helix-p4d.sh
```