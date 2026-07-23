# Nmap Cheat Sheet

> **ApexPlanet Cybersecurity Internship — Task 1**
> Quick reference for Nmap scanning commands. Use only on authorized lab targets.

---

## Host Discovery

| Command | Purpose |
|---------|---------|
| `nmap -sn 192.168.56.0/24` | Ping sweep — find live hosts |
| `nmap -sn -PE 192.168.56.0/24` | ICMP echo ping sweep |
| `nmap -sn -PA80,443 192.168.56.0/24` | TCP ACK ping sweep |
| `nmap -sn -PS22,80 192.168.56.0/24` | TCP SYN ping sweep |

---

## Port Scanning

| Command | Purpose |
|---------|---------|
| `nmap 192.168.56.101` | Default scan (top 1000 TCP ports) |
| `nmap -sS 192.168.56.101` | TCP SYN (stealth) scan |
| `nmap -sT 192.168.56.101` | TCP connect scan |
| `nmap -sU 192.168.56.101` | UDP scan |
| `nmap -p- 192.168.56.101` | All 65535 ports |
| `nmap -p 21,22,80,443 target` | Specific ports |
| `nmap --top-ports 20 target` | Top 20 most common ports |
| `nmap -p 1-1024 target` | Port range |

---

## Service & OS Detection

| Command | Purpose |
|---------|---------|
| `nmap -sV 192.168.56.101` | Service/version detection |
| `nmap -O 192.168.56.101` | OS detection |
| `nmap -A 192.168.56.101` | Aggressive (all detection) |
| `nmap -sV --version-intensity 9 target` | Intense version detection |

---

## NSE Scripts

| Command | Purpose |
|---------|---------|
| `nmap --script=vuln target` | Vulnerability detection |
| `nmap --script=default target` | Default scripts |
| `nmap --script=http-enum target` | HTTP enumeration |
| `nmap --script=ftp-anon target` | Check anonymous FTP |
| `nmap --script=smb-enum-shares target` | SMB share enumeration |
| `nmap --script=ssl-cert target` | SSL certificate info |

---

## Output Formats

| Command | Purpose |
|---------|---------|
| `nmap -oN output.txt target` | Normal format |
| `nmap -oX output.xml target` | XML format |
| `nmap -oG output.gnmap target` | Grepable format |
| `nmap -oA output target` | All formats |

---

## Common Scan Combinations

```bash
# Quick scan of lab target
nmap -sV 192.168.56.101

# Full comprehensive scan
nmap -A -p- -oN full_scan.txt 192.168.56.101

# Quick UDP scan
nmap -sU --top-ports 10 192.168.56.101

# Vulnerability scan
nmap --script=vuln -oN vuln_report.txt 192.168.56.101

# Network discovery
nmap -sn 192.168.56.0/24 -oN hosts.txt
```

---

## Timing Templates

| Flag | Speed | Description |
|------|-------|-------------|
| `-T0` | Paranoid | IDS evasion, very slow |
| `-T1` | Sneaky | Slow, less detectable |
| `-T2` | Polite | Reduced speed/bandwidth |
| `-T3` | Normal | Default speed |
| `-T4` | Aggressive | Faster, reliable networks |
| `-T5` | Insane | Very fast, may miss results |

> **Warning:** Only scan systems you own or have authorization to test.
