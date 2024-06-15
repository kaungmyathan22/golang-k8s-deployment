# Hello World Go Project with Kubernetes

This is a simple Hello World application written in Go and deployed using Kubernetes. This guide will help you build, containerize, and deploy the application on a Kubernetes cluster.

## Prerequisites

- [Go](https://golang.org/dl/) installed on your local machine.
- [Docker](https://www.docker.com/get-started) installed and running.
- Access to a Kubernetes cluster ([Minikube](https://minikube.sigs.k8s.io/docs/start/) for local development or a cloud provider's Kubernetes service).
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) command-line tool installed and configured to access your Kubernetes cluster.

## Project Structure
.
├── Dockerfile
├── go.mod
├── go.sum
├── main.go
├── k8s
│ ├── deploy.yaml
│ ├── service.yaml
│ ├── ingress.yaml
└── README.md

## Deploy to Kubernetes
```
kubectl apply -f k8s/deploy.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/ingress.yaml
```

## Cleanup
```
kubectl delete -f k8s/deploy.yaml
kubectl delete -f k8s/service.yaml
kubectl delete -f k8s/ingress.yaml
```

## Conclusion
You have successfully built, containerized, and deployed a Hello World Go application on Kubernetes. This setup provides a scalable and manageable way to deploy applications using modern container orchestration.
