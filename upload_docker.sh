#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=ocanseypeter/uda_microserviceapp

# Step 2:  
# Authenticate & tag
cat ~/Desktop/my_pass.txt | docker login --username ocanseypeter --password-stdin
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
