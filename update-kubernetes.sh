docker build . -t viniciuspiresb/base-node-kubernetes

docker push viniciuspiresb/base-node-kubernetes

minikube start

minikube service api-demo-svc --url