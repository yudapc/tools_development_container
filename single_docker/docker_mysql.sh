#!/bin/sh

docker run -d \
--name mysql \
-p 3306:3306 \
-e MYSQL_ROOT_PASSWORD=root \
-e MYSQL_USER=dev \
-e MYSQL_PASSWORD=dev1122x \
-e MYSQL_DATABASE=be_development \
-v /mysql_data:/var/lib/mysql \
--restart unless-stopped \
--network development \
-m 256m --memory-reservation=128m \
mysql:8.0.26
