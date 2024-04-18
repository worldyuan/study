cd /opt/k8s/install

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

helm repo add cilium https://helm.cilium.io/
helm install cilium cilium/cilium --namespace=kube-system