# 部署应用
```shell
kubectl create -f deployment.yaml
kubectl get deployments
kubectl get pods
```

# 暴露应用
```shell
kubectl expose deployment my-go-app --type=NodePort --name=go-app-svc --target-port=3000 
kubectl get svc
minikube ip
```