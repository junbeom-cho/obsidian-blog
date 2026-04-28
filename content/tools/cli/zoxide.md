---
tags:
  - CLI
title: Zoxide
aliases:
  - Zoxide
description: 사용자의 행적을 기반으로 자주 사용하는 Directory를 저장하여 쉽게 이동할 수 있게 해주는 CLI 툴 zoxide의 설치 및 사용법
date: 2026.03.18
publish: true
---
>[!summary]
>폴더 이동을 도와주는 **Zoxide**의 설치, 설정 및 사용법에 대해서 정리했습니다.


## Overview
과거 행적을 저장하고 자주 가는 폴더에 바로 접근할 수 있게 도와주는 CLI 툴

## Requirements
- [[homebrew|Homebrew]]
- [[scoop|Scoop]]

## Setup
### Installation
#### macOS / Linux
```bash
brew install zoxide
```

#### Windows
```bash
scoop install zoxide
```

### Configuration
```bash
# .zshrc 수정
nano ~/.zshrc

# .zshrc 추가
eval "$(zoxide init zsh)"

# .zshrc 수정 사항 저장
source ~/.zshrc
```

## Usage
```bash
## 원하는 파일 이동
cd ~/project/temp/temp1/temp2/dir

## zoxide가 자동으로 저장
cd ~
z dir
```

## References
- [공식 GitHub](https://github.com/ajeetdsouza/zoxide)
