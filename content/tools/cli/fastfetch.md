---
tags:
  - CLI
title: Fastfetch
aliases:
  - Fastfetch
date: 2026.03.18
publish: true
---
>[!summary]
>PC의 제원을 출력해주는 도구인 **fastfetch**의 설치, 설정 및 사용법에 대해 정리했습니다.


## Overview
- **System 정보**를 로고와 함께 예쁘게 보여주는 CLI 툴
- 기존 `neofetch` 대비 C로만 작성해서 더 빠르게 보여줌

## Requirements
- [[homebrew]]
- [[scoop]]

## Setup
### Installation
#### macOS / Linux
```shell
brew install fastfetch
```

#### Windows
```bash
scoop install fastfetch
```

### Configuration
#### 출력 항목 설정
>[!info]
>기본 `fastfetch`는 너무 많은 정보를 담고 있기 때문에 설정을 통해 원하는 정보만 추출할 수 있다.

##### 1. 설정 파일 만들기
```bash
# directory 설정
mkdir -p ~/.config/fastfetch

# config 파일 생성
fastfetch --gen-config
```

##### 2. config 파일 수정
```json
{
  "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/master/doc/json_schema.json",
  "modules": [
    "title",
    "separator",
    "os",
    "host",
    "kernel",
    "uptime",
    "packages",
    "shell",
    "display",
    "de",
    "wm",
    "wmtheme",
    "theme",
    "icons",
    "font",
    "cursor",
    "terminal",
    "terminalfont",
    "cpu",
    "gpu",
    "memory",
    "swap",
    "disk",
    "localip",
    "battery",
    "poweradapter",
    "locale",
    "break",
    "colors"
  ]
}
```
- config.jsonc 파일이 생성되는데 원하지 않는 정보를 삭제하면 된다.

## Usage

```shell
fastfetch
```

### Example
![[cli-tool-fastfetch-sample.png]]

## References
[공식 GitHub](https://github.com/fastfetch-cli/fastfetch)