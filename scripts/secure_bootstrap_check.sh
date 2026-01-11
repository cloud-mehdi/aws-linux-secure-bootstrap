#!/usr/bin/env bash
set -euo pipefail

# Note: intended for Ubuntu/Linux servers (cloud instances)

DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== Linux Secure Bootstrap Check ==="

bash "$DIR/system_report.sh"
bash "$DIR/ssh_audit.sh"
bash "$DIR/firewall_check.sh"
bash "$DIR/fail2ban_check.sh"
bash "$DIR/log_watch.sh"

echo
echo "=== Check completed ==="

