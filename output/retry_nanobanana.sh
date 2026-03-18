#!/usr/bin/env bash
set -euo pipefail
REF="/root/.openclaw/workspace-main/ppt-jiangmuran-green/images/01-cover.png"
OUT_DIR="/root/projects/clawfounder-book/assets/nano"
LOG_DIR="/root/projects/clawfounder-book/output"
mkdir -p "$OUT_DIR" "$LOG_DIR"
run_one() {
  local name="$1"
  local prompt="$2"
  local log="$LOG_DIR/${name}.retry.log"
  for wait_s in 45 90 150; do
    : > "$log"
    if dvcode -y -p "/nanobanana 16:9 1K ${prompt} @${REF}" > "$log" 2>&1; then
      url=$(python3 - <<'PY' "$log"
import re,sys,pathlib
text=pathlib.Path(sys.argv[1]).read_text(errors='ignore')
m=re.findall(r'https://img-dvcode\.short\.gy/\S+', text)
print(m[-1] if m else '')
PY
)
      if [ -n "$url" ]; then
        curl -L "$url" -o "$OUT_DIR/${name}.png"
        echo "$OUT_DIR/${name}.png"
        exit 0
      fi
    fi
    sleep "$wait_s"
  done
  exit 1
}
case "${1:-}" in
  opc)
    run_one "nano-opc" "Create a premium editorial product-illustration scene for an AI startup operating system on warm ivory paper. Show a clean command center for an OPC workflow: flowing cards for idea, whitepaper, prototype, repository, website, content, and weekly report connected into one calm visual system. Sophisticated strategy deck illustration, calm whitespace, muted blue, slate, teal, warm ivory palette, polished, trustworthy, no embedded text, no photorealism." ;;
  device)
    run_one "nano-device" "Create a premium editorial technology illustration for ADB-controlled independent mobile device bridging. Show one dedicated smartphone acting as a separate execution bridge between desktop workflows and real-world mobile actions, elegant signals, secure handoff, system architecture feeling, minimal high-end product art, muted blue, soft teal, graphite, warm ivory palette, no embedded text, no photorealism." ;;
  *) exit 2 ;;
esac
