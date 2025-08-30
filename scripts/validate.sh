#!/bin/bash
echo "Validating service..."

# Wait a few seconds for container to start
sleep 10

# Check if container is running
if docker ps | grep -q "myapp_container"; then
  echo "Validation successful: Container is running."
  exit 0
else
  echo "Validation failed: Container is not running."
  exit 1
fi
