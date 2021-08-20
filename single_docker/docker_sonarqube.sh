#!/bin/sh

docker run -d \
--name sonarqube \
-p 9000:9000 \
-p 9002:9002 \
--restart unless-stopped \
sonarqube:8.9.1-community
