---
tags:
- Java
- CLI
title:
aliases:
description:
date:
publish: false
---
# SDKMAN!
## 개요
Homebrew 에서 설치하고 jenv에서 관리하는 복잡한 시절은 그만!
SDKMAN! 하나로 편하게 **JDK** 관리하자!!

>[!caution] 
>Homebrew 보다 JDK 관리가 더 귀찮아서 안씀


## Installation
### SDKMAN! download 
```bash
# SDK 설치 스크립트
curl -s "https://get.sdkman.io" | bash

# SDK 적용
source "$HOME/.sdkman/bin/sdkman-init.sh"

# 설치 확인
sdk version
```
- [공식 홈페이지](https://sdkman.io/) 참고

### Install JDK

```bash
# JDK 찾기
sdk list java | grep zulu | grep <version>

# JDK 설치
sdk install java 17.0.17-zulu

```


## Command
### 검색 및 조회

```bash
# 설치 가능한 모든 자바 버전 리스트 출력
sdk list java

# 현재 터미널 세션에서 활성화된 자바 버전 확인
sdk current java

# 설치된 SDKMAN!의 버전 확인
sdk version
```

### 설치 및 제거

```bash
# 특정 버전의 JDK 설치
sdk install java [ID]

# 특정 버전의 JDK 삭제
sdk uninstall java [ID]

# SDKMAN! 업데이트
sdk selfupdate
```

### 버전 전환

```bash
# 시스템 전체의 자바 버전 설정
sdk default java [ID]

# 현재 터미널 창에서만 임시 버전 설정
sdk use java [ID]
```


### 프로젝트별 버전 전환

```bash
# 1. 프로젝트 폴더 내부에서 설정 파일 생성
# 해당 폴더에 .sdkmanrc 파일이 생깁니다.
sdk env init

# 2. .sdkmanrc 파일 수정
# 파일 안의 java=... 부분을 내가 원하는 버전 ID로 수정

# 3. 환경 적용
# 해당 폴더에서 실행하면 .sdkmanrc에 적힌 버전으로 즉시 전환
sdk env
```








