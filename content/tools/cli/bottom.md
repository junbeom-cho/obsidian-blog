---
tags:
  - CLI
  - Monitoring
title:
aliases:
date: 2026.03.17
publish: true
---
>[!summary]
>Terminal에서 하드웨어의 CPU, Ram 사용량 등의 정보를 모니터링할 수 있는 CLI 툴 bottom의 설치 및 사용법을 정리했습니다.


## Overview
`btop`의 대체, 화려한 `btop` 대비 깔끔하고 가벼운 모니터링 CLI 툴
- [[btop]]

## Requirements
- [[homebrew]]
- [[scoop]]

## Setup
### Installation
#### macOS / Linux
```shell
brew install bottom
```

#### Windows
```bash
scoop install bottom
```

## Usage

```bash
btm
```

### example
![[cli-tool-btm-sample.png]]

## References
- [공식 GitHub](https://github.com/clementtsang/bottom)