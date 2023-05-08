docker build . -t viniciuspiresb/base-node-kubernetes

docker tag viniciuspiresb/base-node-kubernetes:latest viniciuspiresb/base-node-kubernetes

docker push viniciuspiresb/base-node-kubernetes

minikube start

kubectl create -f kubeconfig/postgres-sts.json

kubectl create -f kubeconfig/postgres-svc.json

kubectl create -f kubeconfig/api-deployments.json

kubectl create -f kubeconfig/api-svc.json

minikube service api-demo-svc --url