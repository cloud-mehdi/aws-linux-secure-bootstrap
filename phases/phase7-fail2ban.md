# Phase 7 – Fail2ban (Brute Force Protection)

In this phase, Fail2ban was configured to protect the server
from brute-force attacks on SSH.

## Configuration
- Monitors SSH authentication logs
- Bans IPs after multiple failed attempts
- Automatically unbans after a defined period

## SSH Jail Settings
- maxretry: 5
- findtime: 10 minutes
- bantime: 1 hour

## Verification
Fail2ban status was verified using:
fail2ban-client status sshd

This adds an additional security layer on top of UFW and SSH hardening.

