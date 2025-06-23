#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 947557066309.dkr.ecr.ap-south-1.amazonaws.com
# Run the Docker image as a container
docker pull python01:latest 947557066309.dkr.ecr.ap-south-1.amazonaws.com/python01:latest
docker run -d -p 5000:5000  python01:latest 947557066309.dkr.ecr.ap-south-1.amazonaws.com/python01:latest
