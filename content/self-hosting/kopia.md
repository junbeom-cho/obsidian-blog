---
tags:
- Backup
- Server
- Application
title:
aliases:
description:
date:
publish: false
---

# Kopia

## Introduction
- 서버의 환경을 주기적으로 *백업*하는 어플리케이션

## Installation
### docker-compose
```yaml
services:
  kopia:
    image: kopia/kopia:latest
    hostname: ${HOSTNAME:-KopiaServer}
    container_name: Kopia
    restart: unless-stopped
    ports:
      - 51515:51515
    command:
      - server
      - start
      - --disable-csrf-token-checks
      - --insecure
      - --address=0.0.0.0:51515
      - --server-username=${KOPIA_ADMIN}
      - --server-password=${KOPIA_ADMIN_PASSWORD}
    environment:
      KOPIA_PASSWORD: ${KOPIA_REPOSITORY_PASSWORD}
      USER: junbeom-cho
      TZ: Asia/Seoul
    volumes:
      # --- Default Volumes ---
      - ./app/config:/app/config
      - ./app/cache:/app/cache
      - ./app/logs:/app/logs

      # --- 백업 대상 ---
      - /opt:/data/opt:ro
      # --- 스냅샷 마운트용 (복구 시 사용) ---
      - /tmp:/tmp:shared
    cap_add:
      - SYS_ADMIN
    devices:
      - /dev/fuse:/dev/fuse
networks: {}

```

## Configuration
### Google Cloud Configuration
- [Console Google Cloud](https://console.cloud.google.com/) 진입

#### Oauth 클라이언트 ID
1. Google Drive API -> 사용 or 관리 -> 사용자 인증 정보
2. 사용자 인증 정보 만들기 -> Oauth 클라이언트 ID
	1. 데스크톱 앱
	2. 이름 (상관없음)
	3. 만들기
	4. JSON 다운로드

#### 서비스 계정 생성
1. Google Drive API -> 사용 or 관리 -> 사용자 인증 정보
2. 사용자 인증 정보 -> 서비스 계정
	1. 서비스 계정 이름 `Kopia Service Account`
	2. 서비스 계정 ID (자동생성 )
	3. 서비스 계정 설명 (빈칸 상관없음)
	4.  역할 선택 X -> 완료

#### Test User 생성
1. Oauth 동의 화면 -> 대상
2. 하단 Add Users
3. 로그인 시도할 gmail 입력 `dev.junbeom@gmail.com`

#### Google Drive 생성
1. Kopia 백업용 폴더 생성 `KopiaBackup`

### Rclone Drive 생성
>[!nnote] 
>Web UI에 기본적으로 GoogleDrive가 없어서 rclone 이라는걸로 만들어야함.

```bash
# Start Rclone Configuration
docker exec -it Kopia rclone config

# Select Conf mode
n # new remote

# Select Storage Type
[GoogleDrive Number]

# Input Client_ID
[CLINET_ID]

# Input Client_Secret
[CLIENT_SECRET]

# Select Scope mode
1 # Full access

# Service Account JSON
n or Enter # 개인 회원이라서 사용 못함

# Edit Advanced Config
n

# Use web browser to automatically authenticate ~
n

# Browser Authenticate
rclone authorize "drive" ~ # 이렇게 시작하는 문자열 복사해서 Windows Terminal에서 실행

# Generate Token
# 인증이 완료되면 토큰 생성
Paste the following into your remote machine --->

# Token 생성(JSON or Token)

<--- End paste

# Enter Token on Server Bash
[Token]

# Summary Configuration
y

```


### Create Repository
#### 1. Path
- [Rclone Remote Path::GoogleDrive:/KopiaBackup]
- [Rclone Executable Path::rclone]
GoogleDrive와 KopiaBackup은 위에서 설정하는거에 따라 변경 가능

#### 2. Repository Config
- [User::junbeom-cho]
- [Host::junbeom-server]

### Creat Snapshot
#### Files Config(Ignore)
##### Ignore Files
```
cache/
logs/
*.tmp
temp/
./containerd
*.log
*.logs
.DS_Store
Thumbs.db
lost+found/
```

#### Snapshot Retention
- [Latest Snapshots::3] 
- [Hourly::0]
- [Daily::7]
- [Weekly::4]
- [Monthly::3]
- [Annual::1]

#### Scheduling
- [Snapshot Frequency::(none)]
- [Times Of Day::7:00]

### rclone.conf
#### compose 수정
```yaml
environment:
	RCLONE_CONFIG: /app/config/rclone.conf
```

#### rclone.conf 생성
```text
[GoogleDrive]
type = drive
client_id = [CLIENT_ID]
client_secret = [CLIENT_SECRET]
scope = drive
token = [Token]
```

### Deploy
