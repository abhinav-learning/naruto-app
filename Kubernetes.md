# Command to create a Dev Cluster

` 
kind create cluster --config kind.yaml  
`

# Command to set the Kubectl Context 

`
kubectl cluster-info --context kind-naruto-dev-cluster 
`

# Command to delete the Dev Cluster

`
kind delete clusters naruto-dev-cluster
`

# Steps to Install Bitnami Sealed Secrets

Install `kubeseal` CLI via Homebrew using `brew install kubeseal`



`kubectl apply -f https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.17.5/controller.yaml`


## Sealing secrets 


Default way 

`kubectl --namespace default \
    create secret \
    generic mysecret \
    --dry-run=client \
    --from-literal foo=bar \
    --output json`

Sealed Secret way

`kubectl --namespace default \
    create secret \
    generic mysecret \
    --dry-run=client \
    --from-literal foo=bar \
    --output json \
    | kubeseal \
    | tee mysecret.yaml`


Create secret

`kubectl create \
    --filename mysecret.yaml`

Retrieve Secret 

`kubectl get secret mysecret \
    --output yaml`

`kubectl get secret mysecret \
    --output jsonpath="{.data.foo}" \
    | base64 --decode && echo`

`kubeseal --fetch-cert`