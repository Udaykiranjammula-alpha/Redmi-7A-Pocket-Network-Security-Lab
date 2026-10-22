#!/bin/bash
# ==============================================================================
# Single-Host Port & Service Auditor
# ==============================================================================

read -p "Enter Target IP address (e.g. 192.168.1.1): " TARGET_IP

if [ -z "$TARGET_IP" ]; then
    echo "Error: No IP specified."
    exit 1
fi

echo "======================================================================"
echo " Scanning Top 100 Common Ports on $TARGET_IP..."
echo "======================================================================"

nmap -F -sT "$TARGET_IP"
