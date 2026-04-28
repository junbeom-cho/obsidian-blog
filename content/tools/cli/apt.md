---
tags:
  - CLI
  - PackageManager
  - Ubuntu
title:
aliases:
date: 2026.03.18
publish: true
---
>[!summary]
>Debian 기반의 Linux Package Manager인 **apt**의 설정 및 사용법에 대해서 정리했습니다.


## Overview
- `root` 에서 사용하는 패키지 매니저 CLI 툴
- 인프라 관련 패키지 위주로 안정성을 우선으로 하여 버전이 낮은 경우가 많음

## Setup
### Installation
#### Linux
>[!info]
>Linux에는 apt 패키지 매니저가 기본적으로 설치되어있을 확률이 높다.

## Usage
### Manage Version
```bash
# Check Version
apt --version

# Update Version
sudo apt update
```

### Manage Package
```bash
# Search Package
apt search <package>

# Show Package Information
apt show <package>

# Install Package
sudo apt install <package>

# Uninstall Package
sudo apt remove <package>

# Perfect Remove
sudo apt purge <package>

# Installed List
apt list --installed

# Upgradable List
apt list --upgradable
```

### Cleaning
```bash
# Remove Useless Pakage
sudo apt autoremove

# Remove .deb
sudo apt clean
```

## References
- [공식 Docs](https://ubuntu.com/server/docs/)