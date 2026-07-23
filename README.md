# Foundation & Environment Setup — Cybersecurity Internship Task 1

<p align="center">
  <strong>ApexPlanet Cybersecurity Internship</strong><br>
  <em>Days 1–12 | Complete Documentation & Lab Evidence</em><br><br>
  <img src="https://img.shields.io/badge/Status-Submission%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Task-1%2F4-blue" alt="Task">
  <img src="https://img.shields.io/badge/Lab-Authorized%20Only-red" alt="Lab Only">
  <img src="https://img.shields.io/badge/Tools-Kali%20Linux%20%7C%20Nmap%20%7C%20Wireshark-orange" alt="Tools">
</p>

---

## Project Overview

This repository contains the complete submission for **Task 1: Foundation & Environment Setup** of the **ApexPlanet Cybersecurity Internship**. It documents 12 days of structured learning covering cybersecurity fundamentals, virtual lab setup, Linux, networking, cryptography, security tools, reconnaissance, Nmap scanning, vulnerability assessment, and Wireshark traffic analysis.

> **All practical activities are performed exclusively within an authorized, isolated local lab environment.** No public systems, third-party infrastructure, or unauthorized targets are scanned, tested, or compromised.

---

## Task Objective

Build a comprehensive cybersecurity foundation through:

1. Understanding core security principles and the threat landscape
2. Setting up an isolated virtual lab environment for safe, hands-on learning
3. Gaining proficiency in Linux commands and networking concepts
4. Learning cryptographic fundamentals and safe demonstrations
5. Familiarizing with essential security tools (Nmap, Wireshark, Burp Suite, Netcat)
6. Performing authorized reconnaissance, scanning, and vulnerability assessment
7. Analyzing network traffic in a controlled environment
8. Documenting all activities professionally for internship evaluation

---

## Learning Outcomes

| # | Outcome |
|---|---------|
| 1 | Understand the CIA Triad and common cybersecurity threats |
| 2 | Set up an isolated virtual lab with Kali Linux and Metasploitable2 |
| 3 | Navigate and manage Linux systems confidently |
| 4 | Understand OSI/TCP-IP models, protocols, and IP addressing |
| 5 | Apply cryptographic concepts (encryption, hashing, TLS/SSL) |
| 6 | Use Nmap, Wireshark, Burp Suite, and Netcat effectively |
| 7 | Perform passive and active reconnaissance techniques |
| 8 | Execute network scans and document findings professionally |
| 9 | Assess vulnerabilities and recommend remediation |
| 10 | Analyze network traffic and identify security risks |
| 11 | Practice ethical and legal cybersecurity boundaries |

---

## Topics Covered

| Day | Topic | Documentation |
|-----|-------|---------------|
| 1–2 | Cybersecurity Fundamentals | [01-cybersecurity-basics.md](docs/01-cybersecurity-basics.md) |
| 2–3 | Lab Environment Setup | [02-lab-environment-setup.md](docs/02-lab-environment-setup.md) |
| 3–4 | Linux Fundamentals | [03-linux-fundamentals.md](docs/03-linux-fundamentals.md) |
| 4–5 | Networking Basics | [04-networking-basics.md](docs/04-networking-basics.md) |
| 5–6 | Cryptography Basics | [05-cryptography-basics.md](docs/05-cryptography-basics.md) |
| 6–7 | Security Tools | [06-security-tools.md](docs/06-security-tools.md) |
| 7–8 | Reconnaissance | [07-reconnaissance.md](docs/07-reconnaissance.md) |
| 8–9 | Nmap Scanning | [08-nmap-scanning.md](docs/08-nmap-scanning.md) |
| 9–10 | Vulnerability Assessment | [09-vulnerability-assessment.md](docs/09-vulnerability-assessment.md) |
| 10–11 | Wireshark Analysis | [10-wireshark-analysis.md](docs/10-wireshark-analysis.md) |
| 11–12 | Documentation & Submission | [11-learning-outcomes.md](docs/11-learning-outcomes.md) |

---

## Lab Architecture

```
┌──────────────────────────────────────────────────┐
│                Host Computer                      │
│                                                   │
│  ┌───────────────────┐  ┌─────────────────────┐  │
│  │   Kali Linux      │  │   Metasploitable2   │  │
│  │   (Attacker VM)   │  │   (Target VM)       │  │
│  │   192.168.56.X    │  │   192.168.56.101    │  │
│  └────────┬──────────┘  └──────────┬──────────┘  │
│           │                         │              │
│           └───────┬─────────────────┘              │
│                   │                                │
│          ┌────────┴────────┐                      │
│          │  Host-Only      │                      │
│          │  Network        │                      │
│          │  192.168.56.0/24│                      │
│          └─────────────────┘                      │
└──────────────────────────────────────────────────┘
         ✗ No external/internet access
         ✓ All traffic isolated within lab
```

