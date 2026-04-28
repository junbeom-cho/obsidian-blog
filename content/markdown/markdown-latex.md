---
tags:
  - Markdown
  - LaTeX
title: Markdown LaTeX
aliases:
  - Markdown LaTeX
description: Markdown에서 LaTeX 문법을 사용할 때 어떻게 사용하면 되는지 정리
date: 2026.04.02
publish: true
---
>[!summary]
>Markdown에서 **LaTeX 문법**을 사용할 때 어떤 방법들이 있는지 기록했습니다.

## Usage
Markdown에서 **LaTeX 문법**을 사용하여 수학 공식을 렌더링할 수 있다.

```markdown
$$ y = ax + b $$ # 여러 행으로 작성 가능
$y = 1$ # 단일 행 작성만 가능 (인라인)
```
$$ y = ax + b $$
$y=1$


### 기본 연산자 및 대수학
|    기능    |        LaTeX 문법         |           기호            |
| :------: | :---------------------: | :---------------------: |
|   사칙연산   |  `+, -, \times, \div`   |  $+, -, \times, \div$   |
|    분수    |     `\frac{x+y}{z}`     |     $\frac{x+y}{z}$     |
|   제곱근    | `\sqrt{x}, \sqrt[n]{x}` | $\sqrt{x}, \sqrt[n]{x}$ |
| 거듭제곱과 밑  |       `a^n, x_i`        |       $a^n, x_i$        |
|   부등호    |    `\neq, \le, \ge`     |    $\neq, \le, \ge$     |
|   절댓값    |     `\vert x \vert`     |     $\vert x \vert$     |
| 비례 / 근사치 |   `\propto, \approx`    |   $\propto, \approx$    |


### 미적분
|    기능    |               LaTeX 문법                |                   기호                   |
| :------: | :-----------------------------------: | :------------------------------------: |
|    극한    |      `\lim_{x \to \infty} f(x)`       |       $\lim_{x \to \infty} f(x)$       |
|   무한대    |               `\infty`                |                $\infty$                |
|    미분    |         `f'(x)\frac{dy}{dx}`          |         $f'(x)\dfrac{dy}{dx}$          |
|   편미분    |    `\frac{\partial f}{\partial x}`    |    $\frac{\partial f}{\partial x}$     |
| 적분 / 중적분 |     `\int_{a}^{b} f(x) dx, \iint`     |     $\int_{a}^{b} f(x) dx, \iint$      |
| 시그마 / 파이 | `\sum_{i=1}^{n} i, \prod_{i=1}^{n} i` | $\sum_{i=1}^{n} i , \prod_{i=1}^{n} i$ |
|    델     |               `\nabla`                |                $\nabla$                |


### 확률과 통계 
|     기능      |          LaTeX 문법           |             기호              |
| :---------: | :-------------------------: | :-------------------------: |
| 확률, 기댓값, 분산 | `P(X), E[X], \text{Var}(X)` | $P(X), E[X], \text{Var}(X)$ |
|     조합      |  `\binom{n}{k}, {}_n C_k`   |  $\binom{n}{k}, {}_n C_k$   |
|     순열      |         `{}_n P_k`          |         ${}_n P_k$          |
|     분포      |  `X \sim N(\mu, \sigma^2)`  |  $X \sim N(\mu, \sigma^2)$  |
|     독립      |         `X \perp Y`         |         $X \perp Y$         |
| 모평균, 모표준편차  |        `\mu, \sigma`        |        $\mu, \sigma$        |


