#!/usr/bin/env bash
set -euo pipefail

# 示例：调用 OpenCode 根据项目说明补全一个静态原型。
# 用法：
#   bash scripts/run_opencode_prototype.sh /path/to/project

PROJECT_DIR="${1:-$(pwd)}"
cd "$PROJECT_DIR"

echo "[INFO] Running OpenCode in: $PROJECT_DIR"
opencode run '根据 README、docs 和现有页面结构，补全或优化项目原型。优先保持 GitHub Pages 兼容。'
