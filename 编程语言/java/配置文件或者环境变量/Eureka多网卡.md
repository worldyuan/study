### 前言
今天注册服务总是失败，最后发现是多网卡的问题，于是通过增加配置文件后spring.cloud.inetutils.preferred-networks=192.168.0.后解决 
但最后发现Eureka的服务器的ip获取错误，最后发现这个ip是通过HostInfoEnvironmentPostProcessor获取，而这个的优先级在ConfigFile之后，
所以这个时候并没有读取到配置文件

### 解决
增加增加JVM启动参数解决
```
-Dspring.cloud.inetutils.preferred-networks=192.168.0.
```

这个参数放到最后还不行，比如要放在前面，应该是必须要在-jar的前面吧