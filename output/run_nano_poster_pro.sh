#!/usr/bin/env bash
set -euo pipefail
NAME="$1"
PROMPT="$2"
REF="$3"
LOG="/root/projects/clawfounder-book/output/${NAME}.pro.log"
OUT="/root/projects/clawfounder-book/${NAME}.png"

dvcode -y -p "/nanobanana 9:16 1K ${PROMPT} @${REF}" > "$LOG" 2>&1 || true

python3 - <<'PY' "$LOG" "$OUT"
import re, sys, pathlib, subprocess
log = pathlib.Path(sys.argv[1]).read_text(errors='ignore').splitlines()
out = pathlib.Path(sys.argv[2])
url = None
for line in reversed(log):
    m = re.search(r'https://img-dvcode\.short\.gy/[^"\]\s,]+', line)
    if m:
        url = m.group(0)
        break
if not url:
    print('NO_URL')
    sys.exit(2)
print(url)
subprocess.run(['curl','-L',url,'-o',str(out)], check=True)
PY

file "$OUT"
