---
tags:
  - Windows
title: Windows Capture Error
aliases:
  - Windows Capture Error
description: Windows의 캡쳐 기능을 단축키로 실행시킬 때 안되는 이슈
date: 2026.03.29
publish: true
---
>[!error] 에러 내용
>Windows의 캡쳐 도구 기능을 `Windows + Shift + s` 단축키로 실행시킬 때 작동이 안되는 에러가 발생

## 해결
### 캡쳐 도구 초기화
1. **설정** > **앱** > **설치된 앱** > **캡쳐 도구** > **고급 옵션**으로 이동
2. `초기화` 클릭


### 앱 재설치
1. **Windows Terminal** 실행
2. 명령어를 사용해 캡쳐 도구 삭제
```powershell
Get-AppxPackage Microsoft.ScreenSketch | Remove-AppxPackage
```
3. PC 재부팅
4. **Microsoft Store** 앱에서 캡쳐 도구 재설치
