---
tags:
  - CLI
title:
aliases:
date:
publish: false
---

# alias

## Overview
- 평소에 많이 사용하는 CLI 명령어를 손쉽게 사용하기 위한 별칭 정리

## Usage
### 1. .alias 생성
```bash
nano ~/.alias
```

### 2. .zshrc 설정
```bash
## .zshrc 편집
nano ~/.zsrch

## alias 쪽에 추가
if [ -f ~/.alias ]; then
  source ~/.alias
fi

## .zshrc 적용
source ~/.zshrc
```

### Example
```bash
# Alias

## LSD Alias
alias ls='lsd'
alias ll='lsd -la'

## bat Alias
alias cat='bat --style=plain'
alias batp='bat --style=numbers,changes,header'

## bottom Alias
alias bottom='btm --theme nord'
```

