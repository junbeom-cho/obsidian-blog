---
tags:
  - Obsidian
title: Quartz
aliases:
  - Quartz
description: obsidian을 Blog로 만들어주는 Quartz 프로젝트의 설치 및 사용법
date: 2026.03.18
publish: true
---
>[!summary] 
>Obsidian을 Blog로 만들 수 있는 프로젝트인 **Quartz**의 설치 및 초기 설정에 대해서 정리했습니다.


## Overview
- Obsidian의 노트 내용을 Blog 형태로 만들어 배포할 수 있게 해주는 셋업 툴
- Obsidian에 최적화되어 백링크, Graph View 등을 지원한다.

## Requirements
- [[npm]]

## Setup
### Installation
#### Clone Repository
```bash
git clone https://github.com/jackyzha0/quartz.git
```

#### Install npm Dependency
```bash
npm install
```

#### Create Quartz
```bash
npx create quartz
```
- 실행 후 나오는 프롬프트에서 `Empty Quartz`, `Shortest Path` 선택

### Configuration
#### Symbolic Link
```bash
rm -rf content

ln -s ~/<obsidian-vault-path> content 
```
- Symbolic Link를 사용해서 obsidian-vault 저장소와 따로 관리하면서 내용은 동기화
- 적용 확인 : `ll` 했을 때 `content => /home/~~~` 이런 식으로 나오면 적용 성공

>[!note]
> Symbolic Link를 사용하는게 필수는 아님

## Usage
### Local Preview
```bash
npx quartz build --serve
```

### Build
```bash
npx quartz build
```
- `index.md`가 필수로 있어야 함.

>[!note] index.md가 필수인 이유
>md를 html로 변환하는 원리이므로 첫 페이지인 index.html이 필요함

### Update
```bash
npx quartz update
```

## References
- [공식 GitHub](https://github.com/jackyzha0/quartz)
- [공식 Docs](https://quartz.jzhao.xyz/)