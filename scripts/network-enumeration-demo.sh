#!/bin/bash
# ============================================================
# Network Enumeration Demo Script
# ApexPlanet Cybersecurity Internship — Task 1
#
# Purpose: Demonstrate local network enumeration commands
#          within an authorized lab environment only.
#
# Usage: chmod +x network-enumeration-demo.sh && ./network-enumeration-demo.sh
#
# NOTE: This script only shows local interface information
#       and tests connectivity to an authorized lab target.
#       It does NOT scan public networks or unauthorized systems.
# ============================================================

echo "============================================"
echo "  Network Enumeration Demonstration"
echo "  ApexPlanet Cybersecurity Internship"
echo "============================================"
echo ""

# --- Local Interface Information ---
echo "[1] Local Network Interfaces:"
echo "    ----------------------------------------"
ip addr show 2>/dev/null || ifconfig 2>/dev/null || echo "    (network tools not available)"
echo ""

# --- Routing Information ---
echo "[2] Routing Table:"
echo "    ----------------------------------------"
ip route show 2>/dev/null || route -n 2>/dev/null || echo "    (routing tools not available)"
echo ""

# --- Listening Ports ---
echo "[3] Listening Ports (TCP/UDP):"
echo "    ----------------------------------------"
ss -tuln 2>/dev/null || netstat -tuln 2>/dev/null || echo "    (socket tools not available)"
echo ""

# --- Hostname and DNS ---
echo "[4] Hostname and DNS Configuration:"
echo "    ----------------------------------------"
echo "    Hostname: $(hostname 2>/dev/null)"
echo "    DNS Servers:"
cat /etc/resolv.conf 2>/dev/null | grep nameserver || echo "    (DNS config not found)"
echo ""

# --- ARP Table ---
echo "[5] ARP Table:"
echo "    ----------------------------------------"
arp -a 2>/dev/null || ip neigh 2>/dev/null || echo "    (ARP tools not available)"
echo ""

echo "============================================"
echo "  All queries limited to local network"
echo "  No public targets scanned"
echo "============================================"
