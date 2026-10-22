#!/bin/bash
# ==============================================================================
# Local Wi-Fi Network Discovery & Inventory Script (Runs inside Debian container)
# ==============================================================================

SUBNET=$(ip route | grep default | awk '{print $3}' | cut -d. -f1-3)

if [ -z "$SUBNET" ]; then
    echo "Could not detect default gateway subnet. Defaulting to 192.168.1"
    SUBNET="192.168.1"
fi

TARGET="${SUBNET}.0/24"

echo "======================================================================"
echo " Starting Network Discovery Audit on Subnet: $TARGET"
echo "======================================================================"
echo ""

nmap -sn "$TARGET"

echo ""
echo "Audit complete! Active hosts detected above."
