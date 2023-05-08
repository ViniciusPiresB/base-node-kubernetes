docker build . -t viniciuspiresb/base-node-kubernetes

docker tag viniciuspiresb/base-node-kubernetes:latest viniciuspiresb/base-node-kubernetes

docker push viniciuspiresb/base-node-kubernetes

minibuke start

kubectl create -f kubeconfig/postgres-sts.json

kubectl get sts