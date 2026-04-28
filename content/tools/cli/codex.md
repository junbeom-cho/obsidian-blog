---
tags:
  - AI
title:
aliases:
date:
publish: false
---
# Codex

## Introduction
- OpenAI 기반 코딩 에이전트로, 터미널/워크스페이스에서 코드 작성, 수정, 실행, 리뷰를 보조하는 도구
- 로컬 프로젝트 문맥을 읽고 명령 실행 + 파일 편집을 통해 실제 작업까지 수행 가능
- 단순 답변형 챗봇보다 "코드 작업 자동화"에 초점이 맞춰져 있음

## Installation
```bash
# Node.js 설치 확인(권장: LTS)
node -v
npm -v

# Codex CLI 설치
npm install -g @openai/codex

# 로그인/인증
codex login
```
- 설치 후 `codex --help`로 명령어 확인

## Usage
```bash
# 현재 폴더에서 Codex 실행
codex
```
- 자주 쓰는 흐름
  - 기능 요청: "이 버그 원인 찾고 고쳐줘"
  - 작업 실행: 테스트/빌드/린트 실행 및 실패 원인 분석
  - 코드 리뷰: 변경점 기준 위험 요소, 회귀 가능성 점검
- 실무 팁
  - 작업 전에 요구사항/제약(사용 언어, 프레임워크, 금지사항)을 먼저 전달
  - 결과물에 대해 "수정 파일 경로 + 핵심 변경 요약"을 함께 요청

## Configuration
- 프로젝트 루트에 `AGENTS.md`를 두고 에이전트 행동 규칙 정의
  - 역할, 말투, 금지사항, 리뷰 기준, 편집 규칙 등 명시
- `Codex.md` 같은 도구 문서를 만들어 반복 사용 명령/워크플로우를 노트화
- 권장 설정
  - 테스트 명령 고정: 예) `npm test`, `pytest`
  - 코드 스타일 고정: formatter/linter 규칙 사전 공유
  - 민감정보 보호: `.env`, API Key 파일은 직접 노출 금지
