#!/usr/bin/env bash
set -euo pipefail

QUARTZ_DIR=/home/techbara/quartz
VAULT_DIR=/home/techbara/obsidian-vault
STAGING=/data/quartz/.staging
LIVE=/data/caddy/site/wiki

cd "$QUARTZ_DIR"

npx quartz build -d "$VAULT_DIR" -o "$STAGING"

# 빌드가 성공했을 때만 교체 (set -e)
rsync -a --delete "$STAGING/" "$LIVE/"

echo "✅ $(date -Is) — $(find "$LIVE" -name '*.html' | wc -l) pages"