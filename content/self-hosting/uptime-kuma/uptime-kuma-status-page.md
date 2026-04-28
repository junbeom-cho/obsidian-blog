---
tags:
  - Uptime-Kuma
  - Monitoring
  - Self-Hosting
title: Uptime Kuma Status Page
aliases:
  - Uptime Kuma Status Page
date: 2026.04.04
publish: true
---
>[!summary]
>**Uptime Kuma**의 일반 유저용 대시보드인 Status Page 설정 및 사용법에 대해서 정리했습니다.

## Status Page
- 사용자에게 보여주길 원하는 모니터를 선택해 상태만 보여줄 수 있는 대시보드
- [예시 페이지](https://kuma.junbeom.work/status/blog-example)

### Add New Status Page
![[uptime-kuma-add-status-page.png]]
- **Name** : Status Page 명
- **Slug** : 해당 Status Page 접속 주소

### Edit Status Page
![[uptime-kuma-edit-status-page.png]]

#### Options
- **Slug** : Status Page 주소
- **Title** : Status Page 명
- **Description** : Status Page 설명 (Markdown 지원)
- **Footer Text** : Status Page Footer 설정 (Markdown 지원)
-  **Refresh Interval** : 모니터 상태 새로고침 주기
- **Theme** : Status Page 테마 설정 (**Light** or **Dark**)
- **Show Tags** : 모니터의 태그 표시 여부 설정
- **Show Powered By** : `Powered by Uptime-Kuma` 문구 표시 여부 설정
- **Show Certificate Expiry** : SSL/TLS 인증 만료 정보 표시 여부
- **Show Only Last Heartbeat** : 모니터 상태를 `UP` 비율이 아닌 살았는지 죽었는지만 표시
- **Domain Names** : Status Page를 다른 도메인 이름으로 지정할 때 사용
- **RSS Title** : RSS에 뜨는 이름 설정 (사용 안해봐서 정확히 모름)
- **Analytics Type** : Status Page를 분석하기 위한 Tool 연결
- **Custom CSS** : Status Page에 적용할 CSS

>[!caution]
>LaTeX 문법이나 Callout 등 특정 문법은 사용 안되는 것으로 보인다.

