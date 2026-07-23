# Wireshark Analysis Report

> **ApexPlanet Cybersecurity Internship — Task 1**
> Network traffic analysis report for authorized local lab traffic.

---

## ⚠️ Authorization Statement

> All traffic captured and analyzed in this report was generated within an isolated Host-Only network lab environment between Kali Linux and Metasploitable2. No external or unauthorized traffic was captured.

---

## Report Information

| Field | Value |
|-------|-------|
| **Report Title** | Wireshark Traffic Analysis |
| **Date** | [ENTER DATE] |
| **Author** | [YOUR NAME] |
| **Tool** | Wireshark [VERSION] |
| **Interface** | eth0 (Host-Only Adapter) |
| **Network** | 192.168.56.0/24 |

---

## Capture Objective

Analyze network traffic between Kali Linux and Metasploitable2 to identify unencrypted protocols, observe the TCP handshake, and understand the security risks of transmitting data in plaintext.

---

## Environment

| Component | Details |
|-----------|---------|
| **Capture Machine** | Kali Linux |
| **Traffic Source** | Kali Linux ↔ Metasploitable2 |
| **Network** | Host-Only (192.168.56.0/24) |
| **Interface** | eth0 |

---

## Protocols Analyzed

### HTTP Traffic

**Filter:** `http`

**Observations:**
> [ADD ACTUAL RESULT HERE — describe what you observed in the HTTP capture]

**Security Implication:** HTTP data is transmitted in plaintext, exposing credentials, cookies, and form data.

> [ADD REAL SCREENSHOT HERE: HTTP traffic capture]

---

### FTP Traffic

**Filter:** `ftp`

**Observations:**
> [ADD ACTUAL RESULT HERE — describe what you observed in the FTP capture, including plaintext credentials]

**Security Implication:** FTP transmits username and password in cleartext, visible to anyone sniffing the network.

> [ADD REAL SCREENSHOT HERE: FTP traffic capture]

---

### DNS Traffic

**Filter:** `dns`

**Observations:**
> [ADD ACTUAL RESULT HERE — describe DNS queries and responses observed]

**Security Implication:** Standard DNS queries are unencrypted and can be intercepted or spoofed.

> [ADD REAL SCREENSHOT HERE: DNS traffic capture]

---

### TCP Handshake

**Filter:** `tcp.flags.syn == 1`

**Observations:**
> [ADD ACTUAL RESULT HERE — describe the SYN, SYN-ACK, ACK sequence observed]

> [ADD REAL SCREENSHOT HERE: TCP handshake capture]

---

## Filters Used

| Filter | Purpose |
|--------|---------|
| `http` | Isolate HTTP traffic |
| `ftp` | Isolate FTP traffic |
| `dns` | Isolate DNS traffic |
| `tcp.flags.syn == 1` | Find TCP SYN packets |
| `ip.addr == [TARGET IP]` | Filter by target IP |

---

## Security Implications

| Protocol | Risk | Severity |
|----------|------|----------|
| HTTP | Credentials and data visible in plaintext | High |
| FTP | Username and password transmitted in cleartext | High |
| DNS | Queries visible, susceptible to spoofing | Medium |
| Telnet | All commands visible | High |

---

## Recommendations

1. Use HTTPS instead of HTTP for web traffic
2. Use SFTP or SCP instead of FTP for file transfers
3. Use SSH instead of Telnet for remote access
4. Implement DNS over HTTPS (DoH) or DNS over TLS (DoT)
5. Use encrypted protocols for all sensitive communications

---

**See also:** [10 — Wireshark Analysis](../docs/10-wireshark-analysis.md), [Wireshark Filter Cheat Sheet](../cheat-sheets/wireshark-filter-cheat-sheet.md)
