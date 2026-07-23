# Lab Setup Report

> **ApexPlanet Cybersecurity Internship — Task 1**
> Documentation of the virtual lab environment setup.

---

## Report Information

| Field | Value |
|-------|-------|
| **Report Title** | Lab Environment Setup |
| **Date** | [ENTER DATE] |
| **Author** | [YOUR NAME] |
| **Internship** | ApexPlanet Cybersecurity — Task 1 |

---

## Objective

Set up an isolated virtual lab for performing authorized cybersecurity exercises including scanning, vulnerability assessment, and traffic analysis without risk to production systems.

---

## Lab Architecture

```
┌──────────────────────────────────────────────┐
│             Host Computer                     │
│                                               │
│  ┌─────────────────┐  ┌───────────────────┐  │
│  │  Kali Linux     │  │  Metasploitable2  │  │
│  │  192.168.56.10  │  │  192.168.56.101   │  │
│  └────────┬────────┘  └─────────┬─────────┘  │
│           └─────────┬───────────┘             │
│              ┌──────┴──────┐                  │
│              │ Host-Only   │                  │
│              │ 192.168.56.0/24               │
│              └─────────────┘                  │
└──────────────────────────────────────────────┘
         No external/internet access
```

---

## Components

| Component | Details |
|-----------|---------|
| **Virtualization** | [VirtualBox / VMware] |
| **Host OS** | [ENTER HOST OS] |
| **Attacker VM** | Kali Linux |
| **Target VM** | Metasploitable2 |
| **Network** | Host-Only Adapter (192.168.56.0/24) |

---

## Installation Checklist

- [ ] VirtualBox/VMware installed
- [ ] Kali Linux VM imported and configured (4 GB RAM, 2 cores, 40 GB)
- [ ] Metasploitable2 VM imported and configured (1 GB RAM, 1 core, 20 GB)
- [ ] Host-Only network created (192.168.56.0/24)
- [ ] Both VMs attached to Host-Only adapter
- [ ] Kali Linux IP configured: [ENTER KALI IP]
- [ ] Metasploitable2 IP configured: [ENTER TARGET IP]
- [ ] Connectivity verified
- [ ] Internet isolation confirmed
- [ ] Snapshots taken

---

## IP Configuration

| Machine | IP Address | Subnet Mask |
|---------|-----------|-------------|
| Kali Linux | [ENTER IP] | 255.255.255.0 |
| Metasploitable2 | [ENTER IP] | 255.255.255.0 |
| Host (Host-Only) | 192.168.56.1 | 255.255.255.0 |

---

## Connectivity Tests

```bash
# From Kali Linux
ping -c 4 [TARGET IP]
# Expected: 0% packet loss

# Internet isolation test
ping -c 2 8.8.8.8
# Expected: Network unreachable / timeout
```

> [ADD REAL SCREENSHOT HERE: Ping connectivity test]

---

## Screenshot Evidence

| # | Screenshot | Status |
|---|------------|--------|
| 1 | Virtualization software | [ ] |
| 2 | Kali Linux VM running | [ ] |
| 3 | Metasploitable2 VM running | [ ] |
| 4 | Host-Only network settings | [ ] |
| 5 | Kali IP configuration | [ ] |
| 6 | Target IP configuration | [ ] |
| 7 | Ping test results | [ ] |
| 8 | Internet isolation test | [ ] |
| 9 | Wireshark capture on lab interface | [ ] |

---

## Security Measures

1. Host-Only networking ensures no external access
2. No port forwarding configured
3. VMs cannot reach the internet
4. Snapshots allow easy restoration
5. All activities confined to the virtual lab

---

**See also:** [02 — Lab Environment Setup](../docs/02-lab-environment-setup.md)
