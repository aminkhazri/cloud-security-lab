#!/bin/bash

# EC2 Hardening Script - Disable Root SSH Login

echo "[+] Backing up SSH config..."
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

echo "[+] Disabling root login via SSH..."
sudo sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config

echo "[+] Restarting SSH service..."
sudo systemctl restart sshd

echo "[✓] Root login disabled. SSH config hardened."
