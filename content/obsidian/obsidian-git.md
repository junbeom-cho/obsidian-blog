---
tags:
- Extension
- Obsidian
- git
title:
aliases:
description:
date:
publish: false
---

# Obsidian git
## Purpose
- Obsidian Vault의 효과적이고 체계적인 관리를 위한 플러그인
- git을 이용해 github 등과 같은 Remote Repository에 저장

## Installation
### Download Plugin
Settings -> Community Plugins -> Browse -> git

## Usage


### Configuration
#### Automatic
##### Split timers for automatic commit and sync 
	ON

##### Aut commit-and-sync interval
	60

##### Auto commit after lastest commit
	ON


#### Commit Author
	[Name::junbeom-cho]
	[Email::dev.junbeom@gmail.com]

#### Pull
##### Pull on startup : on
## Option
### Automatic
#### Split timers for automatic commit and sync
커밋 주기와 푸시 주기를 따로 관리할지 결정 [추천::ON]
- 커밋은 자주해도 푸시를 가끔하여 GitHub 잔디 조절
`질문 : 어차피 커밋하고 푸시하면 잔디 빽빽해지는건 똑같은거 아닌가?`

#### Auto commit-and-sync interval
X분마다 자동으로 `add, commit, push`를 한 번에 실행 [추천::O(비활성화)]

#### Auto commit-and-sync after stopping file edits
작성을 멈춘 후 일정 시간이 지나면 자동으로 커밋[추천::OFF]

#### Auto commit-and-sync after latest commit
수동 커밋 시 자동 동기화 타이머 초기화 [추천::ON]

#### Auto push interval
깃허브 푸시 주기 [추천::30~60]

#### Auto pull interval
자동 pull 주기 [추천::5~10]

#### Auto commit-and-sync only staged files
git add가 된 파일만 커밋 대상으로 삼을지 결정 [추천::OFF]

#### Specify custom commit message
자동 커밋 때마다 메시지를 입력하는 팝업

#### Commit message on auto commit-and-sync
자동 커밋 시 사용할 메시지 형식
`vault vackup: {{date}}`

### Commit
#### Commit message on manual commit
사용자가 직접 커밋 버튼 누르면 사용되는 기본 메시지

#### Commit message script
AI 툴이나 외부 스크립트를 이용해 커밋을 작성할 때 사용

#### {{data}} placeholder format
메시지에 들어갈 날짜 형식 지정

#### {{hostname}} placeholder replacement
어떤 기기에서 커밋했는지 추척

#### List filenamed affected
어떤 파일이 수정되었는지 커밋 본문에 남김

### Pull
#### Merge strategy
원격 저장소의 내용을 가져올 때 기본 `Merge`를 사용할지 결정

#### Pull on startup
Obsidian이 켜지면 최신 내용 가져오기

#### Push/Pull on commit-and-sync
자동 커밋 시점에 푸시와 풀을 동시에 할지 선택

### Commit-and-sync
#### Push on commit-and-sync
커밋이 완료된 직후에 바로 Push를 할지 결정

#### Pull on commit-and-sync
커밋과 푸시를 하기 전에 원격 저장소에서 최신 내용을 Pull 해올지 결정

### Hunk management
#### Signs
에디터의 왼쪽 줄 번호 옆에 색상 마커 표시

#### Hunk commands
특정 변경 부분만 골라서 git 명령어를 실행할 수 있는 기능 추가

#### Status bar with summary of line changes
Obsidian 우측 하단 상태 표시줄에 변경 내역 요약을 표시

### Line author information
#### Show commit authoring information next to each line
누가, 언제 이 줄을 수정했는지 표시

### History view
#### Show Author
히스토리 뷰에서 커밋한 사람의 이름을 보여줄지 결정

#### Show Data
커밋된 날짜를 보여줄지 결정

### Source control view
#### Automatically refresh source control view on file chages
파일을 수정할 때마다 왼쪽 git 소스 제어 창의 변경 목록 자동 갱신

#### Source control view refresh interval
자동 갱신 주기를 밀리초(ms) 단위로 설정

### Miscellaneous
#### Diff view style
파일의 변경 내용을 비교해서 볼 때의 스타일 결정

#### Disable information notification
Git 작업이 성공했을 때 나오는 안내 알림을 끈다.

#### Disable error notification
Git 작업 중 오류가 발생했을 때의 알림을 끈다.

#### Hide notifications for no changes
커밋이나 푸시를 할 내용이 없을 때 나타나는 알림 숨김

#### Show status bar
하단 상태 표시줄에 Git 관련 정보를 보여준다.

#### File menu integration
파일 탐색기에서 파일을 우클릭 했을 때 git 명령어를 사용할 수 있다.

#### Show branch status bar
현재 내가 어떤 브랜치에서 작업 중인지 상태 표시줄에 띄워준다.

#### Show the count of modified files in the status bar
현재 수정되었지만 아직 커밋되지 않은 파일이 총 몇 개인지 상태 표시줄에 숫자로 표시

### Commit author
#### Author name for commit
커밋 작성자의 이름

#### Author email for commit
커밋 작성자의 이메일

### Advanced
#### Update submodules
커밋, 푸시, 풀 작업을 할 때 서브모듈도 함께 처리할지 결정
- 대부분의 경우 신경쓸 필요 없음

#### Custom Git Binary path
시스템 환경 변수에 등록된 기본 Git이 아닌 특정 경로에 설치된 Git을 사용해야할 때 입력

#### Additional environment Variables
Git 실행 시 필요한 추가 환경 변수`KEY=VALUE`를 정의

#### Additional PATH environment variable paths
Git 실행 시 참조할 추가적인 시스템 경로 지정

#### Custom base path
Obsidian  보관함의 루트가 아닌 특정 하위 폴더가 Git 저장소일 때 사용

#### Custom Git directory path
Git의 메타데이터 폴더인 `.git`의 이름을 다른 것으로 변경해서 사용 중일 때 설정

#### Disable on this device
기기 간 동기화 비활성화
