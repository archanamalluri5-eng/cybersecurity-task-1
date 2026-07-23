# 07 — Reconnaissance

> **ApexPlanet Cybersecurity Internship — Task 1, Day 7–8**
> Gathering information about targets before security testing.

---

## ⚠️ Authorization Required

> **All reconnaissance must be performed only on systems you own or have explicit written authorization to test.** Unauthorized reconnaissance may violate computer fraud laws.

---

## Passive vs Active Reconnaissance

| Aspect | Passive | Active |
|--------|---------|--------|
| Direct contact with target | No | Yes |
| Detectability | Very difficult | Can be logged |
| Information quality | General/public | Specific/detailed |
| Legal risk | Low | Higher |
| Examples | WHOIS, DNS, search engines | Nmap, port scanning |

---

## Passive Reconnaissance

### WHOIS

Queries public registration databases.

```bash
whois example.com
```

Returns: registrar, registration dates, name servers, contact info.

### nslookup / dig

DNS lookups reveal infrastructure information.

```bash
nslookup example.com
nslookup -type=MX example.com      # Mail servers
dig example.com +short              # Quick IP lookup
dig -x 93.184.216.34               # Reverse DNS
```

### Google Search Operators (OSINT Awareness)

| Operator | Purpose | Example |
|----------|---------|---------|
| `site:` | Search within domain | `site:example.com` |
| `filetype:` | Find file types | `filetype:pdf site:example.com` |
| `intitle:` | Search page titles | `intitle:"index of"` |
| `inurl:` | Search URLs | `inurl:admin` |
| `cache:` | View cached page | `cache:example.com` |

### Shodan

Internet-connected device search engine. Use to check only your own public-facing assets.

---

## Active Reconnaissance

### Network Scanning

```bash
nmap -sn 192.168.56.0/24          # Discover live hosts
nmap -sS -p- 192.168.56.101       # Port scan lab target
```

### Banner Grabbing

```bash
nc -nv 192.168.56.101 21          # Read FTP banner
nmap -sV 192.168.56.101           # Service version detection
```

### Service Enumeration

```bash
nikto -h http://192.168.56.101    # Web server scan
enum4linux 192.168.56.101         # SMB enumeration
```

---

**See also:** [Reconnaissance Report](../reports/reconnaissance-report.md)

**Next:** [08 — Nmap Scanning](08-nmap-scanning.md)
