#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ilatyphi95/api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy housing-prediction --image=${dockerpath}


# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/housing-prediction-85cc8c68c7-r5fmv --address 0.0.0.0 8000:80