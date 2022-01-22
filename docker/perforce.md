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