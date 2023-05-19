# BASE-NODE-KUBERNETES

## Overview

This is an example about how to use kubernetes with docker and minikube.

## Requirements

You need install minikube, cli of kubernetes, docker and node.js to run this application.

## How to run

Put your database URL of postgres in a file .env at root of the project, based on .env.example file.

Install dependencies from Node.JS, then build Docker container and build Kubernetes config.

1. `npm install`

Build docker container and push it to dockerhub.

2. `docker build . -t viniciuspiresb/base-node-kubernetes`

3. `docker tag viniciuspiresb/base-node-kubernetes:latest viniciuspiresb/base-node-kubernetes`

4. `docker push viniciuspiresb/base-node-kubernetes`

Start minikube

5. `minikube start`

Set config of database in Kubectl

6. `kubectl create -f kubeconfig/postgres-sts.json`

7. `kubectl create -f kubeconfig/postgres-svc.json`

8. `kubectl create -f kubeconfig/api-deployments.json`

9. `kubectl create -f kubeconfig/api-svc.json`

After this, you can access your service with this command

10. `minikube service api-demo-svc --url`
