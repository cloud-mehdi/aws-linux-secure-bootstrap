#!/usr/bin/env bash
set -euo pipefail

# Note: intended for Ubuntu/Linux servers (cloud instances)

echo "=== Fail2ban Check ==="

if command -v fail2ban-client >/dev/null 2>&1; then
  fail2ban-client status || echo "Fail2ban running but no active jails"
else
  echo "Fail2ban not installed"
fi

