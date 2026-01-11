# Troubleshooting Notes (Linux for Cloud)

## 1) SSH timeout / can't connect
Possible causes:
- VM stopped / instance not running
- Security Group / firewall blocks port 22
- Wrong IP or changed public IP
- SSH service down

How to confirm:
- Check instance state
- Check allowed inbound rules for port 22
- Verify SSH service status and logs

## 2) Service failed to start
Steps:
- Check service status (active/failed)
- Read logs for the exact error
- Fix config, then restart

## 3) Firewall blocks access
Steps:
- Check firewall enabled/disabled
- Review allowed ports
- Allow only what is needed (least exposure)

## 4) Disk is full
Steps:
- Check disk usage
- Identify largest directories/files
- Clean safely (logs, temp files)

## 5) Permission denied
Steps:
- Identify owner/group and permission bits
- Apply least privilege fix (avoid 777)
- Use groups for shared access

