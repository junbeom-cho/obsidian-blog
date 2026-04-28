---
tags:
  - CLI
title: OpenSSL
aliases:
  - OpenSSL
description: API-KEY, TOKEN 등 보안이 중요한 암호를 생성해주는 CLI 툴 openssl의 설치 및 사용법
date: 2026.03.18
publish: true
---
>[!summary]
>비밀번호 생성 도구인 **OpenSSL**의 설정, 설치 및 사용법에 대해서 정리했습니다.


## Overview
**APIKEY**, **TOKEN**과 같은 복잡하고 중요한 암호를 생성하기 위한 CLI 툴

## Installation
### macOS / Linux
```bash
brew install openssl@3
```
- 3.5가 최신이지만 안정적인 3 선택

## Usage
### 암호 생성
```bash
openssl rand <난수 생성 방식> <생성 길이>

# Example
openssl rand -base64 32
```

#### 난수 생성 방식
 - `-base64`
 - `-hex`

### 파일 암호화 및 복호화
```bash
# 1. 파일 암호화
openssl enc <암호화 알고리즘> -salt -in <target.txt> -out target.enc

# 2. 파일 복호화
openssl enc <암호화 알고리즘> -d -in <target.enc> -out target.txt
```

#### 암호화 알고리즘
- `-aes-256-cbc` : 가장 대중적이고 강력함

### 해시 값 계산
```bash
# 1. 파일의 SHA256 해시값 확인
openssl dgst <해시 알고리즘> <filename.txt>

# 2. 여러 파일의 해시값 동시 확인
openssl <해시 알고리즘> *
```

#### 해시 알고리즘
- `-sha256`

### 키 쌍 생성 및 관리
```bash
# 1. RSA 개인키 생성
openssl genrsa -out <private.key> <bit>

# 2. 개인키에서 공개키(public key) 추출
openssl rsa -in <private.key> -pubout -out <public.key>
```

### SSL/TLS 인증서 관련
```bash
# 1. CSR(인증서 서명 요청서) 생성
openssl req -new -key private.key -out request.csr

# 2. 365일짜리 자체 서명 인증서(Self-signed) 생성
openssl x509 -req -days 365 -in request.csr -signkey private.eky -out certificate.crt
```

## References
- [공식 GitHub](https://github.com/openssl/openssl)
- [공식 Docs](https://docs.openssl.org/master/man7/ossl-guide-introduction/)