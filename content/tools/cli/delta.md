---
tags:
  - git
  - CLI
title:
aliases:
date:
publish: false
---
# delta

## Overview
- `git diff` 의 가시성을 높이는 CLI 툴

## Installation
```bash
brew install git-delta
```

### Configuration

```bash
git config --global core.pager "delta"
git config --global interactive.diffFilter "delta --color-only"
git config --global add.interactive.useBuiltin false
git config --global delta.navigate true
git config --global delta.light false
```

## Usage