#!/usr/bin/env bash
set -euo pipefail

# 示例：记录一次 ADB 独立手机桥接流程的观察笔记。
# 这是说明性脚本，不包含任何敏感平台或凭据。

OUT_FILE="${1:-device-bridge-notes.md}"
cat > "$OUT_FILE" <<'EOF'
# Device Bridge Session Notes

- Device role:
- Desktop workflow stage:
- Mobile-only action involved:
- Expected handoff point:
- Observed friction:
- Suggested automation boundary:
- Next improvement:
EOF

echo "[OK] Notes template written to $OUT_FILE"
