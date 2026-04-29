#!/bin/zsh

echo "============================================="
echo "빌드 시작 시간: $(date +"%Y-%m-%d %H:%M:%S")"
echo "Quartz 자동 빌드 중..."
echo "============================================="

# 빌드
cd /home/junbeom/quartz-blog/
npx quartz build --directory "/home/junbeom/obsidian-vault/"

echo "=============================================="
echo "빌드 완료 시간: $(date +"%Y-%m-%d %H:%M:%S")"
echo "=============================================="