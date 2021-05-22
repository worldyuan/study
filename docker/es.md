# 连接es服务

```bash
docker run -it --rm --network docker_overlay centos /bin/bash

curl -XGET "http://es:9200/blog/post/_search?explain&format=yaml" -d '
{
  "query": {
    "term": {
      "title": "water"
    }
  }
}'
```

# 常用命令

## 查看ES版本

```bash
curl -XGET "http://es:9200"
```



## 分词

```bash
curl -H "Content-Type: application/json" -XPOST "http://es:9200/_analyze?format=yaml" -d '
{
  "analyzer":"standard",
  "text":"我爱你中国"
}'

curl -H "Content-Type: application/json" -XPOST "http://es:9200/_analyze?format=yaml" -d '
{
  "analyzer":"ik_smart",
  "text":"我爱你中国"
}'

curl -H "Content-Type: application/json" -XPOST "http://es:9200/_analyze?format=yaml" -d '
{
  "analyzer":"ik_max_word",
  "text":"我爱你中国"
}'
```

## 安装分词



## 创建索引

```bash
curl -H "Content-Type: application/json" -XPOST "http://es:9200/speak
{
  "settings": {
    "index.analysis.analyzer.default.type": "ik_max_word"   //对应 IK 的 ik_max_word 和 ik_smart 两种分词策略
    },
  "mappings": {
    "doc": {   //文档类型，对应doc_type
      "properties": {
        "content": { //要分词的字段名称
          "type":  "text",
          "analyzer": "ik_max_word"  //对应 IK 的 ik_max_word 和 ik_smart 两种分词策略
        },
        "title": { //要分词的字段名称
          "type":  "text",
          "analyzer": "ik_max_word"  //对应 IK 的 ik_max_word 和 ik_smart 两种分词策略
        }
      }
    }
  }
}

curl -H "Content-Type: application/json" -XPOST "http://es:9200/user
{
  "settings": {
    "index.analysis.analyzer.default.type": "ik_max_word"   //对应 IK 的 ik_max_word 和 ik_smart 两种分词策略
  },
  "mappings": {
    "doc": {   //文档类型，对应doc_type
      "properties": {
        "nickname": { //要分词的字段名称
          "type":  "text",
          "analyzer": "ik_max_word"  //对应 IK 的 ik_max_word 和 ik_smart 两种分词策略
        }
      }
    }
  }
}

curl -H "Content-Type: application/json" -XPOST "http://es:9200/evaluation
{
  "settings": {
    "index.analysis.analyzer.default.type": "ik_max_word"   //对应 IK 的 ik_max_word 和 ik_smart 两种分词策略
  },
  "mappings": {
    "doc": {   //文档类型，对应doc_type
      "properties": {
        "content": { //要分词的字段名称
          "type":  "text",
          "analyzer": "ik_max_word"  //对应 IK 的 ik_max_word 和 ik_smart 两种分词策略
        }
      }
    }
  }
}

curl -H "Content-Type: application/json" -XPOST "http://es:9200/community
{
  "settings": {
    "index.analysis.analyzer.default.type": "ik_max_word"   //对应 IK 的 ik_max_word 和 ik_smart 两种分词策略
  },
  "mappings": {
    "doc": {   //文档类型，对应doc_type
      "properties": {
        "name": { //要分词的字段名称
          "type":  "text",
          "analyzer": "ik_max_word"  //对应 IK 的 ik_max_word 和 ik_smart 两种分词策略
        },
        "description": { //要分词的字段名称
          "type":  "text",
          "analyzer": "ik_max_word"  //对应 IK 的 ik_max_word 和 ik_smart 两种分词策略
        }
      }
    }
  }
}
```

