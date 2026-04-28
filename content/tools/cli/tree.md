---
tags:
  - CLI
title:
aliases:
description: Directory의 구조를 쉽게 파악할 수 있게 출력해주는 CLI 툴 tree의 설치 및 사용법
date: 2026.03.18
publish: true
---
>[!summary]
>폴더의 구조를 출력해주는 **Tree**의 설치, 설정 및 사용법에 대해서 정리했습니다.


## Overview
**Directory**의 구조를 한 눈에 파악하기 쉽게 출력해주는 CLI 도구

## Requirements
- [[homebrew|Homebrew]]

## Setup
### Installation
#### macOS / Linux
```bash
brew install tree
```

## Usage
```Bash
tree
```
- 기본 명령어로 숨김 파일을 제외하고 모든 깊이의 파일을 보여준다.

### Option
`-a` : 숨김 파일까지 모두 보여준다 Ex) .gitignore, .git 등
`-F` : 폴더에 **슬래쉬(/)** 를 붙인다
`-L (깊이)` : 트리 구조의 깊이를 결정한다.
`-I "(제외할 파일 이름)"` : 특정 파일 및 확장자 제외
`-h` : 파일 크기까지 보기
`-d` : 디렉토리만 보기

#### 주로 사용하는 조합
```bash
tree -a -F -L 2 -I ".git|.DS_Store"
```

### Example
```bash
./
├── .bash_profile
├── .gitconfig
├── .gitignore
├── .p10k.zsh
├── .zprofile
├── .zshrc
├── install.sh*
└── README.md
```

## References
- [공식 GitHub](https://github.com/peteretelej/tree)
- [공식 Docs](https://peteretelej.github.io/tree/)