---
tags:
  - Server
  - Security
  - SSH
title: SSH
aliases:
  - SSH
description:
date:
publish: false
---
# SSH


## Commands
### SSH 키 생성

```bash
ssh-keygen
```
#### option


### SSH 접속

```bash
## config에 설정된 서버
ssh <Host-Alias>

## config에 설정되어있지 않은 서버
ssh <UserName>@<ServerIP or ServerName>
```
#### option

### SSH키 서버 등록

```bash
ssh-copy-id <HostAlias>
```

