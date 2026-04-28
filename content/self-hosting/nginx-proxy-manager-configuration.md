---
tags:
- Server
- NginxProxyManager
title:
aliases:
description:
date:
publish: false
---

# Nginx Proxy Manager Configuration
## 개요

## Proxy Host
### Option
#### Basic Option
##### Cache Assets
이미지, CSS, 자바스크립트 등 자주 변하지 않는 파일을 임시로 저장
	장점 : 웹사이트의 반응 시간이 조금 올라감
	단점 : 수정해도 반영이 느림
[필수 여부::N]

##### Block Common Exploits
SQL 인젝션, 스크립트 삽입 공격 등 웹에서 흔히 발생하는 악의적인 공격 패턴을 미리 차단
[필수 여부::Y]

##### Websockets Support
브라우저와 서버가 끊긴지 않고 계속 연결되어 실시간으로 데이터를 주고 받음
	실시간 업데이트가 필요한 서비스는 켜야함
[필수 여부::N]

#### SSL Option
##### Force SSL
http:// 로 접속하더라도 자동으로 https:// 로 주소를 바꿔서 연결해주는 기능
[필수 여부::Y]

##### HTTP/2 Support
웹 통신의 최신 규격 중 하나인 HTTP/2를 활성화한다. 
	장점 : 여러 파일을 동시에 받아서 빠름
	단점 : 패킷 유실 시 전체 연결이 끊겨서 불안정하면 사용 안하는게 좋음
[필수 여부::N]

##### HSTS Enabled
웹 브라우저에게 무조건 HTTPS로만 접속하도록 강력한 보안 헤더를 보냄
	해킹 위험이 큰 외부 인터넷에 서비스를 공개할 때 켬
[필수 여부::N]

##### HSTS Sub-domains
HSTS 설정을 현재 도메인뿐만 아니라 그 아래 모든 서브도메인에 적용
[필수 여부::N]



## Certification
