---
tags:
  - Uptime-Kuma
  - Self-Hosting
  - Monitoring
title: Uptime Kuma Monitoring
aliases:
  - Uptime Kuma Monitoring
date: 2026.04.04
publish: true
---
>[!summary]
>**Uptime Kuma**의 모니터링 설정 및 사용법에 대해서 정리했습니다.


## Add Monitor
**Uptime Kuma**에서 모니터링할 대상을 설정하여 추가한다.
![[uptime-kuma-new-monitor.png]]

### General Options 
![[uptime-kuma-general-option.png]]
- **Monitor Type** : 모니터링 방법
- **Friendly Name** : 별칭
- **Heartbeat Interval** : 상태 확인 주기
- **Retries** : `DOWN`시 재시도 횟수
- **Request Timeout** : 상태 확인 요청 타임아웃
- **Resend Notification if Down X times consecutively** : 서비스가 `X` 번 다운될 시 알림

>[!caution] 주의
>Monitor Type 별로 설정 가능 옵션이 변경될 수 있습니다. 위의 옵션은 HTTP(s) 요청 기준으로 작성하였습니다. 

#### Monitor Type
##### General Monitor Type
| Monitor Type                                      | Description                                                                      |
| ------------------------------------------------- | -------------------------------------------------------------------------------- |
| **HTTP(s)**                                           | 특정 URL로 HTTP 요청을 보내고 HTTP 상태 코드가 정상 범주인지 확인한다.                                   |
| **HTTP(s) - Keyword**                                 | 특정 URL로 HTTP 요청을 보내고 상태 코드를 받고 특정 Keyword가 HTML 상으로 나타나는지 확인한다.                  |
| **TCP Port**                                          | 특정 IP나 도메인의 포트가 열려있고 통신 가능한지 확인한다.                                               |
| **Ping**                                              | 대상 서버로 ICMP 패킷을 보내 서버가 살아서 응답하는지, 지연 시간은 얼마나 걸리는지 확인한다.                          |
| **DNS**                                               | 특정 도메인 이름이 올바른 IP 주소로 매핑되는지 확인한다.                                                |
| **Docker Container**                                  | 서버의 Docker 소켓과 연결하여 특정 컨테이너가 **Running** 상태인지 확인한다.                              |
| **HTTP(s) - Browser Engine (Chrome/Chromium) (Beta)** | HTTP 요청으로 코드를 받아오는 것을 넘어서 실제 브라우저에 자바스크립트를 모두 실행하고 렌더링을 마치는지 확인한다. (리소스가 많이 든다.) |

##### Special
| Monitor Type | Description                                                        |
| ------------ | ------------------------------------------------------------------ |
| **Group**    | Uptime Kuma의 모니터링 중인 설정들을 한 그룹으로 묶어서 상태를 확인할 수 있는 **Group**을 생성한다. |

##### Passive Monitor Type
| Monitor Type | Description                                                   |
| ------------ | ------------------------------------------------------------- |
| **Push**         | 대상 서비스가 Uptime Kuma로 신호를 보내는 방식으로 대상의 상태를 확인한다.               |
| **Manual**       | Uptime Kuma가 자동으로 상태를 확인하지 않고 관리자가 수동으로 **UP/DOWN** 상태를 변경한다. |

