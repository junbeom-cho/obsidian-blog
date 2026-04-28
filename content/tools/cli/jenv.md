---
tags:
  - CLI
title:
aliases:
description:
date:
publish: false
---
# jenv

## Overview
- 여러 프로젝트에서 사용하는 자바의 버전관리
- 손쉬운 자바 버전 교체 

## 사용방법

### 1. 다운로드
```Bash
brew install jenv
```

### 2. zshrc 파일 설정
```Bash
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
```
- 파일 마지막에 추가
```Bash
source ~/.zshrc
```

### 3.  Java 버전 추가
```Bash
jenv add <Java 경로>
```
- 경로는 [[java]] 에서 확인

### 4. Java 버전 적용
```Bash
jenv local <version>
jenv global <version>
```


