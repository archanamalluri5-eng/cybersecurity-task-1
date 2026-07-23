# Security Tools — Familiarization

> **ApexPlanet Cybersecurity Internship – Task 1**  
> This guide introduces essential security tools for use in an authorized local lab environment only.

---

## Table of Contents

- [Wireshark](#wireshark)
- [Nmap](#nmap)
- [Burp Suite](#burp-suite)
- [Netcat](#netcat)

---

## Wireshark

**Purpose:** Network protocol analyzer for capturing and inspecting live network traffic.

**Key features:**

- Real-time packet capture and analysis
- Protocol dissection (HTTP, DNS, TCP, FTP, etc.)
- Display filters for isolating specific traffic
- Packet reconstruction and stream following

**Lab usage examples:**

```bash
# Launch Wireshark from Kali Linux
wireshark &

# Or use tshark for command-line packet capture
tshark -i eth0 -c 100          # Capture 100 packets on eth0
tshark -i eth0 -f "port 80"    # Filter for HTTP traffic
```

**Educational use case:** Capture HTTP traffic between Kali and Metasploitable2 to observe plaintext credentials transmitted over unencrypted protocols.

---

## Nmap

**Purpose:** Network discovery and security auditing tool for scanning hosts, ports, and services.

**Key features:**

- Host discovery (ping sweeps)
- Port scanning (TCP, UDP)
- Service and version detection
- OS fingerprinting
- Scripting engine (NSE) for advanced checks

**Lab usage examples:**

```bash
# Basic scan of a local lab target
nmap 192.168.56.101

# TCP SYN scan with version detection
nmap -sS -sV 192.168.56.101

# Scan specific ports
nmap -p 21,22,80,443 192.168.56.101

# Aggressive scan (OS detection, scripts, version)
nmap -A 192.168.56.101

# UDP scan
nmap -sU --top-ports 20 192.168.56.101
```

> **Important:** Only scan systems you own or have explicit written authorization to test. Unauthorized scanning is illegal.

---

## Burp Suite

**Purpose:** Integrated platform for web application security testing.

**Key features:**

- HTTP proxy/interceptor for modifying requests and responses
- Spider/crawler for mapping web applications
- Intruder for automated fuzzing and brute-force testing
- Repeater for manual request manipulation
- Decoder for encoding/decoding data

**Lab usage:**

1. Configure browser proxy to `127.0.0.1:8080`
2. Intercept HTTP requests to the local DVWA target
3. Modify parameters to understand how web applications process input
4. Test for common vulnerabilities (SQL injection, XSS) in the authorized lab

> **Important:** Burp Suite should only be used against applications you own or are authorized to test.

---

## Netcat

**Purpose:** Swiss-army knife for network connections — reading/writing data across TCP/UDP connections.

**Key features:**

- Simple TCP/UDP client and server
- Port listening
- File transfer
- Banner grabbing

**Lab usage examples:**

```bash
# Start a simple listener on port 4444 (Target machine)
nc -lvnp 4444

# Connect from Kali to the listener
nc 192.168.56.101 4444

# Port scanning (basic)
nc -zv 192.168.56.101 1-100

# Simple file transfer (receiver)
nc -lvnp 4444 > received_file.txt

# Simple file transfer (sender)
nc 192.168.56.101 4444 < file_to_send.txt
```

**Educational use case:** Understanding how network connections work at a low level, testing firewall rules, and learning about reverse shells in a controlled lab environment.

---

## Tools Summary

| Tool | Primary Use | Lab Target |
|------|-------------|------------|
| Wireshark | Packet capture and analysis | Kali ↔ Metasploitable2 |
| Nmap | Network scanning and discovery | Metasploitable2 |
| Burp Suite | Web application testing | DVWA |
| Netcat | Low-level network connections | Metasploitable2 |

---

**Next:** [Reconnaissance](reconnaissance.md)
