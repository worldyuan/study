# 获取Pod
```shell
kubectl get pods -n default
kubectl delete pod my-go-app-123 -n jenkins
```

# 删除deployment
```shell
kubectl get deployment -n default
kubectl delete deployment my-go-app -n default
```

# 部署应用
```shell
kubectl create -f deployment.yaml
kubectl get deployments
kubectl get pods
```
