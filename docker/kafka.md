### 快速
```shell

export ip=本机ip 
docker run -d --restart=always --name zookeeper -p 2181:2181 -t wurstmeister/zookeeper
docker run -d  --restart=always --name kafka -p 9092:9092 -e KAFKA_BROKER_ID=0 -e KAFKA_ZOOKEEPER_CONNECT=$ip:2181 -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://$ip:9092 -e KAFKA_LISTENERS=PLAINTEXT://0.0.0.0:9092 -t wurstmeister/kafka

```

### 集群
```shell
export zk_conn="server.1=10.1.0.8:2888:3888;2181 server.2=10.1.0.9:2888:3888;2181 server.3=10.1.0.10:2888:3888;2181"
export kafka_zk_conn="10.1.0.8:2181,10.1.0.9:2181,10.1.0.10:2181"
export ip=本机ip
docker run --restart=always -d  -e ZOO_MY_ID=1 -e ZOO_SERVERS="$zk_conn"  --name zookeeper -p 2888:2888 -p 3888:3888 -p 2181:2181 -t zookeeper
docker exec -it zookeeper ./bin/zkServer.sh status
docker exec -it zookeeper ./bin/zkCli.sh 
get /zookeeper/config

docker run --restart=always -d --name kafka -p 9092:9092 -e KAFKA_BROKER_ID=1 -e KAFKA_ZOOKEEPER_CONNECT="$kafka_zk_conn" -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://$ip:9092 -e KAFKA_LISTENERS=PLAINTEXT://0.0.0.0:9092 -t wurstmeister/kafka

kafka-topics.sh --create --zookeeper 10.1.0.8:2181 --replication-factor 2 --partitions 3 --topic topic

kafka-topics.sh --describe --zookeeper 10.1.0.10:2181 --topic guest-login

kafka-topics.sh --zookeeper 10.1.0.8:2181 --list
kafka-console-producer.sh --broker-list 10.0.0.9:2181 --topic first 

docker stop zookeeper kafka
docker rm zookeeper kafka
```