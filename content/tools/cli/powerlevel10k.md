---
tags:
  - zsh
  - oh-my-zsh
  - Theme
title: Powerlevel10k
aliases:
  - Powerlevel10k
description: oh-my-zsh의 theme인 powerlevel10k 설치 및 설정법
date: 2026.03.18
publish: true
---
>[!summary]
>oh-my-zsh의 테마 중 하나인 **Powerlevel10k**의 설치, 설정 및 사용법에 대해서 정리했습니다.


## Overview
- [[oh-my-zsh]]의 theme로 쉽게 테마를 커스텀 및 설정할 수 있다.

## Insatllation
### macOS / Linux
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

## Configuration
### Start Configuration
#### zshrc 수정
```bash
nano ~/.zshrc

# 이렇게 수정
ZSH_THEME="powerlevel10k/powerlevel10k"

source ~/.zshrc
```
- shell 재시작하면 설정 시작
#### 재설정
```bash
p10k configure
```


### Configuration Process
#### Diamond Test
![[powerlevel10k-diamond-test.png]]

#### Lock Test
![[powerlevel10k-lock-test.png]]

#### Arrow Test
![[powerlevel10k-arrow-test.png]]

#### Point Test
![[powerlevel10k-point-test.png]]

#### Overlap Test
![[powerlevel10k-overlap-test.png]]

#### Prompt Style
![[powerlevel10k-prompt-style.png]]

#### Character Set
![[powerlevel10k-character-set.png]]
- Unicode 선택 (Icons 및 Style 선택 가능)

#### Time Form
![[powerlevel10k-time-form.png]]

#### Prompt Separators
![[powerlevel10k-prompt-separators.png]]

#### Prompt Heads
![[powerlevel10k-prompt-heads.png]]

#### Prompt Tails
![[powerlevel10k-prompt-tails.png]]

#### Prompt Height
![[powerlevel10k-prompt-height.png]]

#### Prompt Connection
![[powerlevel10k-prompt-connection.png]]

#### Prompt Frame
![[powerlevel10k-prompt-frame.png]]

#### Prompt Spacing
![[powerlevel10k-prompt-spacing.png]]

#### Icons
![[powerlevel10k-icons.png]]

#### Prompt Flow
![[powerlevel10k-prompt-flow.png]]

#### Transient Prompt
![[powerlevel10k-transient-prompt.png]]

#### Instant Prompt Mode
![[powerlevel10k-prompt-mode.png]]

#### Apply Changes
![[powerlevel10k-apply-changes.png]]

## References
- [공식 GitHub](https://github.com/romkatv/powerlevel10k)