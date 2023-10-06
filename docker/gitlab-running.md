# Gitlab Runnin

## 使用Docker

### 搭建gitlab-running

```shell
mkdir -p docker/gitlab/runner
sudo cd docker/gitlab/runner
sudo docker run -d --rm --name gitlab-runner gitlab/gitlab-runner:v11.1.0
sudo docker cp gitlab-runner:/etc/gitlab-runner .
sudo mv gitlab-runner config
sudo docker stop gitlab-runner
sudo docker rm gitlab-runner 
sudo docker run -d --add-host gitlab.cyf.com:192.168.10.24 -v /home/cyf/docker/gitlab/runner/config:/etc/gitlab-runner -v /home/cyf/docker/gitlab/runner/scripts/:/home/gitlab-runner/scripts -v /var/run/docker.sock:/var/run/docker.sock --name gitlab-runner gitlab/gitlab-runner:v11.1.0
```

### 注册gitlab-running

```shell
sudo docker exec -it gitlab-runner gitlab-runner register
```
