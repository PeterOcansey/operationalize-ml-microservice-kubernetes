#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=ocanseypeter/uda_microserviceapp

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run kub-udas-microserviceapp\
    --image=$dockerpath\
    --port=80\
    --labels app=kub-udas-microserviceapp

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward kub-udas-microserviceapp 8000:80

