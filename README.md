# aws-linux-secure-bootstrap

Secure Linux server bootstrap on a cloud VM (AWS EC2).  
This repo documents my step-by-step hardening journey and provides small audit scripts to validate the setup.

## What this project is
I built and documented a secure baseline for a Linux cloud server:
- EC2 provisioning basics
- SSH key-based access
- Basic hardening steps
- Firewall setup (UFW)
- Fail2ban for SSH brute-force protection

Everything is structured in phases and backed by a small “audit toolkit”.

## ⚠️ Important note (execution environment)
The scripts in `scripts/` are intended to run on **Ubuntu/Linux servers** (AWS EC2, Azure VM, or Linux Cloud Shell).  
They are **not meant to be executed on macOS** because command-line tools differ.

## Skills this proves
- Linux fundamentals: navigation, files, users/groups, permissions
- SSH security: key auth, restricted access, safe configs
- Cloud security mindset: least privilege, minimize exposure
- Service awareness: firewall + fail2ban checks
- Documentation: clear phases and reproducible steps
- Troubleshooting: structured thinking and log awareness

## Project phases
Docs are in `phases/`:

- Phase 1: EC2 setup
- Phase 2: SSH access (keys)
- Phase 3: Hardening basics
- Phase 4: SSH alias
- Phase 5: Lab & practice
- Phase 6: Firewall (UFW)
- Phase 7: Fail2ban

## Toolkit (audit scripts)
Scripts live in `scripts/`:
- `system_report.sh` — basic system snapshot
- `ssh_audit.sh` — checks SSH config expectations
- `firewall_check.sh` — UFW status and rules
- `fail2ban_check.sh` — fail2ban status
- `log_watch.sh` — quick scan for SSH-related warnings
- `secure_bootstrap_check.sh` — runs all checks

## How to run (on a Linux server)
Clone the repo on your Linux machine, then:

1) Make scripts executable  
2) Run the master check script

Expected outcome:
- A clear report showing what is OK and what needs attention.

## Troubleshooting notes
See: `docs/troubleshooting.md`

## Next steps
- Convert bootstrap to IaC (Terraform) later
- Add CI checks for shell scripts (ShellCheck)

