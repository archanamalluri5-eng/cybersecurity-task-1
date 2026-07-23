#!/bin/bash
# ============================================================
# Linux Basics Demo Script
# ApexPlanet Cybersecurity Internship — Task 1
#
# Purpose: Demonstrate basic Linux commands in a safe lab
#          environment using only local educational data.
#
# Usage: chmod +x linux-basics-demo.sh && ./linux-basics-demo.sh
# ============================================================

echo "============================================"
echo "  Linux Basics Demonstration"
echo "  ApexPlanet Cybersecurity Internship"
echo "============================================"
echo ""

# --- Current Directory ---
echo "[1] Current Working Directory:"
pwd
echo ""

# --- List Files ---
echo "[2] Current Directory Contents:"
ls -la
echo ""

# --- System Information ---
echo "[3] System Information:"
echo "    Hostname: $(hostname)"
echo "    Kernel:   $(uname -a)"
echo "    User:     $(whoami)"
echo "    User ID:  $(id)"
echo ""

# --- IP Information ---
echo "[4] Network Interface Information:"
ip addr show 2>/dev/null || ifconfig 2>/dev/null || echo "    (network tools not available)"
echo ""

# --- Disk Usage ---
echo "[5] Disk Usage:"
df -h 2>/dev/null | head -5
echo ""

# --- Memory Usage ---
echo "[6] Memory Usage:"
free -h 2>/dev/null || echo "    (free command not available)"
echo ""

# --- Current Processes ---
echo "[7] Current Processes (top 5):"
ps aux 2>/dev/null | head -6
echo ""

echo "============================================"
echo "  Demo Complete — All data is local only"
echo "============================================"
