---
tags:
  - Server
  - Security
title:
aliases:
date:
publish: false
---

# CrowdSec

## Purpose
- 전 세계의 서버와 공유하는 봇 차단 서비스

## Installation
### CrowdSec
#### docker-compose

#### 저장소 등록
```bash
curl -s https://packagecloud.io/install/repositories/crowdsec/crowdsec/script.deb.sh | sudo bash
```

#### API키 발급
```bash
docker exec -it npmplus_crowdsec cscli bouncers add host-firewall
```
- firewall 설치할 때 필요


### Bouncer
#### 1. Install with apt
```bash
sudo apt install crowdsec-firewall-bouncer-iptables
```

#### 2. Add API Key
```bash
sudo nano /etc/crowdsec/bouncers/crowdsec-firewall-bouncer.yaml
```
- 발급받은 API키 삽입
- CrowdSec 포트로 수정

#### Status Check
##### Restart. Bouncer
```bash
# Restart Bouncer
sudo systemctl restart crowdsec-firewall-bouncer

# 서버가 재부팅되어도 자동으로 켜지도록 설정
sudo systemctl enable crowdsec-firewall-bouncer
```

##### Check Connetion Status
```bash
docker exec -it npmplus_crowdsec cscli bouncers list
```
- `host-firewall` 항목의 `Valid` 부분이 `Check` or `true` 로 뜨면 정상
- `Last API pull` 시간이 방금 전으로 나오면  완벽

##### Check Status Firewall
```bash
sudo systemctl status crowdsec-firewall-bouncer
```
- 초록색으로 `active(running)` 떠 있어야함


## Usage
### Check Denied List
```bash
docker exec -it npmplus_crowdsec cscli decisions list
```

### Unset Denied IP
```bash
docker exec -it npmplus_crowdsec cscli decisions delete -i 차단된_IP
```

