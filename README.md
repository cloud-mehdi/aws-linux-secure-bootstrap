# AWS Linux Secure Bootstrap

A complete, end-to-end project demonstrating how to securely bootstrap
a Linux server on AWS using real-world cloud and Linux administration practices.

This project focuses on **security, clarity, and operational thinking** rather
than simple tutorials.

---

## 🚀 Project Overview

This project documents the full lifecycle of a cloud-based Linux server:

- Provisioning an EC2 instance on AWS
- Securing SSH access using key-based authentication
- Hardening the system by disabling insecure defaults
- Creating a clean server structure
- Performing real operational (Ops) tasks
- Documenting everything in a professional manner

---

## 🧰 Technologies Used

- Amazon Web Services (EC2)
- Ubuntu Server (LTS)
- SSH (key-based authentication)
- Linux system administration
- Bash scripting
- Git & GitHub

---

## 🔐 Security Highlights

- SSH access restricted to a single IP (Security Group)
- Password authentication disabled
- Root SSH login disabled
- Dedicated non-root sudo user
- SSH alias for safe and efficient access
- Verification of SSH daemon configuration

---

## 📂 Project Structure

aws-linux-secure-bootstrap/
├── README.md
├── phases/
│ ├── phase1-ec2-setup.md
│ ├── phase2-ssh-access.md
│ ├── phase3-hardening.md
│ ├── phase4-ssh-alias.md
│ └── phase5-lab.md
└── screenshots/  
Each phase contains step-by-step documentation explaining
**what was done and why it was done**.

---

## 🧪 What This Project Demonstrates

- Cloud infrastructure setup from scratch
- Secure Linux server access and hardening
- Practical Linux command usage
- Operational thinking (logs, backups, scripts)
- Clear technical documentation

This project is designed to reflect **real responsibilities of a junior Cloud / DevOps engineer**.

---

## 🔁 How to Reproduce (High-Level)

1. Create an EC2 instance on AWS (Ubuntu LTS)
2. Configure SSH key-based access
3. Restrict network access via Security Groups
4. Create a non-root sudo user
5. Disable password and root SSH login
6. Apply server structure and operational tasks

> Detailed steps are documented inside the `phases/` directory.

---

## 👤 Author

**Mehdi Elayouti**  
Aspiring Cloud Engineer  
Focused on Linux, Cloud Infrastructure, and Security Fundamentals

---

## 📌 Notes

- No secrets, private keys, or credentials are stored in this repository
- Screenshots are provided only where they add technical value

