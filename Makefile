.PHONY: create-cluster
create-cluster:
	kind create cluster --config=./kind-config.yaml
	kubectl cluster-info --context kind-cdk8s-crossplane-demo

.PHONY: delete-cluster
delete-cluster:
	kind delete cluster --name=cdk8s-crossplane-demo
