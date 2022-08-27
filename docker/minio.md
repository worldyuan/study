### 快速
```shell
docker run -p 9000:9000 -p 9001:9001 quay.io/minio/minio server $(pwd)/minio/data:/data --console-address ":9001"

```