### 집합과 논리
|    기능     |       LaTeX 문법       |          기호          |
| :-------: | :------------------: | :------------------: |
| 원소 포함 여부  |    `\in, \notin`     |    $\in, \notin$     |
|   부분집합    | `\subset, \subseteq` | $\subset, \subseteq$ |
| 합집합 / 교집합 |     `\cup, \cap`     |     $\cup, \cap$     |
| 공집합 / 여집합 |   `\emptyset, A^c`   |   $\emptyset, A^c$   |
|  모든 / 어떤  |  `\forall, \exists`  |  $\forall, \exists$  |
| AND / OR  |    `\land, \lor`     |    $\land, \lor$     |
|    명제     |   `\implies, \iff`   |   $\implies, \iff$   |
| 집합의 조건제시법 | `\{ x \mid x > 0 \}` | $\{ x \mid x > 0 \}$ |
>[!note] 중괄호 앞에 `\` 붙인 이유
>LaTeX에서 `{}`는 문자를 항으로 보는 기호라서 실제 렌더링에서는 보이지 않는다. 그래서 앞에 `\` 을 붙여주어 중괄호를 나타낸다.
>


### 행렬
```latex
$$
\begin{pmatrix}
a & a \\
c & d
\end{pmatrix}
$$
```
$$
\begin{pmatrix}
a & a \\
c & d
\end{pmatrix}
$$

### 주요 글꼴 및 기호
|     기능      |                     LaTeX 문법                     |                        기호                        |
| :---------: | :----------------------------------------------: | :----------------------------------------------: |
| 그리스 문자 소문자  |           `\alpha, \beta, \theta, \pi`           |           $\alpha, \beta, \theta, \pi$           |
| 그리스 문자 대문자  |             `\Delta, \Sigma, \Omega`             |             $\Delta, \Sigma, \Omega$             |
|    수 체계     | `\mathbb{R}, \mathbb{N}, \mathbb{Z}, \mathbb{C}` | $\mathbb{R}, \mathbb{N}, \mathbb{Z}, \mathbb{C}$ |
|     벡터      |              `\mathbf{v}, \vec{v}`               |              $\mathbf{v}, \vec{v}$               |
|    말줄임표     |                 `\cdots, \dots`                  |                 $\cdots, \dots$                  |
|     로만체     |                   `\mathrm{A}`                   |                   $\mathrm{A}$                   |
|    굵은 글씨    |                   `\mathbf{A}`                   |                   $\mathbf{A}$                   |
|    이탤릭체     |                   `\mathit{A}`                   |                   $\mathit{A}$                   |
| 필기체 / 캘리그라피 |                  `\mathcal{O}`                   |                  $\mathcal{O}$                   |


### 기타 LaTeX 사용법
|       기능       |             LaTeX 문법             |                기호                |
| :------------: | :------------------------------: | :------------------------------: |
|    수식 내 텍스트    |           `\text{단어}`            |           $\text{단어}$            |
|   큰 분수(인라인)    |          `\dfrac{x}{y}`          |          $\dfrac{x}{y}$          |
|     좁은 공백      |             `a \, b`             |             $a \, b$             |
|     중간 공백      |             `a \; b`             |             $a \; b$             |
|     넓은 공백      |           `a \quad b`            |           $a \quad b$            |
|    아주 넓은 공백    |           `a \qquad b`           |           $a \qquad b$           |
|     음수 공백      |             `a \! b`             |             $a \! b$             |
|      취소선       |          `\cancel{x+1}`          |          $\cancel{x+1}$          |
|   박스 (정답 강조)   |         `\boxed{x = 1}`          |         $\boxed{x = 1}$          |
| 위 중괄호 (설명 추가)  | `\overbrace{a + b}^{\text{설명}}`  | $\overbrace{a + b}^{\text{설명}}$  |
| 아래 중괄호 (설명 추가) | `\underbrace{a + b}_{\text{설명}}` | $\underbrace{a + b}_{\text{설명}}$ |
|     색상 변경      |         `\color{red}{A}`         |         $\color{red}{A}$         |


## 고급 사용 및 응용
### 괄호  크기 자동 조절
|    기능    |           LaTeX 문법           |              기호              |
| :------: | :--------------------------: | :--------------------------: |
|  일반 괄호   |      `( \frac{a}{b} )`       |       $( \frac{a}{b})$       |
| 크기 조절 괄호 | `\left( \frac{a}{b} \right)` | $\left( \frac{a}{b} \right)$ |
$$( \frac{a}{b})$$
$$\left( \frac{a}{b} \right)$$
>[!caution] 차이점
>잘 안 보일 수 있는데 크기 조절 괄호를 적용한 분수의 괄호가 분자 분모까지 완벽히 포함한다.


### 조건문
```latex
$$
f(x) =
\begin{cases} 
x^2 & \text{if } x \ge 0 \\
-x & \text{if } x < 0 
\end{cases}
$$
```
$$
f(x) =
\begin{cases} 
x^2 & \text{if } x \ge 0 \\
-x & \text{if } x < 0 
\end{cases}
$$


### 여러 줄 수식 정렬
```latex
$$
\begin{aligned}
f(x) &= (x+1)^2 \\
&= x^2 + 2x + 1
\end{aligned}
$$
```
$$
\begin{aligned}
f(x) &= (x+1)^2 \\
&= x^2 + 2x + 1
\end{aligned}
$$

>[!tip] `\\`, `&`
>`\\`는 줄바꿈을 의미하고, `&`는 `aligned` 상황에서 =의 위치를 의미한다.

## References
- [위키백과](https://ko.wikipedia.org/wiki/%EB%8F%84%EC%9B%80%EB%A7%90:TeX_%EB%AC%B8%EB%B2%95)
