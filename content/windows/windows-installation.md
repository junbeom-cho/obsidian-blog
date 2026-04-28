---
tags:
  - Windows
title: Windows Installation
aliases:
  - Windows Installation
description: Windows를 설치하는 과정 기록 및 방법 공유
date: 2026.03.29
publish: true
---
>[!summary]
>**Windows 11**을 설치하고 과정을 기록하고 공유합니다.

## Requirements
- 16GB 이상의 USB
- 인터넷이 연결된 PC (설치 USB 생성용)

## 1. Create Installation USB
### 1) Install Windows ISO
#### Windows 11 ISO 다운로드
- [마이크로소프트 공식 다운로드 페이지](https://www.microsoft.com/ko-kr/software-download/windows11)
![[windows-installation-1.png]]
- **Windows 11 (x64 디바이스용 다중 버전 ISO)** 선택 후 `지금 다운로드` 클릭

#### OS 언어 선택
![[windows-installation-2.png]]
- **한국어** 선택 후 `확인` 클릭

#### ISO 디스크 이미지 다운로드
![[windows-installation-3.png]]
- **64비트 다운로드** 후 `.iso` 파일 다운로드 확인

### 2) Install Rufus
>[!info] Rufus
>ISO 이미지를 사용하여 OS 설치 USB를 최적화해서 만들어주는 Windows 표준 OS 설치 USB 생성도구
>[Rufus 공식 다운로드 링크](https://rufus.ie/ko/)
- 현재 PC 버전에 맞는 rufus 설치

### 3) Create Installation USB
#### Setting Rufus
![[windows-rufus-configuration-1.png]]

- **장치**: Windows 부팅 USB를 선택합니다.
- **부팅 선택** : `선택`버튼을 클릭 후 [[#1) Install Windows ISO|Windows ISO 설치]]에서 설치한 ISO 디스크 이미지 선택

#### Windows 사용자 환경 설정
1. `시작`을  클릭하면 Windows 사용자 환경 설정 팝업이 뜬다.
2. 아래와 같이 설정한다.
![[windows-rufus-configuration-2.png]]
3. `OK` 클릭

## 2. Windows 11 Installation
### 1) BIOS 모드 진입
1. PC 전원을 끈다.
2. PC 전원을 키면서  바이오스 모드로 진입한다.
>[!tip] 바이오스 모드 진입 방법
>바이오스 모드는 부팅 후 특정 키를 누르면 되는데 메인보드 제조사 별로 다르다.
>**ASUS** : `F2` 또는 `DEL`
>**MSI** : `DEL`
>**GIGABYTE** : `DEL`
>**ASRock** : `F2` 또는 `DEL`

### 2) 부팅 설정
1. **Settings** 선택
2. **Bootings** 선택
3. **Boot Option #1**을 OS 설치 USB로 설정
4. **저장하고 종료** 선택
5. **변경 내용을 저장하고 재부팅** 선택

### 3) Windows 11 설치 설정
1. **언어 설정 선택** : 모두 **한국어(대한민국)** 설정 하고 `다음(N)` 클릭
2.  **키보드 설정 선택**: 기본으로 놔두고 `다음(N)` 클릭
3. **설치 옵션 선택** : 
	- **Windows 11 설치** 선택
	- **파일, 앱, 설정을 포함하여 모든 항목을 삭제하는 것에 동의합니다(A).** 선택
	- `다음(N)` 클릭
4. **제품 키** : 바로 입력해도 되고 `제품 키가 없습니다.` 선택 후 나중에 설정해도 상관없음.
5. **이미지 선택** : **Windows 11 Home** 선택 후 `다음(N)` 클릭
6. **관련 통지 및 사용 조건** : `동의(A)` 클릭
7. **Windows 11을 설치할 위치 선택** : 사용하지 않는 디스크는 모두 파티션 삭제하고 OS를 설치할 메인 디스크를 선택 후 `다음(N)` 클릭
>[!danger] 파티션 삭제 주의사항
>파티션은 기존 정보가 설치되어있는 디스크입니다. 원하는 것이 포멧 후 설치라면 모두 삭제해도 상관없지만 따로 정보를 백업해놓은 드라이브를 실수로 삭제하지 않도록 주의하세요!
8. **설치 준비 완료** : 선택 항목 확인 후 `설치(I)` 클릭

>[!success] Windows 설치 완료
>설치 버튼을 누른 후 기다리면 Windows 11 설치가 완료됩니다.
>이후 설정 및 최적화는 [[windows-configuration|Windows Configuration]] 에서 다루도록 하겠습니다.
