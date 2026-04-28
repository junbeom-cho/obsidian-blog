---
tags:
  - Windows
  - CLI
title: oh-my-posh
aliases:
  - oh-my-posh
description: Windows 터미널을 꾸밀 수 있는 oh-my-posh 설치 및 사용법
date: 2026.03.29
publish: true
---
>[!summary]
>Terminal 설정 도구인 **oh-my-posh**의 설치, 설정 및 사용법에 대해 정리했습니다.


## Overview
칙칙한 Windows의 Terminal을 꾸밀 수 있게 해주는 Windows의 [[oh-my-zsh]]

## Requirements
- [[scoop|Scoop]]

## Setup
### Installation
1. **Windows Terminal** 관리자 실행
2. **oh-my-posh** 설치
```powershell
scoop install oh-my-posh
oh-my-posh get shell
```

### Theme Configuration
- [Theme 샘플 페이지](https://ohmyposh.dev/docs/themes)

#### 테마 정보 입력
```powershell
# Profile 설정 파일 열기
notepad $PROFILE

# 테마 정보 입력
oh-my-posh init pwsh --config ‘https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/atomic.omp.json’ | Invoke-Expression
```
- `Ctrl + s`로 저장


## TroubleShooting
### profile 메모 없음

>[!error] 오류 내용
>[[#테마 정보 입력]]에서 `notepad $PROFILE`을 입력했을 때 파일이 없다고 뜬다.

>[!done] 해결
>파일을 생성해주면 된다.
>```powershell
>New-Item -Path $PROFILE -Type File -Force
>``` 

### Font 없음 및 아이콘 깨짐

>[!error] 오류 내용
>Font가 없어서 글이 깨지거나 아이콘이 깨져 테마가 원활히 나오지 않는다.

>[!done] 해결
>1. [Font 다운로드](https://www.nerdfonts.com/font-downloads)
>2. powershell에서 `Ctrl + Shift + ,`로 **settings.json** 파일 열기
>3. defaults -> font -> face 에 다운받은 font 입력

![[windows-powershell-settings-carbon.svg]]


---
## References
- [Tistory](https://backstreet-programmer.tistory.com/176)
- [공식 Docs](https://ohmyposh.dev/)