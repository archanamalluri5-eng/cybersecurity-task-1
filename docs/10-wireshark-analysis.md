# 10 — Wireshark Analysis

> **ApexPlanet Cybersecurity Internship — Task 1, Day 10–11**
> Analyzing network traffic in an authorized lab environment.

---

## Capture Setup

1. Open Wireshark on Kali Linux
2. Select the Host-Only interface (`eth0`)
3. Click the blue shark fin to start capture
4. Generate lab traffic (browse to Metasploitable2)
5. Stop capture and analyze

---

## HTTP Traffic Analysis

HTTP (port 80) transmits data in plaintext.

**Filter:** `http`

**What to observe:**
- HTTP methods (GET, POST)
- Request URI and Host header
- User-Agent string
- Cookies and session tokens
- Form data (visible in plaintext)

> **Security risk:** An attacker on the same network can read all HTTP data including credentials.

> [ADD REAL SCREENSHOT HERE: Wireshark HTTP capture]

---

## FTP Traffic Analysis

FTP (port 21) transmits credentials and data in plaintext.

**Filter:** `ftp` or `ftp-data`

**What to observe:**
- `USER` command with username in plaintext
- `PASS` command with password in plaintext
- File transfer data visible in cleartext

> **Security risk:** Complete credential and data exposure through network sniffing.

> [ADD REAL SCREENSHOT HERE: Wireshark FTP capture showing plaintext credentials]

---

## DNS Traffic Analysis

DNS (port 53) resolves domain names.

**Filter:** `dns`

**What to observe:**
- DNS queries (domain names being resolved)
- DNS responses (IP addresses returned)
- Query types (A, AAAA, MX, TXT)

> **Security risk:** DNS queries are unencrypted and can be intercepted or spoofed.

> [ADD REAL SCREENSHOT HERE: Wireshark DNS capture]

---

## TCP Handshake Analysis

**Filter:** `tcp.flags.syn == 1`

**Three-way handshake:**
```
Client → Server: SYN        (Flags: SYN)
Server → Client: SYN+ACK    (Flags: SYN, ACK)
Client → Server: ACK        (Flags: ACK)
```

**What to observe:**
- Sequence numbers
- SYN, SYN-ACK, ACK flags
- Source and destination ports

> [ADD REAL SCREENSHOT HERE: Wireshark TCP handshake]

---

## Basic Packet Filtering

| Filter | Description |
|--------|-------------|
| `http` | HTTP traffic |
| `dns` | DNS traffic |
| `ftp` | FTP traffic |
| `tcp.port == 21` | Port 21 traffic |
| `ip.addr == 192.168.56.101` | Traffic to/from specific IP |
| `tcp.flags.syn == 1` | SYN packets |
| `http.request.method == "POST"` | HTTP POST requests |
| `tcp \|\| udp` | All TCP and UDP traffic |

---

## Security Risks of Unencrypted Protocols

| Protocol | Risk | Mitigation |
|----------|------|-----------|
| HTTP | Credentials visible | Use HTTPS |
| FTP | Credentials and files visible | Use SFTP |
| Telnet | All commands visible | Use SSH |
| DNS (standard) | Queries visible | Use DoH/DoT |

---

**See also:** [Wireshark Filter Cheat Sheet](../cheat-sheets/wireshark-filter-cheat-sheet.md), [Wireshark Analysis Report](../reports/wireshark-analysis-report.md)

**Next:** [11 — Learning Outcomes](11-learning-outcomes.md)
