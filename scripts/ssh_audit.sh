#!/usr/bin/env bash
set -euo pipefail

# Note: intended for Ubuntu/Linux servers (cloud instances)

CONFIG="/etc/ssh/sshd_config"

echo "=== SSH Audit ==="

if [ ! -f "$CONFIG" ]; then
  echo "SSH config not found"
  exit 1
fi

check() {
  local key="$1"
  local expected="$2"

  value=$(grep -Ei "^$key" "$CONFIG" | awk '{print $2}' | tail -n 1)

  if [ "$value" = "$expected" ]; then
    echo "[OK] $key is set to $value"
  else
    echo "[WARN] $key is set to ${value:-not set} (expected: $expected)"
  fi
}

check "PermitRootLogin" "no"
check "PasswordAuthentication" "no"
check "Port" "22"

