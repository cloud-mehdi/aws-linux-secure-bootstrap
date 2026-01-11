#!/usr/bin/env bash
set -euo pipefail

# Note: intended for Ubuntu/Linux servers (cloud instances)

LOG="/var/log/auth.log"

echo "=== Log Watch (SSH related) ==="

if [ -f "$LOG" ]; then
  grep -Ei "failed|invalid|error|sshd" "$LOG" | tail -n 20
else
  echo "Auth log not found"
fi

