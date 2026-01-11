# Phase 6 – Firewall Configuration (UFW)

In this phase, the server network layer was secured using UFW.

## Configuration
- Default policy: deny all incoming traffic
- Allowed service: SSH (OpenSSH)
- Outgoing traffic allowed by default

## Steps
- Allowed SSH access before enabling firewall
- Enabled UFW safely without interrupting access
- Verified firewall rules and status

## Verification
ufw status verbose

