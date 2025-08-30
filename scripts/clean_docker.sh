#!/bin/bash
echo "Cleaning old Docker containers and images..."

# Stop all running containers
docker ps -q | xargs -r docker stop

# Remove all stopped containers
docker ps -aq | xargs -r docker rm

# Remove dangling images
docker images -f "dangling=true" -q | xargs -r docker rmi

echo "Docker cleanup completed."
