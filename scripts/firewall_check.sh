#!/usr/bin/env bash
set -euo pipefail

# Note: intended for Ubuntu/Linux servers (cloud instances)

echo "=== Firewall Check ==="

if command -v ufw >/dev/null 2>&1; then
  echo "UFW detected"
  ufw status verbose
else
  echo "UFW not installed"
fi

