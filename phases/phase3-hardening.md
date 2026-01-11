# Phase 3 – Linux Hardening (SSH)

In this phase the server was hardened by enforcing secure SSH practices.

## Actions taken
- Created a dedicated non-root user (mehdi)
- Added the user to the sudo group
- Migrated SSH authorized keys to the new user
- Disabled root SSH login
- Disabled password authentication
- Enforced key-based authentication only

## Verification
The SSH daemon configuration was verified using:
sshd -T | grep -E "permitrootlogin|passwordauthentication|pubkeyauthentication"

