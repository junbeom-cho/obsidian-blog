---
tags:
  - Uptime-Kuma
  - Self-Hosting
  - Monitoring
title: Uptime Kuma Maintenance
aliases:
  - Uptime Kuma Maintenance
date: 2026.04.04
publish: true
---
>[!summary]
>**Uptime Kuma**의 유지보수 관리 기능인 Schedule Maintenance 설정에 대해서 정리했습니다.

## Schedule Maintenance
시스템을 점검할 것을 미리 설정하여 사용자에게 **DOWN**이 아님을 보여주고 통계에도 영향을 주지 않는다.

![[uptime-kuma-schedule-maintenance.png]]

### Options
| Option            | Description                        |
| ----------------- | ---------------------------------- |
| Title             | 일정 제목                              |
| Description       | 일정에 대한 설명 (Markdown 지원)            |
| Affected Monitors | 일정의 영향을 받는 모니터 정하기                 |
| Status Pages      | 어떤 Status Page에 일정 관련 상태 표시를 할지 설정 |
| Date and Time     | 일정 시간 설정                           |

![[uptime-kuma-obsidian-blog-maintenance.png]]