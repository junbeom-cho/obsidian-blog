---
tags:
- Password
- Application
title:
aliases:
description:
date:
publish: false
---

# VaultWarden

## Introduction
- `bitwarden` 을 *RUST* 언어로 작성하여 훨씬 빠르고 유료 서비스를 무료로 사용할 수 있음.

## Configuration
### compose 설정
```yaml
environment:
	- ADMIN_TOKEN=${ADMIN_TOKEN}
	- DOMAIN=your_vault_domain
	- SSO_AUTHORITY=your_authentik_domain/application/o/[slugs]/
```
- *slugs*는 Authentik에서 애플리케이션 상세정보의 슬러그명이다.
- *ADMIN_TOKEN*은 Hashing을 진행한 후 `.env`에 설정한다.
	- `docker exec -it vaultwarden /vaultwarden hash --password 'your_admin_token'`



```plain
{
  // [기본 설정]
  "domain": "https://vault.junbeom.work", // 서비스가 운영되는 실제 공인 도메인 주소 (초대 링크나 SSO 리다이렉트의 기준)
  "sends_allowed": true, // Bitwarden Send 기능(텍스트/파일 보안 공유) 활성화 여부
  "disable_icon_download": false, // 저장된 사이트의 파비콘(아이콘)을 서버가 다운로드하여 보여줄지 여부 (false=다운로드 함)
  "reload_templates": false, // HTML 템플릿 실시간 로딩 (개발용, 운영 시 false 권장)
  "log_timestamp_format": "%Y-%m-%d %H:%M:%S.%3f", // 로그 시간 표시 형식

  // [회원가입 및 접근 제어]
  "signups_allowed": true, // 누구나 회원가입 가능 여부 (혼자 쓴다면 반드시 false로 변경 권장)
  "signups_verify": false, // 회원가입 시 이메일 인증 강제 여부 (false면 인증 없이 가입됨)
  "signups_verify_resend_time": 3600, // 이메일 인증 재발송 대기 시간 (초)
  "signups_verify_resend_limit": 6, // 이메일 인증 재발송 최대 횟수
  "invitations_allowed": true, // 기존 사용자가 타인을 초대할 수 있는지 여부
  "emergency_access_allowed": true, // 비상 접근(내가 죽거나 접속 불가 시 지정인이 금고 열람) 기능 허용
  "email_change_allowed": true, // 사용자가 자신의 이메일 주소를 변경할 수 있는지 여부

  // [보안 및 암호화]
  "password_iterations": 600000, // PBKDF2 암호화 반복 횟수 (Argon2 사용 시 무시될 수 있으나 기본값으로 안전함)
  "password_hints_allowed": true, // 비밀번호 힌트 메일 발송 허용 여부
  "show_password_hint": false, // 힌트를 웹에 바로 보여줄지 여부 (false 권장)
  "admin_token": "[숨김처리됨]", // /admin 페이지 접속을 위한 관리자 비밀번호의 해시값 (절대 유출 금지)
  "admin_session_lifetime": 20, // 관리자 페이지 로그인 유지 시간 (분)

  // [네트워크 및 성능]
  "ip_header": "X-Real-IP", // 프록시(NPM) 뒤에 있을 때 실제 사용자 IP를 식별하는 헤더
  "http_request_block_non_global_ips": true, // 서버가 내부망(사설 IP)으로 요청 보내는 것을 차단 (SSRF 보안 방지)
  "dns_prefer_ipv6": false, // DNS 조회 시 IPv6를 우선할지 여부
  "icon_redirect_code": 302, // 아이콘 리다이렉트 HTTP 상태 코드
  "icon_cache_ttl": 2592000, // 아이콘 캐시 유지 시간 (초, 30일)
  "icon_cache_negttl": 259200, // 아이콘 다운로드 실패 시 재시도 대기 시간 (초, 3일)
  "icon_download_timeout": 10, // 아이콘 다운로드 타임아웃 (초)

  // [SSO - Authentik 연동 설정] (현재 문제 발생 지점)
  "sso_enabled": true, // SSO 로그인 기능 활성화
  "sso_only": true, // ⚠️ 중요: 이메일/비밀번호 로그인을 막고 SSO로만 로그인 강제 (SSO 고장 시 접속 불가 원인)
  "sso_signups_match_email": true, // SSO 이메일과 기존 계정 이메일이 같으면 자동 연결
  "sso_allow_unknown_email_verification": false, // 알 수 없는 이메일의 자동 인증 허용 안 함
  "sso_client_id": "3PWHN7Ibe3lXOzS81XyTNDUNAilaRccc9aTwVDxW", // Authentik에서 발급받은 Client ID
  "sso_client_secret": "[숨김처리됨]", // Authentik에서 발급받은 Secret Key (유출 주의)
  "sso_authority": "https://auth.junbeom.work/application/o/vault-warden/", // 인증 서버(Authentik) 주소 (Issuer)
  "sso_scopes": "openid email profile offline_access", // 요청할 권한 범위
  "sso_pkce": true, // 보안 강화된 PKCE 방식 사용 (Authentik 설정과 일치해야 함)
  "sso_callback_path": "https://vault.junbeom.work/identity/connect/oidc-signin", // 인증 후 되돌아올 주소 (Redirect URI)

  // [SMTP - 이메일 발송 설정] (Resend 사용 중)
  "_enable_smtp": true, // 이메일 기능 활성화
  "use_sendmail": false, // 시스템 sendmail 대신 SMTP 사용
  "smtp_host": "smtp.resend.com", // SMTP 서버 주소
  "smtp_security": "starttls", // 보안 연결 방식
  "smtp_port": 587, // 포트 번호
  "smtp_from": "vault@junbeom.work", // 발송자 이메일 주소
  "smtp_from_name": "Vaultwarden", // 발송자 이름
  "smtp_username": "resend", // Resend 아이디 (고정값)
  "smtp_password": "[숨김처리됨]", // Resend API Key (유출 시 타인이 이메일 발송 가능)
  "smtp_timeout": 15, // 이메일 서버 연결 타임아웃 (초)
  "smtp_embed_images": true, // 이메일 내 이미지를 본문에 포함

  // [2단계 인증 (2FA)]
  "_enable_yubico": true, // YubiKey 하드웨어 키 지원
  "_enable_duo": true, // Duo Security 지원
  "_enable_email_2fa": false, // 이메일을 통한 2단계 인증 코드 발송 기능 (현재 꺼짐)
  "email_token_size": 6, // 이메일 인증 코드 자리수
  "email_expiration_time": 600, // 이메일 인증 코드 유효 시간 (초)
  "email_attempts_limit": 3, // 이메일 인증 시도 제한 횟수
  "disable_2fa_remember": false, // '이 브라우저 기억하기' 기능 비활성화 여부
  "authenticator_disable_time_drift": false, // TOTP 시간 오차 허용 비활성화
  "require_device_email": false // 새 기기 로그인 시 이메일 인증 강제 여부
}
```