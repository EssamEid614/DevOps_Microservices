#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=essameid614/helloworld

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment helloworld --image=$dockerpath --port=8000

# Step 3:
# List kubernetes pods
kubectl get nodes

# Step 4:
# Forward the container port to a host

kubectl port-forward pod/helloworld-df6dc6cdf-ghwvc --address 0.0.0.0 8000:8000