##### Specific Monitor Type
| Monitor Type                                 | Description                                                             |
| -------------------------------------------- | ----------------------------------------------------------------------- |
| **Globalping - Access global monitoring probes** | [Globalping](https://globalping.io/)을 활용하여 특정 국가에서 내 서버에 접속이 가능한지 확인한다. |
| **gRPC(s) - Keyword**                            | gRPC 프레임워크 기반의 마이크로서비스 API에 데이터를 요청하고 응답을 확인한다.                         |
| **HTTP(s) - Json Query**                         | API 응답으로 오는 JSON 데이터 구조를 파싱하여 특정 필드 값이 조건에 맞는지 확인한다.                    |
| **Kafka Producer**                               | **Kafka Producer**와 정상적으로 통신이 가능한지 확인한다.                                |
| **MQTT**                                         | **MQTT**와 정상적으로 통신이 가능한지 확인한다.                                          |
| **RabbitMQ**                                     | **RabbitMQ**정상적으로 통신이 가능한지 확인한다.                                        |
| **SMTP**                                         | 이메일 발송 서버가 포트를 열어두고 정상적으로 응답하는지 확인한다.                                   |
| **SNMP**                                         | 라우터, 스위치, NAS 등의 하드웨어 상태를 수집하는 SNMP 프로토콜 응답을 확인한다.                      |
| **Websocket Upgrade**                            | 웹소켓 서버의 핸드셰이크가 정상적으로 맺어지는지 확인한다.                                        |

##### Database Monitor Type
| Monitor Type         | Description                                         |
| -------------------- | --------------------------------------------------- |
| **Microsoft SQL Server** | **Microsoft SQL Server**에 접속하여 정상적으로 동작하고 있는지 확인한다. |
| **MongoDB**              | **MongoDB**에 접속하여 정상적으로 동작하고 있는지 확인한다.              |
| **MariaDB/MySQL**        | **MariaDB/MySQL**에 접속하여 정상적으로 동작하고 있는지 확인한다.        |
| **PostgreSQL**           | **PostgreSQL**에 접속하여 정상적으로 동작하고 있는지 확인한다.           |
| **Redis**                | **Redis**에 접속하여 정상적으로 동작하고 있는지 확인한다.                |
| **Radius**               | **Radius**에 접속하여 정상적으로 동작하고 있는지 확인한다.               |

##### Game Server
| Monitor Type      | Description                                  |
| ----------------- | -------------------------------------------- |
| **GameDig**           | **GameDig**를 통해 생성된 게임 서버가 정상적으로 동작하는지 확인한다. |
| **Steam Game Server** | **Steam Game Server**가 정상적으로 작동하는지 확인한다.     |

### Advanced Options
![[uptime-kuma-advanced-option.png]]

| Option                                      | Description                             |
| ------------------------------------------- | --------------------------------------- |
| **Certificate Expiry Notification**             | TSL/SSL의 인증서 만료일이 다가오면 알림을 보냅니다.        |
| **Domain Name Expiry Notification**             | 도메인 만료인이 다가오면 알림을 보냅니다.                 |
| **Ignore TSL/SSL errors for HTTPS websites**    | 대상 웹사이트의 HTTPS 인증서 오류를 무시하고 정상으로 간주합니다. |
| **Add the uptime_kuma_cachebuster parameter**   | URL 끝에 무작위 파라미터를 붙여 캐시를 우회합니다.          |
| **Upside Down Mode**                            | 상태 판단을 반대로 합니다.                         |
| **Max. Redirects**                              | 모니터링 시 리다이렉트 횟수를 제한합니다.                 |
| **Save HTTP Error Response for Notifications**  | HTTP 오류 시, 응답을 저장하여 알림 템플릿으로 씁니다.       |
| **Save HTTP Success Response for Notification** | HTTP 성공 시, 응답을 저장하여 알림 템플릿으로 씁니다.       |
| **Response Max Length (bytes)**                 | 저장할 HTTP 응답의 크기를 제한합니다.                 |
| **Accepted Status Code**                        | 정상으로 간주할 상태 코드를 지정합니다.                  |
| **IP Family**                                   | IP 체계를 지정합니다.                           |
| **Monitor Group**                               | 해당 모니터를 특정 그룹으로 지정합니다.                  |
| **Description**                                 | 해당 모니터의 메모를 작성합니다. (Markdown 지원)        |

#### Monitor Group
한 서비스가 실행되려면 여러 서비스가 정상적으로 동작해야할 때 사용한다.

![[uptime-kuma-mealie-group.png]]

>[!note] Group Example
>Mealie라는 서비스는 앱과 PostgreSQL이 정상적으로 구동되어야 되므로 앱과 DB를 Group으로 지정하면 두 서비스가 모두 정상일 때 Mealie라는 Group도 정상으로 표시된다.


### Tags

![[uptime-kuma-create-tags.png]]
![[uptime-kuma-tags.png]]

>[!note] Tags
>Tags를 지정해서 검색 시 같은 Tag만 모아보거나 서비스별 타입을 표시해 가시성을 확보할 수 있다.

### Notification
서비스의 상태가 변화할 때 원하는 방식으로 알림을 보내준다.
![[uptime-kuma-notifications-select.png]]

![[uptime-kuma-discord-webhook.png]]

>[!hint] Notificaiton
>Discord, Slack, SMS, Email 등 다양한 방법으로 알림을 받을 수 있어 협업과 즉각 조치에 용이하다.
>자세한 설정 : [[uptime-kuma-notification|Uptime Kuma Notification]]


## Monitoring
주기적으로 서비스의 상태를 확인하여 대시보드에 보여준다.
![[uptime-kuma-dockge-dashboard.png]]

