#!/bin/sh

docker run -d \
--name postgres \
-p 5432:5432 \
-e POSTGRES_PASSWORD=dev1122x \
-e PGDATA=/var/lib/postgresql/data/pgdata \
-v /postgres_data:/var/lib/postgresql/data \
--restart unless-stopped \
--network development \
-m 512m --memory-reservation=128m \
postgres:12.8
