# Reconnaissance Report

> **ApexPlanet Cybersecurity Internship — Task 1**
> Documentation of reconnaissance activities performed on an authorized local lab target.

---

## ⚠️ Authorization Statement

> All reconnaissance activities documented in this report were performed **exclusively** on an intentionally vulnerable virtual machine (Metasploitable2) within an isolated Host-Only network lab environment. No public IP addresses, third-party systems, or unauthorized targets were scanned or queried.

---

## Report Information

| Field | Value |
|-------|-------|
| **Report Title** | Reconnaissance Report |
| **Date** | [ENTER DATE] |
| **Author** | [YOUR NAME] |
| **Internship** | ApexPlanet Cybersecurity — Task 1 |

---

## Target

| Field | Value |
|-------|-------|
| **Target System** | Metasploitable2 (Intentionally Vulnerable VM) |
| **Target IP** | [ENTER TARGET IP] |
| **Network** | Host-Only (192.168.56.0/24) |
| **Authorization** | Lab exercise — authorized local testing |

---

## Scope

| Aspect | Details |
|--------|---------|
| **In Scope** | Metasploitable2 VM on Host-Only network |
| **Out of Scope** | All public IPs, third-party systems, production networks |
| **Methods** | Passive and active reconnaissance against lab target only |

---

## Tools Used

| Tool | Purpose |
|------|---------|
| WHOIS | Domain registration lookup |
| nslookup | DNS resolution |
| dig | Detailed DNS queries |
| Nmap | Host discovery and port scanning |
| Netcat | Banner grabbing |

---

## Passive Reconnaissance Findings

### WHOIS

```bash
whois [target domain if applicable]
```

> [ADD ACTUAL RESULT HERE]

### DNS Lookup

```bash
nslookup [ENTER TARGET IP]
dig [ENTER TARGET IP]
```

> [ADD ACTUAL RESULT HERE]

---

## Active Reconnaissance Findings

### Host Discovery

```bash
nmap -sn 192.168.56.0/24
```

> [ADD ACTUAL RESULT HERE]

### Port Scanning

```bash
nmap -sS [ENTER TARGET IP]
```

> [ADD ACTUAL RESULT HERE]

### Banner Grabbing

```bash
nc -nv [ENTER TARGET IP] 21
```

> [ADD ACTUAL RESULT HERE]

---

## Summary of Findings

| # | Finding | Type | Details |
|---|---------|------|---------|
| 1 | [Finding] | [Passive/Active] | [Details] |
| 2 | [Finding] | [Passive/Active] | [Details] |

---

## Limitations

- Reconnaissance limited to the authorized lab target only
- Passive methods limited to publicly available information
- Active methods confined to the isolated Host-Only network

---

**See also:** [07 — Reconnaissance](../docs/07-reconnaissance.md)
