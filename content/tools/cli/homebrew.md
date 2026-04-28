---
tags:
  - CLI
  - macOS
  - Linux
  - PackageManager
title: Homebrew
aliases:
  - Homebrew
date: 2026.03.17
publish: true
---
>[!summary] 
>Package Manager인 **Homebrew**의 설치, 설정 및 사용법에 대해 정리했습니다.


## Overview
macOS, Linux 에서 사용할 수 있는 패키지 매니저

## Setup
### Installation
#### macOS / Linux
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
- 실행 후 Enter 하다보면 설치 완료

## Usage
### 패키지 관리
#### 패키지 검색
```bash
brew search <application-name>

# Example
brew search bitwarden
```

#### 패키지 설치
```bash
# Formula(CLI)
brew install <application-name>

# Example
brew install bitwarden-cli

# Cask(macOS용 GUI App)
brew install --cask <application-name>

# Example
brew install --cask bitwarden-cli
```

#### 패키지 삭제
```bash
# Formula(CLI)
brew uninstall <application-name>

# Example
brew uninstall bitwarden-cli

# Cask(macOS용 GUI App)
brew uninstall --cask <application-name>

# Example
brew uninstall --cask bitwarden
```

#### 설치 패키지 목록
```bash
brew list
```

#### 패키지 업데이트
```bash
brew upgrade

brew upgrade --cask
```

### 유지보수 및 백업
#### 버전 관리
```bash
# Check Version
brew --version

# Update Version
brew update
```

#### 불필요 파일 및 캐시 삭제
```Bash
brew cleanup
```

>[!tip]
>보통 패키지 삭제 후에 한번씩 해주는 것을 추천

#### 설치 패키지 목록 백업
```bash
# list를 파일로 저장
brew bundle dump --file=Brewfile --force

# file에 저장된 패키지를 다운로드
brew bundle --file=Brewfile
```

>[!tip]
>다른 환경에서 빠르게 동일한 개발 환경을 구축할 수 있음

## References
- [공식 GitHub](https://github.com/Homebrew/brew)
- [공식 Docs](https://brew.sh)