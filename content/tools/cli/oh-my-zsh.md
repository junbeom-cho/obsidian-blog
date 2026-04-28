---
tags:
  - Shell
  - CLI
  - zsh
  - oh-my-zsh
title: oh-my-zsh
aliases:
  - oh-my-zsh
description: zsh 통합 관리 툴인 oh-my-zsh 설치 및 사용법
date: 2026.03.18
publish: true
---
>[!summary] 
>zsh 통합 설정 프레임워크인 **oh-my-zsh**의 설정, 설치 및 사용법에 대해서 정리했습니다.


## Overview
[[zsh]] 쉘을 꾸미고 통합 관리하기 위한 CLI 툴

## Setup
### Installation
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Configuration
#### Theme
##### [[powerlevel10k]]
- 마음대로 커스터마이징할 수 있는 테마, 자세한 설정법은 링크 참고

## Usage
### Management Version
```bash
# Check Version
omz version

# Update Version
omz update
```

>[!note]
>새로운 버전이 생기면 업데이트할지 물어봐서 신경안써도 된다.

## References
- [공식 GitHub](https://github.com/ohmyzsh/ohmyzsh)
- [공식 Docs](https://github.com/ohmyzsh/ohmyzsh/wiki)
