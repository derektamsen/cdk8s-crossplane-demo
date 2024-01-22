.PHONY: dev-up
dev-up:
	kind create cluster --config=./kind-config.yaml
	kubectl cluster-info --context kind-cdk8s-crossplane-demo

.PHONY: dev-down
dev-down:
	kind delete cluster --name=cdk8s-crossplane-demo
