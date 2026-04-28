---
tags:
  - Infra
  - Dockge
  - Self-Hosting
title: Dockge Installation
aliases:
  - Dockge Installation
date: 2026.04.25
publish: true
---
>[!summary]
>**Dockge**의 설치 과정을 기록했습니다.
>
>**Quick Links**
>- [공식 GitHub](https://github.com/louislam/dockge)
>- [공식 Homepage](https://dockge.kuma.pet)

![[dockge-dashboard.png]]

## Requirements
- Docker
- Docker Compose

## Installation
### docker-compose.yaml
```yaml
# ==================================================
# Dockge : Docker Compose 스택 관리 웹 UI
# 평균 CPU : 1 ~ 5%
# 평균 메모리 : 150MB
# ==================================================

services:
  dockge:
    image: louislam/dockge:1.5.0
    container_name: dockge
    restart: unless-stopped
    ports:
      - 5001:5001
    volumes:
     # Docker 소켓 연결
      - /var/run/docker.sock:/var/run/docker.sock
    # 데이터 폴더 마운트
      - ./data:/app/data
    # 서비스 스택 보관 폴더 마운트
      - /opt/stacks:/opt/stacks
    environment:
      # Dockge가 감시하고 관리할 스택 디렉터리 경로
      - DOCKGE_STACKS_DIR=/opt/stacks
    networks:
      - default
    # ==================================================
    # 헬스체크 - 헬스체크 커맨드가 없음
    # ==================================================


    # ==================================================
    # 리소스 제한 - 필요시 조정
    # ==================================================
    deploy:
      resources:
        limits:
          cpus: "1"
          memory: 1G
    # ==================================================
    # 로그 설정
    # ==================================================
    logging:
      driver: json-file
      options:
        max-size: 10m
        max-file: "3"
        labels: service=dockge
# ==================================================
# 네트워크 설정
# ==================================================
networks:
  default:
    name: dockge-network
```
1. `docker compose up -d`
2. `http:localhost:5001` 접속

## Configuration
### Admin Registration
![[dockge-admin-registration.png]]

### Done
