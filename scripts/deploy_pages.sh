#!/usr/bin/env bash
set -euo pipefail

# 示例：将当前仓库内容推送到 main，并触发 GitHub Pages 更新。
# 前提：已经配置好 git remote 与 gh 登录。

git add .
git commit -m "chore: update project site assets" || true
git push origin main

echo "[INFO] Pushed to main. GitHub Pages will rebuild automatically."
