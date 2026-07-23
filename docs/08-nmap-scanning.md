# 08 — Nmap Scanning

> **ApexPlanet Cybersecurity Internship — Task 1, Day 8–9**
> Network scanning methodology and professional documentation.

---

## Scan Types

### TCP SYN Scan (Stealth Scan)

```bash
nmap -sS 192.168.56.101
```

Sends SYN packets. If SYN+ACK is received, port is open. Never completes the handshake (stealthier).

### TCP Connect Scan

```bash
nmap -sT 192.168.56.101
```

Completes the full TCP handshake. More detectable but doesn't require root.

### UDP Scan

```bash
nmap -sU --top-ports 20 192.168.56.101
```

Tests UDP ports. Slower than TCP scans.

### Service/Version Detection

```bash
nmap -sV 192.168.56.101
```

Identifies the service and version running on each open port.

### OS Detection

```bash
nmap -O 192.168.56.101
```

Attempts to identify the operating system of the target.

### Aggressive Scan (Combined)

```bash
nmap -A 192.168.56.101
```

Combines OS detection, version detection, script scanning, and traceroute.

### Vulnerability Scripts

```bash
nmap --script=vuln 192.168.56.101
```

Runs NSE scripts to identify known vulnerabilities.

---

## Complete Scan Examples

```bash
# Host discovery
nmap -sn 192.168.56.0/24

# Full port scan
nmap -p- -oN full_scan.txt 192.168.56.101

# Service detection with output
nmap -sV -oN services.txt 192.168.56.101

# All detection methods
nmap -A -oN aggressive.txt 192.168.56.101

# Vulnerability assessment
nmap --script=vuln -oN vulns.txt 192.168.56.101
```

---

## Sample Nmap Output

> **DEMONSTRATION / SIMULATED LOCAL LAB OUTPUT**

```
Starting Nmap 7.94 ( https://nmap.org ) at 2025-01-15 10:30 UTC
Nmap scan report for 192.168.56.101
Host is up (0.0023s latency).

PORT     STATE SERVICE     VERSION
21/tcp   open  ftp         vsftpd 2.3.4
22/tcp   open  ssh         OpenSSH 4.7p1 Debian 8ubuntu1
23/tcp   open  telnet      Linux telnetd
25/tcp   open  smtp        Postfix smtpd
80/tcp   open  http        Apache httpd 2.2.8 ((Ubuntu))
139/tcp  open  netbios-ssn Samba smbd 3.X - 4.X
445/tcp  open  netbios-ssn Samba smbd 3.X - 4.X
3306/tcp open  mysql       MySQL 5.0.51a-3ubuntu5
5432/tcp open  postgresql  PostgreSQL 8.3.0 - 8.3.7
8080/tcp open  http-proxy  Apache Tomcat/Coyote JSP engine 1.1

Service detection performed. Please report any incorrect results.
Nmap done: 1 IP address (1 host up) scanned in 12.34 seconds
```

> This output is from an intentionally vulnerable lab VM. Do not present as real-world evidence.

---

**See also:** [Nmap Cheat Sheet](../cheat-sheets/nmap-cheat-sheet.md), [Nmap Scan Report](../reports/nmap-scan-report.md)

**Next:** [09 — Vulnerability Assessment](09-vulnerability-assessment.md)
