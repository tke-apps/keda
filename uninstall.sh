#! /bin/bash

kubectl delete $(kubectl get scaledobjects.keda.sh,scaledjobs.keda.sh -A -o jsonpath='{"-n "}{.items[*].metadata.namespace}{" "}{.items[*].kind}{"/"}{.items[*].metadata.name}{"\n"}')

kustomize build --enable-helm keda | kubectl delete -f -