| Component | Details |
|-----------|---------|
| **Virtualization** | VirtualBox / VMware |
| **Attacker VM** | Kali Linux (4 GB RAM, 2 cores, 40 GB) |
| **Target VM** | Metasploitable2 (1 GB RAM, 1 core, 20 GB) |
| **Network** | Host-Only Adapter — 192.168.56.0/24 |
| **Isolation** | No internet, no external access |

See [diagrams/lab-network-architecture.md](diagrams/lab-network-architecture.md) for a detailed Mermaid diagram.

---

## Tools Used

| Tool | Purpose | Lab Target |
|------|---------|------------|
| Kali Linux | Security testing platform | — |
| Metasploitable2 | Intentionally vulnerable target | Host-Only VM |
| Nmap | Network scanning and discovery | Metasploitable2 |
| Wireshark | Packet capture and analysis | Kali ↔ Metasploitable2 |
| Burp Suite | Web application security testing | DVWA / Metasploitable2 |
| Netcat | Low-level network connections | Metasploitable2 |
| OpenSSL | Cryptography demonstrations | Local files |
| VirtualBox/VMware | Virtualization platform | — |

---

## Repository Structure

```
cybersecurity-task-1/
├── README.md                                   ← This file
├── LICENSE                                      ← MIT License
├── .gitignore                                   ← Ignore rules
│
├── docs/                                        ← Core documentation (11 files)
│   ├── 01-cybersecurity-basics.md               ← CIA Triad, threats, attack vectors
│   ├── 02-lab-environment-setup.md              ← Lab architecture & setup guide
│   ├── 03-linux-fundamentals.md                 ← Essential Linux commands
│   ├── 04-networking-basics.md                  ← OSI model, TCP/IP, protocols
│   ├── 05-cryptography-basics.md                ← Encryption, hashing, SSL/TLS
│   ├── 06-security-tools.md                     ← Wireshark, Nmap, Burp Suite, Netcat
│   ├── 07-reconnaissance.md                     ← Passive and active recon techniques
│   ├── 08-nmap-scanning.md                      ← Scan types & methodology
│   ├── 09-vulnerability-assessment.md           ← CVE, CVSS, severity, tools
│   ├── 10-wireshark-analysis.md                 ← Traffic analysis guide
│   └── 11-learning-outcomes.md                  ← Skills & topics summary
│
├── cheat-sheets/                                ← Quick reference guides (4 files)
│   ├── linux-command-cheat-sheet.md
│   ├── networking-command-cheat-sheet.md
│   ├── nmap-cheat-sheet.md
│   └── wireshark-filter-cheat-sheet.md
│
├── reports/                                     ← Professional report templates (6 files)
│   ├── lab-setup-report.md
│   ├── reconnaissance-report.md
│   ├── nmap-scan-report.md
│   ├── vulnerability-assessment-report.md
│   ├── wireshark-analysis-report.md
│   └── final-task-report.md
│
├── diagrams/                                    ← Visual references (2 files)
│   ├── lab-network-architecture.md              ← Mermaid lab diagram
│   └── osi-model.md                            ← OSI model with Mermaid
│
├── scripts/                                     ← Safe demo scripts (4 files)
│   ├── README.md
│   ├── linux-basics-demo.sh
│   ├── network-enumeration-demo.sh
│   └── crypto-demo.sh
│
├── sample-data/                                 ← Simulated outputs (3 files)
│   ├── sample-nmap-output.txt
│   ├── sample-wireshark-analysis.md
│   └── sample-vulnerability-findings.md
│
├── screenshots/                                 ← Evidence folder
│   ├── README.md                                ← Screenshot checklist
│   └── .gitkeep
│
└── video/                                       ← Video submission
    └── 5-minute-walkthrough-script.md           ← Presentation script
```

**Total files: 40+**

---

## Task Completion Checklist

### Documentation & Theory
- [x] Cybersecurity fundamentals documentation
- [x] CIA Triad (Confidentiality, Integrity, Availability)
- [x] Threat types (phishing, malware, DDoS, SQLi, brute force, ransomware)
- [x] Attack vectors (social engineering, wireless, insider threats)
- [x] Linux fundamentals documentation
- [x] Networking fundamentals documentation
- [x] Cryptography basics documentation
- [x] Security tools overview
- [x] Reconnaissance documentation
- [x] Nmap methodology documentation
- [x] Vulnerability assessment methodology
- [x] Wireshark analysis methodology
- [x] Learning outcomes summary

