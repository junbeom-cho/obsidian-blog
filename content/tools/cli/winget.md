---
tags:
  - Windows
  - CLI
  - PackageManager
title: Winget
aliases:
  - Winget
description: Windows에서 공식적으로 지원하는 패키지 매니저 CLI 툴 Winget의 설치 및 사용법
date: 2026.03.18
publish: true
---
>[!summary]
>Windows의 표준 Package Manager인 **Winget**에 대해서 정리했습니다.


## Overview
- Windows에서 사용되는 패키지 매니저 CLI 툴
- [[scoop]]은 개발 관련 패키지, winget은 GUI 프로그램 등을 주로 관리한다.

## Setup
### Installation
#### Terminal 관리자 권한
```bash
$progressPreference = 'silentlyContinue'
Write-Host "Installing WinGet PowerShell module from PSGallery..."
Install-PackageProvider -Name NuGet -Force | Out-Null
Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery | Out-Null
Write-Host "Using Repair-WinGetPackageManager cmdlet to bootstrap WinGet..."
Repair-WinGetPackageManager -AllUsers
Write-Host "Done."
```
- 계속 엔터엔터 하다보면 설치된다.

## Usage
### Manage Version
```bash
# Check Version
winget --version

# Update Version
winget update
```

### Manage Package
```bash
# Search Package
winget search <package>

# Install Package
winget install <package>

# Uninstall Package
winget uninstall <package

# Upgrade Package
winget upgrade

# Check Install List
winget list
```

## References
- [공식 Docs](https://learn.microsoft.com/ko-kr/windows/package-manager/winget/)
- [공식 GitHub](https://github.com/microsoft/winget-cli)