---
tags:
  - Markdown
title: Standard Syntax
aliases:
  - Standard Syntax
description: Markdown의 표준 문법을 정리
date: 2026.03.26
publish: true
---
>[!summary]
>Markdown을 사용할 때 기본적으로 사용할 수 있는 문법에 대해서 정리했습니다.


## 제목
HTML의 `<h1> ~ <h6>` 태그에 해당하고 보통 `##` (h2) 부터 시작한다.

```markdown
# h1 (문서의 제목/ 1회 사용)
## h2 (대분류)
### h3 (중분류)
#### h4 (소분류)
##### h5
###### h6
```

# h1
## h2
### h3
#### h4
##### h5
###### h6

## 텍스트 강조

```markdown
**굵게(Bold)**
*기울임(Italic)*
~~취소선(Strikethrough)~~
***~~여러가지 조합 가능~~***
```

**굵게(Bold)**
*기울임(Italic)*
~~취소선(Strikethrough)~~
***~~여러가지 조합 가능~~***

## 목록

### 순서가 없는 목록

```markdown
- 항목 1
	- 항목 1-1
* 항목 2
```

- 항목 1
	- 항목 1-1
* 항목 2

### 순서가 있는 목록

```markdown
1. 첫 번째
2. 두 번째
	1. 하위 첫 번째
```

1. 첫 번째
2. 두 번째
	1. 하위 첫 번째

## 인용구

```markdown
> 인용할 내용을 작성
>> 중첩 인용도 가능
```

> 인용할 내용을 작성
> > 중첩 인용도 가능

## 구분선

```markdown
---
```

---

## 링크 및 이미지

```markdown
# 링크
[구글](https://google.com)

# 이미지
![Obsidian](https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/obsidian.svg)
```

[구글](https://google.com)

![Obsidian|66](https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/obsidian.svg)


## 코드

```
# 단일 행
\`print("Hello World!)`

# 여러 행
\```
public class Main{
	public static void main(String[] args) {
		System.out.println("Hello World!");
	}
}
\```
```
- \은 제거하고 사용
- 다중행에서 위쪽 \`옆에 언어 이름을 작성하면 **syntax-highlighting** 지원

`print("Hello World!")`

```java
public class Main{
	public static void main(String[] args) {
		System.out.println("Hello World!");
	}
}
```

## Table
표를 만듭니다.
```markdown
| 제목 1 | 제목 2 |
| --- | --- |
| 내용 1 | 내용 2 |
```

| 제목1 | 제목2 |
| --- | --- |
| 내용1 | 내용2 |
