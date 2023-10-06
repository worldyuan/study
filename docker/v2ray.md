# V2ray

## 快速开始

### 安装

```shell
mkdir v2ray
cd v2ray
```

### 配置文件

```shell
vim ./config.json
```
```shell
{
    "log": {
        "access": "/var/log/v2ray/access.log",
        "error": "/var/log/v2ray/error.log",
        "loglevel": "warning"
    },
    "inbounds": [
    {
      "port": 1234, // 服务器监听端口
      "protocol": "vmess",    // 主传入协议
      "settings": {
        "clients": [
          {
            "id": "b831381d-6324-4d53-ad4f-8cda48b30811",  // 用户 ID，客户端与服务器必须相同
            "alterId": 0
          }
        ]
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom",  // 主传出协议
      "settings": {}
    }
  ]
}
```

### 安装
```shell
docker run -d --name v2ray -v $(pwd)/config.json:/etc/v2ray/config.json -p 1234:1234 -p 1345:1345 -v /etc/localtime:/etc/localtime v2fly/v2fly-core run -c /etc/v2ray/config.json
```