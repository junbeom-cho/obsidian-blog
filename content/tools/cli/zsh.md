---
tags:
  - zsh
  - Shell
title: zsh
aliases:
description: Shell의 한 종류 zsh의 설치 및 사용법
date: 2026.03.18
publish: false
---
## Overview
- `Bash`, `ksh`, `tcsh`의 장점을 결합한 강력한 유닉스 기반 Shell
- macOS의 기본 Shell

## Setup
### Installation
#### Linux
```bash
apt install zsh
```

#### macOS
```bash
brew install zsh
```

### Configuration
#### [[oh-my-zsh]]
- zsh 환경을 통합하여 쉽게 관리할 수 있도록 해주는 CLI 툴

#### Plugins
##### zsh-autosuggestions
```zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
- Shell에서 입력한 명령어를 저장하여 **자동완성**을 지원한다.

##### zsh-syntax-highlighting
```zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
- Shell에서 입력하는 명령어에 **syntax-highlighting**을 적용하여 명령어를 제대로 사용하는지 확인시켜준다.

###### Configuration
```zsh
# .zshrc 파일 에디터 열기
nano ~/.zshrc

# .zshrc 파일 내부에 수정
plugins= (
		git
		zsh-autosuggestions
		zsh-syntax-highlighting
		)

# .zshrc 파일 수정사항 적용
source ~/.zshrc
```

## References
- [공식 Docs](https://zsh.sourceforge.io/Doc/)