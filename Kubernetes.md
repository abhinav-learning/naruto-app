# Command to create a Dev Cluster

` 
kind create cluster --config kind-dev.yaml  
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

[Reference](https://gist.github.com/vfarcic/820aecf0799d679d9082eef00d07b515)