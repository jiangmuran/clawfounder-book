#!/usr/bin/env bash
set -euo pipefail

# 示例：调用 dvcode / Nano Banana 生成一张竖版海报主视觉。
# 注意：实际运行依赖本机 dvcode 与可用配额。

REF_IMAGE="${1:-/root/.openclaw/workspace-main/ppt-jiangmuran-green/images/01-cover.png}"
PROMPT="Create a premium vertical competition poster for an AI startup operating system called ClawFounder. High-end editorial technology poster, sophisticated product-launch aesthetic, dark navy background, electric blue and teal highlights, strong focal hierarchy, no embedded text, no photorealism."

dvcode -y -p "/nanobanana 9:16 1K ${PROMPT} @${REF_IMAGE}"
