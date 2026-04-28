---
tags:
  - CLI
  - PackageManager
title: Package Manager
aliases:
  - Package Manager
description: OS 별로 사용할 수 있는 Package Manager를 비교하고 최적의 사용법 정리
date: 2026.03.18
publish: true
---
>[!summary]
>OS별, 상황별 최적화해서 사용할 수 있는 **Package Manager**에 대해서 정리했습니다.

## Overview
OS 별로 어떤 패키지 매니저를 사용하는게 좋은지, 패키지 매니저별로 어떻게 사용하면 좋은지 정리

## macOS
### [[homebrew]]
- 표준 Package Manager
- CLI(Formula)와 GUI 애플리케이션(Cask)까지 모든 소프트웨어를 지원

>[!check] Homebrew
>Formula : lsd, bat, bitwarden-cli, openssl 등 CLI  도구
>
>Csak : iterm2, google-drive, chrome, bitwarden 등 GUI 어플리케이션

## Windows
### [[winget]]
- Windows에서 공식으로 지원하는 Package Manager
- Windows 환경에서 설치되는 GUI 프로그램이나 공식 소프트웨어를 관리
### [[scoop]]
- Windows에서 사용하는 Homebrew로 가벼운 CLI 및 Portable 앱을 설치

>[!check] Windows
>Winget : bitwarden, onedrive, chrome, obsidian 등 GUI 어플리케이션
>
>Scoop : lsd, bat, bottom, bitwarden-cli 등 CLI 도구

## Linux
### [[apt]]
- 시스템 코어 패키지 및 인프라를 구축할 때 사용하는 가장 안정적인 기본 패키지 매니저
- OS 공식 패키지 저장소를 사용하여 최신 버전은 아니지만 안정적인 버전만 사용

### [[homebrew]]
- 개발 관련 CLI 툴을 설치하는데 주로 사용
- 안정적일 필요 없이 성능 우선으로 최신 버전을 사용하는 패키지 관리에 사용

>[!check] Linux
>apt : docker, docker-compose, PostgreSQL, Nginx 등 인프라 관련 CLI 도구
>
>Homebrew(Formula) : lsd, bat, bottom 등 개발 관련 CLI 도구
