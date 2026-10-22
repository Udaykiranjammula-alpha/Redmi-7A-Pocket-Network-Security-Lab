#!/data/data/com.termux/files/usr/bin/bash
# ==============================================================================
# Automated Network Lab & PRoot Debian Installer for Redmi 7A
# ==============================================================================

set -e

echo "=== [1/3] Updating Termux packages and installing PRoot Distro ==="
pkg update -y
pkg install -y proot-distro tsu curl wget git

echo "=== [2/3] Installing Debian Linux container ==="
if proot-distro list | grep -q "debian (installed)"; then
    echo "Debian is already installed!"
else
    proot-distro install debian
fi

echo "=== [3/3] Installing Network Diagnostics & Auditing tools inside Debian ==="
proot-distro login debian -- bash -c "
    apt update && apt upgrade -y
    apt install -y nmap tcpdump tshark htop curl net-tools traceroute python3 python3-pip nano
    echo 'All tools installed successfully inside Debian!'
"

echo "======================================================================"
echo " Setup Complete! You can enter your Linux lab anytime by running:"
echo " -> bash scripts/02-launch-lab.sh (or 'proot-distro login debian')"
echo "======================================================================"
