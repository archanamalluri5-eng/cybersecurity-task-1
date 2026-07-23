# Nmap Scan Report — Lab Only

> **ApexPlanet Cybersecurity Internship – Task 1**  
> This is a template for documenting Nmap scans performed against an authorized local lab target only.

---

## ⚠️ Authorization Disclaimer

> This scan was performed **only** on an intentionally vulnerable virtual machine (Metasploitable2) within an isolated, Host-Only network lab environment. No public IP addresses or unauthorized systems were scanned.

---

## Scan Information

| Field | Value |
|-------|-------|
| **Scan Date** | [Enter Date] |
| **Scanned By** | [Your Name] |
| **Scanner** | Nmap [Version] |
| **Target System** | Metasploitable2 (Intentionally Vulnerable VM) |
| **Target IP** | [Enter Target IP — e.g., 192.168.56.101] |
| **Network** | Host-Only Adapter (Isolated Lab) |
| **Authorization** | Lab exercise — authorized local testing |

---

## Scan Commands Used

```bash
# 1. TCP SYN Scan (Stealth Scan)
nmap -sS -oN tcp_syn_scan.txt [Enter Target IP]

# 2. Full Port Scan
nmap -p- -oN full_port_scan.txt [Enter Target IP]

# 3. Service and Version Detection
nmap -sV -oN service_version_scan.txt [Enter Target IP]

# 4. OS Detection
nmap -O -oN os_detection_scan.txt [Enter Target IP]

# 5. Aggressive Scan (Combined)
nmap -A -oN aggressive_scan.txt [Enter Target IP]

# 6. UDP Scan (Top 20 Ports)
nmap -sU --top-ports 20 -oN udp_scan.txt [Enter Target IP]

# 7. NSE Scripts
nmap --script=vuln -oN vuln_scan.txt [Enter Target IP]
```

---

## Results — Open Ports and Services

| Port | State | Service | Version | Notes |
|------|-------|---------|---------|-------|
| [Port] | [open/closed] | [Service name] | [Version] | [Notes] |
| [Port] | [open/closed] | [Service name] | [Version] | [Notes] |
| [Port] | [open/closed] | [Service name] | [Version] | [Notes] |

> **[Add Screenshot Here: Nmap scan output]**

---

## Observations

### Key Findings

1. [Observation 1 — e.g., Multiple services are running with known vulnerabilities]
2. [Observation 2 — e.g., FTP allows anonymous login]
3. [Observation 3 — e.g., Outdated service versions detected]

### Risk Summary

| Risk Level | Count | Description |
|------------|-------|-------------|
| Critical | [Number] | [Description] |
| High | [Number] | [Description] |
| Medium | [Number] | [Description] |
| Low | [Number] | [Description] |

---

## Risk Assessment

### Critical / High Findings

**[Finding Name]**
- **Port:** [Port Number]
- **Service:** [Service Name]
- **Risk:** [Description of the risk]
- **Impact:** [What an attacker could do]
- **Remediation:** [How to fix or mitigate]

### Medium / Low Findings

**[Finding Name]**
- **Port:** [Port Number]
- **Service:** [Service Name]
- **Risk:** [Description of the risk]
- **Remediation:** [How to fix or mitigate]

---

## Screenshots

> **[Add Screenshot Here: Nmap TCP SYN scan output]**

> **[Add Screenshot Here: Nmap service/version detection output]**

> **[Add Screenshot Here: Nmap OS detection output]**

> **[Add Screenshot Here: Nmap vulnerability script output]**

---

## Conclusion

[Summarize your scan results, key risks identified, and lessons learned from this lab exercise.]

---

## Commands Reference

| Command | Description |
|---------|-------------|
| `nmap -sS` | TCP SYN (stealth) scan |
| `nmap -sV` | Service/version detection |
| `nmap -O` | OS detection |
| `nmap -A` | Aggressive scan (all detection) |
| `nmap -p-` | All 65535 ports |
| `nmap -sU` | UDP scan |
| `nmap --script=vuln` | Vulnerability detection scripts |
| `nmap -oN` | Output to normal format file |

---

**Next:** [Vulnerability Assessment](vulnerability-assessment.md)
