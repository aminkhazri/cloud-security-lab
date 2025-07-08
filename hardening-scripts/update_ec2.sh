#!/bin/bash

# EC2 Hardening Script - System Update & Fail2Ban Install

echo "[+] Updating system packages..."
sudo yum update -y

echo "[+] Installing Fail2Ban..."
sudo yum install epel-release -y
sudo yum install fail2ban -y

echo "[+] Enabling and starting Fail2Ban..."
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

echo "[✓] Update & basic intrusion protection complete."
