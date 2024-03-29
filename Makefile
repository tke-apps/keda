install:
	kustomize build --enable-helm keda | kubectl apply --server-side=true -f -
uninstall:
	./uninstall.sh
