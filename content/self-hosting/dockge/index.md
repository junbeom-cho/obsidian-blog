---
tags:
  - Self-Hosting
  - MOC
  - Dockge
  - Infra
title: Dockge
aliases:
  - Dockge MOC
date: 2026.04.25
publish: true
---
>[!info] Dockge MOC
>**Dockge**의 설치 및 설정법들을 정리한 폴더입니다.


## Quick Link
---
- [[dockge-installation|Dockge Installation]]
- [[dockge-configuration|Dockge Configuration]]

## Dockge
---
**Dockge**는 웹 기반 **docker-compose** 관리 서비스입니다. 옵션을 통해 `docker-compose.yaml` 작성을 보조하고 빠른 배포를 도와줍니다.

![[dockge-dashboard.png]]

### 특징
- **장점**
	- 빠른 설정과 배포, 업데이트 등이 가능
	- `Docker Run` 커맨드를 `docker-compose.yaml`로 변환해주는 기능으로 빠른 배포 가능
	- 간단한 로그 분석 및 컨테이너 커널 접속 가능
	- 서비스 자체가 가벼워서 매우 적은 리소스로 구동 가능
- **단점**
	- 이미지 업데이트 알림 등의 편리한 기능은 없음
	- 버그인지 모르겠지만 Windows에서 로그 복사가 안됨
	- vscode에서 수정하고 새로고침 안하면 기존 `docker-compose.yaml`로 덮어씌워짐


>[!tip] Recommended
>- GUI를 통해 `docker-compose.yaml`을 쉽게 관리하고 싶다. -> **추천**
>- 앱 하나로 Docker와 관련된 여러 설정을 동시에 관리하고 싶다. -> **비추천**
>- 서버에 리소스가 적어서 가벼운 앱으로 관리하고 싶다. -> **추천**
