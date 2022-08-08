#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=eromosele/ml-project4-udacity

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment ml-flask-p4 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment ml-flask-p4 --type=NodePort --port=80
kubectl port-forward service/ml-flask-p4 8000:80
