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
成功后输出
```
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
::  P4D configuration has completed successfully.
::
::  Here is what has been done so far:
::
::  - Your p4d service settings have been written to 
::    the following p4dctl configuration file:
::      /etc/perforce/p4dctl.conf.d/master.conf
::  - The p4d service has been initialized with the P4ROOT:
::      /perforce-data/root
::  - The p4d service has been started with the P4PORT: ssl:1666
::  - The p4d service has been set to Security Level 3.
::  - The new Perforce super-user 'jeek' has been created and the
::    password has been set to the one specified.
::
::  Here is what you can do now:
::
::  - You can manage it with the 'perforce' user, using the following:
::
::      sudo -u perforce p4dctl <cmd> 
::
::  - You can connect to it by setting the P4PORT and P4USER
::    environment variables and running 'p4 <cmd>'. For example, run:
::
::      export P4PORT=ssl:1666
::      export P4USER=jeek
::
::      p4 login
::
::    For help, run:
::
::      p4 help
::
::  - For help with creating Perforce Helix user accounts, populating
::    the depot with files, and making other customizations for your
::    site, see the Helix Versioning Engine Administrator Guide:
::
::    https://www.perforce.com/perforce/doc.current/manuals/p4sag/index.html
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
```

# 运行perforce
```
docker-compose up --build -d
```