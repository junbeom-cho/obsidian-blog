---
tags:
  - CLI
title:
aliases:
description: Bash의 ls 명령어에 아이콘과 색상을 추가하여 더 다채롭게 만들어주는 CLI 툴 lsd의 설치 및 사용법
date: 2026.03.17
publish: true
---
>[!summary]
>ls의 개선 도구인 **lsd**의 설치, 설정 및 사용법에 대해 정리했습니다.


## Overview
`Bash`의 list 명령어인 ls를 **icon**, **highlighting**을 추가하여 이쁘게 출력해주는 CLI 툴

## Requirements
- [[homebrew]]
- [[scoop]]

## Setup
### Installation
#### macOS / Linux
```bash
brew install lsd
```

#### Windows
```bash
scoop install lsd
```

### Configuration
#### Alias 설정 (필수 아님)
```zsh
# .zshrc 수정
nano ~/.zshrc

# Alias 설정
alias ls='lsd'
alias ll='lsd -la'

# .zshrc 저장
source ~/.zshrc
```

>[!tip]
>기본 ls 처럼 사용하면 된다.

## Usage
```bash
# 기본 목록
lsd

# -a : 숨김 파일도 보여줌
lsd -a

# -l : 상세 정보를 표시해줌
lsd -l
```

### Example
![[cli-tool-lsd-sample.png]]

## References
- [공식 GitHub](https://github.com/lsd-rs/lsd)