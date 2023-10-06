# TiDB

## 将TiDB修改为ExternalName方式

### 查询svc

```shell
kubectl get svc -n tidb-cluster
```

### 修改svc的type

```shell
kubectl edit svc -n tidb-cluster basic-tidb
```

- 将其中 Type: `ClusterIP`改为 `ExternalName`
- 在`spec`,增加 `externalName: basic-tidb.tidb-cluster.svc.cluster.local`

### 测试

进入一个容器
```shell
kubectl exec -it core-rpc-6558f54664-ckzm8 sh
```