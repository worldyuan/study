### 快速
```shell
docker run -d --name zookeeper -p 2181:2181 -t wurstmeister/zookeeper
ip=本机ip docker run -d --name kafka -p 9092:9092 -e KAFKA_BROKER_ID=0 -e KAFKA_ZOOKEEPER_CONNECT=$ip:2181 -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://$ip:9092 -e KAFKA_LISTENERS=PLAINTEXT://0.0.0.0:9092 -t wurstmeister/kafka
```