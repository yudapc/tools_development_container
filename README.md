# Tools Development Container

Tools for my development using docker container

### Services

- postgres with port 5432
- redis with port 6379
- sonarqube with port 9000 and 9092

### Permission

```
chmod +x start.sh
chmod +x stop.sh
```

### Run Start

`./start.sh`

### Stop Service

`./stop.sh`

#### Create Network

`docker network create development`

#### docker-compose.yml

Added network development for access services in the tools development

```
networks:
  default:
    external:
      name: development
```
