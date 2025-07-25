#!/bin/bash

# Function to handle errors
handle_error() {
    echo "Error: $1"
    exit 1
}

echo "Building the Docker image..."
IMAGE_TAG="sourabhk00/astra:latest"
docker build -t "$IMAGE_TAG" . || handle_error "Docker build failed"
docker push "$IMAGE_TAG" || handle_error "Docker push failed"
