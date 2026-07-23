# Nmap Scan Report

> **ApexPlanet Cybersecurity Internship — Task 1**
> Professional Nmap scanning report for an authorized local lab target.

---

## ⚠️ Authorization Statement

> This scan was performed **only** on an intentionally vulnerable VM (Metasploitable2) within an isolated Host-Only network. No public or unauthorized systems were scanned.

---

## Executive Summary

[Summarize the scan purpose, scope, and key findings in 2–3 sentences.]

---

## Scan Information

| Field | Value |
|-------|-------|
| **Scan Date** | [ENTER DATE] |
| **Scanned By** | [YOUR NAME] |
| **Scanner** | Nmap [VERSION] |
| **Target System** | Metasploitable2 |
| **Target IP** | [ENTER TARGET IP] |
| **Network** | Host-Only (192.168.56.0/24) |

---

## Scope & Authorization

| Aspect | Details |
|--------|---------|
| **Authorized Target** | Metasploitable2 VM |
| **Target IP** | [ENTER TARGET IP] |
| **Authorization** | Lab exercise — authorized local testing |
| **Testing Type** | External perspective (unauthenticated) |

---

## Methodology

| Phase | Command | Description |
|-------|---------|-------------|
| 1 | `nmap -sn 192.168.56.0/24` | Host discovery |
| 2 | `nmap -sS -p- [TARGET]` | Full TCP SYN scan |
| 3 | `nmap -sV [TARGET]` | Service/version detection |
| 4 | `nmap -O [TARGET]` | OS detection |
| 5 | `nmap --script=vuln [TARGET]` | Vulnerability scripts |

---

## Results

### Open Ports and Services

| Port | Protocol | Service | Version | Risk | Recommendation |
|------|----------|---------|---------|------|----------------|
| [Port] | TCP | [Service] | [Version] | [Risk Level] | [Action] |
| [Port] | TCP | [Service] | [Version] | [Risk Level] | [Action] |
| [Port] | TCP | [Service] | [Version] | [Risk Level] | [Action] |

> [ADD REAL SCREENSHOT HERE: Nmap scan output]

### OS Detection

> [ADD ACTUAL RESULT HERE]

---

## Risk Analysis

### Critical / High Findings

**[Finding Name]**
- **Port:** [Port]
- **Service:** [Service]
- **Risk:** [Description]
- **Impact:** [What an attacker could do]
- **Remediation:** [How to fix]

### Medium / Low Findings

**[Finding Name]**
- **Port:** [Port]
- **Service:** [Service]
- **Risk:** [Description]
- **Remediation:** [How to fix]

---

## Recommendations

| Priority | Recommendation |
|----------|---------------|
| 1 | [Action item] |
| 2 | [Action item] |
| 3 | [Action item] |

---

## Limitations

- Scan performed from Host-Only network only
- No authenticated scanning performed
- Vulnerability scripts may not cover all CVEs
- Results specific to the lab environment

---

## Evidence

> [ADD REAL SCREENSHOT HERE: Nmap TCP SYN scan]
> [ADD REAL SCREENSHOT HERE: Service/version detection]
> [ADD REAL SCREENSHOT HERE: OS detection]
> [ADD REAL SCREENSHOT HERE: Vulnerability script output]

---

**See also:** [08 — Nmap Scanning](../docs/08-nmap-scanning.md), [Nmap Cheat Sheet](../cheat-sheets/nmap-cheat-sheet.md)
