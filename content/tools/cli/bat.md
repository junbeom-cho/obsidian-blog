---
tags:
  - CLI
title:
aliases:
date: 2026.03.17
publish: true
---
>[!summary]
>cat 명령어의 개선판인 **bat**의 설치, 설정 및 사용법에 대해서 정리했습니다.


## Overview
`Bash`의 cat 명령어 대체, **syntax-highlighting**을 통해 가시성을 높이고 이쁘게 출력해주는 CLI 툴

## Requirements
- [[homebrew]]
- [[scoop]]

## Setup
### Installation
#### macOS / Linux
```shell
brew install bat
```

#### Windows
```bash
scoop install bat
```

### Configuration
#### Alias 설정 (필수 아님)
```bash
nano ~/.zshrc

# 추가
alias cat='bat --style=plain'
alias batp='bat --style=numbers,changes,header'

source ~/.zshrc
```

## Usage
```shell
# Single File
bat <file>

# Multiple Files
bat <file1> <file2> ...

# Show non-printable characters
bat -A <file>
```

>[!info] non-printable characters
>공백, 줄바꿈 등 일반적으로 프린트되지 않는 요소

### Example
![[cli-tool-bat-sample-basic.png]]

![[cli-tool-bat-sample-all.png]]
- `-A` 

## References
- [공식 GItHub](https://github.com/sharkdp/bat)