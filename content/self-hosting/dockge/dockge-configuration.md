---
tags:
  - Infra
  - Dockge
  - Self-Hosting
title: Dockge Configuration
aliases:
  - Dockge Configuration
date: 2026.04.25
publish: true
---
>[!summary]
>**Dockge**에서 Stack 추가하는 설정 방법을 작성했습니다.

## Add Compose
![[dockge-add-compose.png]]

### Options
#### General
- **Stack Name** : 스택의 이름(생성되는 폴더 이름)을 입력
- **Dockge Agent** : 보통은 신경 안 써도 되고 다른 서버를 동시에 관리할 때 사용

#### Containers
- **Add Container** : 하나의 `compose` 파일 안에 여러 컨테이너를 동시에 생성해서 관리할 때 컨테이너를 추가
- **Edit Container** : 컨테이너의 세부 옵션을 정의
 ![[dockge-container-option.png]]
- **Image** : 이미지의 경로, 버전을 지정
- **Ports** : 사용할 포트번호 지정
- **Volumes** : 마운트할 볼륨 경로 지정
- **Restart Policy** : 재시작 조건 설정 (*Recommended* : `Unless-Stopped)
- **Environment Variables** : 컨테이너 환경변수 설정
- **Networks** : 컨테이너와 연결할 네트워크 지정
- **Container Dependency** : 컨테이너가 여러 개 일때 특정 컨테이너 조건에 따라 배포되도록 설정

#### .env
- 민감한 정보를 변수로 설정하는 `.env`를 작성하고 생성

#### Networks
- **Internal Networks** : 내부 네트워크를 생성
- **External Networks** : 다른 컨테이너에서 생성된 네트워크를 조회하고 연결

### Deploy
옵션을 모두 작성하면 해당 스택의 상태를 지정합니다.
- **Deploy** : 컨테이너를 새로 생성
- **Save** : 컨테이너를 생성하지 않고 `docker-compose.yaml`만 저장
- **Discard** : 수정 내용을 취소

## Manage Compose
![[dockge-stack-active.png]]
- **Edit** : `compose` 설정 상태로 전환
- **Restart** : 컨테이너를 재시작
- **Update** : 최신 이미지를 다운받아 컨테이너 재생성
- **Stop** : 컨테이너 정지
- **Delete** : 컨테이너를 삭제하고 `docker-compose.yaml`이 있는 폴더 자체를 삭제

### Terminal
![[dockge-terminal.png]]
- **Bash** : 해당 컨테이너의 커널로 진입하여 직접 수정 및 관리할 수 있음
- **Terminal** : 해당 컨테이너의 로그를 간편하게 볼 수 있음

![[dockge-stack-terminal.png]]
