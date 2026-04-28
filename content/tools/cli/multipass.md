---
tags:
  - VirtualMachine
  - CLI
  - Ubuntu
title: Multipass
aliases:
  - Multipass
description: Ubuntu 가상머신 설치 프로그램인 Multipass 설치 및 사용법
date: 2026.03.18
publish: true
---
>[!summary]
>Ubuntu의 가상 환경 생성 도구인 **Multipass**의 설치, 설정 및 사용법에 대해 정리했습니다.


## Overview
- 고급프로그래밍에서 `Ubntu`를 실습 및 설치하기 위한 가상머신 프로그램
- `Ubuntu`에 한해서는 매우 쉬운 설치 및 세팅이 가능하다.

## Requirements
- [[homebrew]]

## Setup
### Installation
#### macOS
```bash
brew install --cask multipass
```

### Configuration
#### Install Ubuntu
```bash
# Install Ubuntu
multipass launch --name <name>
```

## Usage
### Manage Version
```bash
# Check Version
multipass version
```

### Manage Ubuntu
```bash
# Check List
multipass list

# Start Ubuntu
multipass start <name>

# Stop Ubuntu
multipass stop <name>

# Exec Ubuntu Shell
multipass shell <name>
```

## References
- [공식 GitHub](https://github.com/canonical/multipass)
- [공식 Docs](https://canonical.com/multipass)