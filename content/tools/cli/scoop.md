---
tags:
  - CLI
  - Windows
  - PackageManager
title: Scoop
aliases:
  - Scoop
description: Windows에서 사용하는 패키지 매니저 CLI 툴 Scoop의 설치 및 사용법
date: 2026.03.18
publish: true
---
>[!summary]
>Windows의 Package Maanager인 **Scoop**의 설치, 설정 및 사용법에 대해 정리했습니다.


## Overview
Windows에서 [[homebrew]]와 같이 패키지를 관리할 수 있게 해주는 CLI 툴

## Setup
### Installation
```bash
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

## Usage
### Manage Version
```bash
# Check Version
scoop --version

# Update Version
scoop update
```

### Manage Package
```bash
# Search Package
scoop search <name>

# Install Package
scoop install <name>

# Uninstall Package
scoop uninstall <name>
```

### Maintenance
```bash
# Clean Cache & Old Version
scoop cleanup
```

## References
- [공식 GitHub](https://github.com/ScoopInstaller/Scoop)
- [공식 Docs](https://scoop.sh/)