### Cheat Sheets
- [x] Linux command cheat sheet
- [x] Networking command cheat sheet
- [x] Nmap cheat sheet
- [x] Wireshark filter cheat sheet

### Reports & Templates
- [x] Lab setup report
- [x] Reconnaissance report
- [x] Nmap scan report
- [x] Vulnerability assessment report
- [x] Wireshark analysis report
- [x] Final task report

### Diagrams & Scripts
- [x] Lab network architecture diagram
- [x] OSI model diagram
- [x] Linux basics demo script
- [x] Network enumeration demo script
- [x] Cryptography demo script

### Sample Data
- [x] Sample Nmap output (clearly labeled SIMULATED)
- [x] Sample Wireshark analysis (clearly labeled SIMULATED)
- [x] Sample vulnerability findings (clearly labeled SIMULATED)

### Real Lab Evidence (To Be Added)
- [ ] Real lab screenshots (VM settings, IP configs, connectivity)
- [ ] Actual Nmap scan results from Metasploitable2
- [ ] Actual vulnerability scan results
- [ ] Actual Wireshark captures (HTTP, FTP, DNS, TCP)
- [ ] OpenSSL demo output
- [ ] 5-minute video walkthrough

---

## Evidence to be Added

> The following items require real lab evidence and should be added after performing the actual exercises.

### Screenshots Required

| # | Screenshot | Source |
|---|------------|--------|
| 1 | VirtualBox/VMware installed | Host machine |
| 2 | Kali Linux VM running | VM desktop |
| 3 | Metasploitable2 VM running | VM desktop |
| 4 | Host-Only network adapter settings | VirtualBox settings |
| 5 | Kali Linux IP configuration | `ip addr show` output |
| 6 | Metasploitable2 IP configuration | `ifconfig` output |
| 7 | Ping connectivity test | `ping` output |
| 8 | Nmap scan results | Terminal output |
| 9 | Vulnerability scan results | Scanner dashboard |
| 10 | Wireshark — HTTP traffic | Wireshark capture |
| 11 | Wireshark — FTP traffic | Wireshark capture |
| 12 | Wireshark — DNS traffic | Wireshark capture |
| 13 | Wireshark — TCP handshake | Wireshark capture |
| 14 | OpenSSL encryption demo | Terminal output |

### Lab Activities Still Required

- [ ] Complete lab setup with both VMs running
- [ ] Configure Host-Only network and assign IPs
- [ ] Verify connectivity and isolation
- [ ] Run Nmap scans against Metasploitable2
- [ ] Perform vulnerability scan with OpenVAS/Nessus
- [ ] Capture and analyze traffic with Wireshark
- [ ] Run the crypto demo script
- [ ] Record 5-minute video walkthrough

---

## Key Findings

> **Note:** Key findings will be populated after completing real lab exercises.

- **Lab Environment:** [To be completed after setup]
- **Linux Skills:** [To be completed after practice]
- **Networking Knowledge:** [To be completed after study]
- **Cryptography:** [To be completed after demo]
- **Scanning:** [To be completed after Nmap scans]
- **Vulnerability Assessment:** [To be completed after scanner runs]
- **Traffic Analysis:** [To be completed after Wireshark captures]
- **Ethical Awareness:** All activities restricted to authorized lab environment

---

## Security & Ethical Use Disclaimer

> **This repository is for educational and authorized lab use only.**

- All cybersecurity activities documented here are performed **exclusively** within an authorized, isolated local lab environment
- **No public systems, third-party infrastructure, or unauthorized targets** are scanned, tested, or compromised
- The techniques and tools demonstrated are intended for **defensive security learning** and **authorized penetration testing** only
- Unauthorized access to computer systems is **illegal** and unethical
- Always obtain **explicit written authorization** before performing any security testing
- This repository does not contain real credentials, secrets, or sensitive data — only educational examples and lab configurations
- Sample data files are clearly labeled as **SIMULATED** or **DEMONSTRATION** data

---

## References

- [Kali Linux Documentation](https://www.kali.org/docs/)
- [Nmap Documentation](https://nmap.org/book/)
- [Wireshark Documentation](https://www.wireshark.org/docs/)
- [Metasploitable2 Documentation](https://docs.rapid7.com/metasploit/metasploitable2/)
- [OWASP Foundation](https://owasp.org/)
- [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
- [MITRE ATT&CK](https://attack.mitre.org/)

---

<p align="center">
  <em>ApexPlanet Cybersecurity Internship — Task 1: Foundation & Environment Setup</em><br>
  <em>All activities restricted to authorized local lab environment</em><br>
  <em>Days 1–12 | Submission Ready</em>
</p>
