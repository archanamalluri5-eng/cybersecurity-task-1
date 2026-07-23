# Reconnaissance

> **ApexPlanet Cybersecurity Internship – Task 1**  
> Reconnaissance is the process of gathering information about a target before attempting an attack. This guide covers methods for educational awareness in a lab environment.

---

## ⚠️ Authorization Required

> **All reconnaissance activities must be performed only on systems you own or have explicit written authorization to test.** Unauthorized reconnaissance against third-party systems may violate laws including the Computer Fraud and Abuse Act (CFAA) and equivalent legislation in other jurisdictions.

---

## Table of Contents

- [Passive vs Active Reconnaissance](#passive-vs-active-reconnaissance)
- [Passive Reconnaissance Techniques](#passive-reconnaissance-techniques)
- [Active Reconnaissance Techniques](#active-reconnaissance-techniques)

---

## Passive vs Active Reconnaissance

| Aspect | Passive | Active |
|--------|---------|--------|
| Direct interaction with target | No | Yes |
| Detectability | Very difficult to detect | Can be logged and detected |
| Information quality | General/public | Specific/detailed |
| Risk level | Low legal risk | Higher legal risk |
| Examples | WHOIS, DNS lookup, search engines | Nmap, port scanning, banner grabbing |

---

## Passive Reconnaissance Techniques

### WHOIS

Queries public registration databases for domain ownership information.

```bash
whois example.com
```

**Information returned:**
- Domain registrar
- Registration and expiration dates
- Registrant organization (may be privacy-protected)
- Name servers
- Contact information (if public)

### nslookup / dig

DNS lookups reveal information about a domain's infrastructure.

```bash
# nslookup
nslookup example.com
nslookup -type=MX example.com      # Mail server records
nslookup -type=TXT example.com     # Text records (SPF, DKIM)

# dig (more detailed)
dig example.com
dig example.com ANY                # All record types
dig +short example.com             # IP only
dig -x 93.184.216.34               # Reverse DNS lookup
```

### Google Search Operators for OSINT Awareness

Google can reveal accidentally exposed information. These operators are useful for understanding how information can be publicly discovered.

| Operator | Purpose | Example |
|----------|---------|---------|
| `site:` | Search within a specific domain | `site:example.com` |
| `filetype:` | Find specific file types | `filetype:pdf site:example.com` |
| `intitle:` | Search in page titles | `intitle:"index of"` |
| `inurl:` | Search in URLs | `inurl:admin` |
| `cache:` | View cached version of a page | `cache:example.com` |

> **Note:** These techniques demonstrate how easily public information can be discovered. Always use this knowledge for defensive purposes and authorized testing only.

### Shodan

Shodan is a search engine for internet-connected devices (IoT, servers, industrial systems).

- **What it reveals:** Open ports, services, banners, geolocation
- **Educational use:** Understanding your own internet-facing exposure
- **Lab note:** Shodan scans the public internet; use it to check only your own public-facing assets

---

## Active Reconnaissance Techniques

Active reconnaissance involves direct interaction with the target system.

### Network Scanning

```bash
# Discover live hosts on the lab network
nmap -sn 192.168.56.0/24

# Port scan a specific lab target
nmap -sS -p- 192.168.56.101
```

### Banner Grabbing

Identifying services running on open ports by reading their banners.

```bash
# Using Netcat
nc -nv 192.168.56.101 21

# Using Nmap
nmap -sV 192.168.56.101
```

### Service Enumeration

Probing specific services for detailed information.

```bash
# FTP enumeration
ftp 192.168.56.101

# HTTP enumeration
nikto -h http://192.168.56.101

# SMB enumeration
enum4linux 192.168.56.101
```

---

**Next:** [Nmap Scan Report](nmap-scan-report.md)
