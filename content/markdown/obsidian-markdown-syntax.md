---
tags:
  - Markdown
  - Obsidian
title: Obsidian Syntax
aliases:
  - Obsidian Syntax
description: Obsidian에서 사용할 수 있는 Markdown Syntax
date: 2026.03.27
publish: true
---
>[!summary]
>**Obsidian**에서 사용할 수 있는 Markdown 문법에 대해서 정리했습니다.

## Wikilinks
파일 시스템 경로를 신경쓰지 않고 문서의 파일명으로 간단하게 연결할 수 있다.
- 백링크라고도 한다.
```markdown
# 기본 링크
[[markdown-standard-syntax]]

# Alias을 이용한 링크
[[markdown-standard-syntax|Standard Syntax]]

# 특정 헤더로 연결
[[markdown-standard-syntax#인용구|Markdown 인용구 사용]]
```

[[markdown-standard-syntax]]  
[[markdown-standard-syntax|Standard Syntax]]  
[[markdown-standard-syntax#인용구|Markdown 인용구 사용]]  
  
>[!question] Alias란?
>obsidian 노트 내에 속성을 이용해서 노트의 별칭을 설정할 수 있다.
  
## CheckList
체크리스트를 만들어 할 일을 표시한다.
```markdown
- [] todo1
- [x] todo2
```
- [ ] todo1
- [x] todo2


## Transclusion
다른 노트의 내용이나 이미지를 현재 문서에 삽입하여 보여준다.

```markdown
# Note
![[markdown-standard-syntax|Standard Syntax]]

# Image
![[fastfetch-sample.png]]
```


![[01-blog/markdown/index|index]]

![[cli-tool-fastfetch-sample.png]]


# Callouts
시각적으로 눈에 띄는 박스를 다양한 타입으로 생성할 수 있습니다.
- -를 붙여서 박스 내용을 접을 수 있습니다.
```markdown
>[!info] 콜아웃 제목
>여기에 강조할 내용을 작성합니다.

>[!bug]- 에러 로그
>엄청 길고 복잡한 에러 로그 내용
```

>[!info] 콜아웃 제목
>여기에 강조할 내용을 작성합니다.

>[!bug]- 에러 로그
>엄청 길고 복잡한 에러 로그 내용
  
### Callout Types
- Note
>[!note]
>note sample 
  
- SeeAlso
>[!seealso]
>seealso sample
  
- Abstract
>[!abstract]
>abstract sample
  
- Summary
>[!summary]
>summary sample
  
- Info
>[!info]
>info sample
  
- Todo
>[!todo]
>todo sample
  
- Important
>[!important]
>important sample

- Tip
>[!tip]
>tip sample
  
- Hint
>[!hint]
>hint sample
  
- Success
>[!success]
>success sample
  
- Check
>[!check]
>check sample
  
- Done
>[!done]
>done sample
  
- Question
>[!question]
>question sample
  
- Help                                                                   
>[!help]
>help sample
  
- FaQ
>[!faq]
>faq sample
  
- Warning
>[!warning]
>warning sample
  
- Caution
>[!caution]
>caution sample
  
- Attention
>[!attention]
>attention sample
  
- Failure
>[!failure]
>failure sample
  
- Fail
>[!fail]
>fail sample
  
- Missing
>[!missing]
>missing sample
  
- Danger
>[!danger]
>danger sample
  
- Error
>[!error]
>error sample
  
- Bug
>[!bug]
>bug sample
  
- Example
>[!example]
>example sample
  
- Quote
>[!quote]
>quote sample
  
- Cite
>[!cite]
>cite sample
