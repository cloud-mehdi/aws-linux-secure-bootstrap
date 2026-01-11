#!/usr/bin/env bash
set -euo pipefail

title() { echo; echo "=== $1 ==="; }

require_cmd() {
  command -v "$1" >/dev/null 2>&1 || echo "[WARN] Missing command: $1"
}

title "System Report"
echo "Date: $(date)"
echo "User: $(whoami)"
echo "Hostname: $(hostname)"

title "OS"
if [ -f /etc/os-release ]; then
  . /etc/os-release
  echo "OS: $PRETTY_NAME"
else
  echo "[WARN] /etc/os-release not found (this script is intended for Linux servers)"
fi

title "Uptime"
uptime || true

title "CPU / Memory"
require_cmd nproc
require_cmd free
if command -v nproc >/dev/null 2>&1; then
  echo "CPU cores: $(nproc)"
fi
if command -v free >/dev/null 2>&1; then
  free -h
fi

title "Disk"
df -h || true

title "Top processes (CPU)"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu 2>/dev/null | head -n 10 || echo "[WARN] ps options differ on this OS"

