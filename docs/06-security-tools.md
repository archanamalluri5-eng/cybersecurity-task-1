# 06 — Security Tools

> **ApexPlanet Cybersecurity Internship — Task 1, Day 6–7**
> Familiarization with essential cybersecurity tools for authorized lab use.

---

## Wireshark

**Purpose:** Network protocol analyzer for capturing and inspecting live traffic.

**What it does:** Captures packets on a network interface and displays them in a human-readable format with protocol dissection.

**Why it is useful:** Identifies unencrypted traffic, analyzes protocols, detects anomalies, and helps understand network behavior.

**Safe lab usage:** Capture traffic between Kali and Metasploitable2 on the Host-Only interface.

**Beginner workflow:**

1. Launch Wireshark
2. Select the Host-Only interface
3. Start capture
4. Generate traffic (browse to Metasploitable2 web server)
5. Stop capture
6. Apply display filters (`http`, `dns`, `ftp`)
7. Follow TCP streams to see full conversations

---

## Nmap

**Purpose:** Network discovery and security auditing tool.

**What it does:** Scans hosts to discover open ports, running services, OS type, and potential vulnerabilities.

**Why it is useful:** Identifies attack surface, maps network topology, detects misconfigurations.

**Safe lab usage:** Scan only the Metasploitable2 VM on the isolated Host-Only network.

**Beginner workflow:**

1. Discover hosts: `nmap -sn 192.168.56.0/24`
2. Scan target: `nmap 192.168.56.101`
3. Service detection: `nmap -sV 192.168.56.101`
4. Full scan: `nmap -A 192.168.56.101`
5. Document results

---

## Burp Suite

**Purpose:** Integrated platform for web application security testing.

**What it does:** Acts as an HTTP proxy to intercept, inspect, and modify web traffic between browser and server.

**Why it is useful:** Identifies web vulnerabilities (SQL injection, XSS), tests authentication, manipulates requests.

**Safe lab usage:** Test against DVWA or Metasploitable2's web interface only.

**Beginner workflow:**

1. Launch Burp Suite
2. Configure browser proxy to `127.0.0.1:8080`
3. Enable Intercept
4. Browse to the lab web application
5. Inspect and modify requests
6. Use Repeater for manual testing

---

## Netcat

**Purpose:** Swiss-army knife for TCP/UDP network connections.

**What it does:** Reads/writes data across network connections, listens for incoming connections, transfers files.

**Why it is useful:** Banner grabbing, simple file transfer, port testing, understanding low-level networking.

**Safe lab usage:** Create a listener on one VM and connect from the other within the Host-Only network.

**Beginner workflow:**

```bash
# Listener (on Metasploitable2)
nc -lvnp 4444

# Client (on Kali)
nc 192.168.56.101 4444
```

---

## Tools Summary

| Tool | Primary Use | Lab Target | Key Command |
|------|-------------|------------|-------------|
| Wireshark | Packet analysis | Kali ↔ Metasploitable2 | `wireshark` |
| Nmap | Network scanning | Metasploitable2 | `nmap -sV [IP]` |
| Burp Suite | Web app testing | DVWA / Metasploitable2 | Launch GUI |
| Netcat | Low-level networking | Metasploitable2 | `nc -lvnp 4444` |

---

**Next:** [07 — Reconnaissance](07-reconnaissance.md)
