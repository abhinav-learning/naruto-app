kind create cluster --config kind.yaml 

kubectl cluster-info --context kind-naruto-dev-cluster 

kubectl apply -f https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.17.5/controller.yaml