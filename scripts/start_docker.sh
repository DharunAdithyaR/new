#!/bin/bash
echo "Starting Docker container..."

# Navigate to app folder
cd /home/ubuntu/app || exit 1

# Build Docker image
docker build -t myapp:latest .

# Run Docker container
docker run -d -p 8080:80 --name myapp_container myapp:latest

echo "Docker container started."
