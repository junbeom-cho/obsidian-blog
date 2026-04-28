---
tags:
  - Docker
  - Server
title:
aliases:
date:
publish: false
---

# Docker

## Purpose
- image를 활용한 안정적인 서비스 배포 도구




## Command
### 자주 사용하는 명령어
#### 컨테이너 터미널 진입
```bash
docker exec -it <container_name> /bin/bash
```

#### 컨테이너 모니터링
```bash
docker stats
```

### Container Management
#### ps
```bash
# Activate Container List
docker ps

# All Container List
docker ps -a
```

#### run
```bash
# Start Container 
docker run

# Standard Run
docker run -d --name [Name] -p [HostPort]:[ContainerPort] [ImageName]
```
- `-d` : 백그라운드 실행
- `-p` : 포트포워딩

#### stop
```bash
# Stop Container
docker stop [ContainerName]
```

#### restart
```bash
docker restart [ContainerName]
```

#### rm
```bash
# Remove Stop Container
docker rm [ContainerName]

# Remove UnStop Container
docker rm -f [ContainerName]
```


### Image Management
#### images
```bash
# Installed Images List
docker images
```

#### pull
```bash
# Install Image
docker pull [ImageName]
```

#### rmi
```bash
# Remove Image 
docker rmi [ImageID]
```

#### build
```bash
# Image Build
docker build -t [Name:Tag] .
```


### Status
#### logs
```bash
# Print Log
docker logs [ContainerName]

# Follow Log
docker logs -f [ContainerName]

# Last 100 Line in Logs
docker logs --tail 100 [ContainerName]
```

#### exec
```bash
# Container Shell
docker exec -it [ContainerName] /bin/bash
```

#### inspect
```bash
# Container Information into JSON
docker inspect [ContainerName]
```

#### stats
```bash
# Mornitoring All Container
docker stats
```

### Docker Compose
#### up
```bash
# exec compose.yaml
docker compose up -d
```

#### down
```bash
# Stop Container & Remove Network
docker compose down
```

#### logs
```bash
# Mornitoring Services
docker compose logs -f
```

#### ps
```bash
# Check Status Managing Compose
docker compose ps
```

#### pull
```bash
# Install Recently Image(Update)
docker compose pull
```

### Docker Network
#### ls
```bash
# Exist Network List
docker network ls
```

#### create
```bash
# Create Network
docker network create [NetworkName]
```

#### inspect
```bash
# Network Information
docker network inspect [NetworkName]
```

#### connect
```bash
# Connect Container into Network
docker network connect [NetworkName] [ContainerName]
```


### Cleaning
```bash
# 전체 정리
docker system prune

# container 정리
docker container prune

# network 정리
docker network prune

# image 정리
docker image prune

# 사용 안하는 볼륨 삭제
docker volume prune

# 강력한 삭제(실행 중이지 않은 모든 것)
docker system prune -a --volumes
```
