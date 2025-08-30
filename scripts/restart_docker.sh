#!/bin/bash
docker rm -f my-nginx || true
docker run -d \
  --name my-nginx \
  -p 80:80 \
  -v /home/ec2-user/app:/usr/share/nginx/html \
  nginx
