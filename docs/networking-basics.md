# Networking Basics

> **ApexPlanet Cybersecurity Internship – Task 1**  
> Understanding networking is fundamental to cybersecurity. This guide covers essential networking concepts.

---

## Table of Contents

- [OSI Model](#osi-model)
- [TCP/IP Model](#tcpip-model)
- [TCP vs UDP](#tcp-vs-udp)
- [DNS](#dns)
- [HTTP vs HTTPS](#http-vs-https)
- [IP Addressing](#ip-addressing)
- [Subnetting Basics](#subnetting-basics)
- [NAT](#nat-network-address-translation)

---

## OSI Model

The Open Systems Interconnection (OSI) model describes network communication in seven layers:

| Layer | Name | Description | Protocols/Examples |
|-------|------|-------------|-------------------|
| 7 | Application | User-facing network services | HTTP, FTP, DNS, SMTP, SSH |
| 6 | Presentation | Data formatting, encryption, compression | SSL/TLS, JPEG, ASCII |
| 5 | Session | Manages sessions/connections between applications | NetBIOS, RPC |
| 4 | Transport | End-to-end communication, reliability, flow control | TCP, UDP |
| 3 | Network | Logical addressing and routing | IP, ICMP, routers |
| 2 | Data Link | Physical addressing (MAC), frame transmission | Ethernet, switches |
| 1 | Physical | Raw bit transmission over physical medium | Cables, hubs, wireless signals |

**Mnemonic (top to bottom):** "All People Seem To Need Data Processing"

**Security relevance:**
- Firewalls operate primarily at Layers 3–7
- Network switches operate at Layer 2
- Encryption (SSL/TLS) operates at Layer 6
- Understanding layers helps identify where attacks occur and how to defend against them

---

## TCP/IP Model

The TCP/IP model is the practical model used on the internet, with four layers:

| Layer | Corresponds to OSI | Description |
|-------|-------------------|-------------|
| Application | Layers 5–7 | User applications and protocols (HTTP, DNS, FTP) |
| Transport | Layer 4 | End-to-end data transfer (TCP, UDP) |
| Internet | Layer 3 | Routing and IP addressing (IP, ICMP) |
| Network Access | Layers 1–2 | Physical network access (Ethernet, Wi-Fi) |

---

## TCP vs UDP

### TCP (Transmission Control Protocol)

- **Connection-oriented:** Requires a three-way handshake (SYN → SYN-ACK → ACK) before data transfer
- **Reliable:** Guarantees delivery, order, and error checking
- **Slower:** Overhead from connection management
- **Use cases:** Web browsing (HTTP), email (SMTP), file transfer (FTP), SSH

### UDP (User Datagram Protocol)

- **Connectionless:** No handshake; data is sent immediately
- **Unreliable:** No guarantee of delivery or order
- **Faster:** Minimal overhead
- **Use cases:** DNS queries, video streaming, VoIP, online gaming, DHCP

| Feature | TCP | UDP |
|---------|-----|-----|
| Connection | Oriented | Connectionless |
| Reliability | Guaranteed | Best-effort |
| Speed | Slower | Faster |
| Header Size | 20 bytes | 8 bytes |
| Flow Control | Yes | No |
| Examples | HTTP, SSH, FTP | DNS, DHCP, VoIP |

---

## DNS (Domain Name System)

DNS translates human-readable domain names into IP addresses.

**Resolution process:**

1. User types `www.example.com` in a browser
2. Browser checks local cache
3. Query sent to recursive resolver (usually ISP DNS)
4. Resolver queries root servers → TLD servers → authoritative servers
5. IP address returned and cached

**Common DNS record types:**

| Record | Purpose |
|--------|---------|
| A | Maps domain to IPv4 address |
| AAAA | Maps domain to IPv6 address |
| CNAME | Alias pointing to another domain |
| MX | Mail server for the domain |
| TXT | Text information (SPF, DKIM) |
| NS | Name server for the domain |

**Security considerations:**
- DNS spoofing/poisoning can redirect users to malicious sites
- DNSSEC adds cryptographic verification to DNS responses
- DNS over HTTPS (DoH) and DNS over TLS (DoT) encrypt DNS queries

---

## HTTP vs HTTPS

### HTTP (Hypertext Transfer Protocol)

- Data transmitted in **plaintext**
- Vulnerable to eavesdropping and man-in-the-middle attacks
- Default port: 80

### HTTPS (HTTP Secure)

- Data encrypted using SSL/TLS
- Provides confidentiality, integrity, and authentication
- Uses digital certificates to verify server identity
- Default port: 443

**In a lab environment:** Using Wireshark on HTTP traffic shows readable data, while HTTPS traffic appears encrypted — demonstrating why HTTPS is essential.

---

## IP Addressing

### IPv4

- 32-bit address written as four octets: `192.168.1.100`
- Approximately 4.3 billion unique addresses
- Classes:

| Class | Range | Default Subnet Mask |
|-------|-------|-------------------|
| A | 1.0.0.0 – 126.255.255.255 | 255.0.0.0 (/8) |
| B | 128.0.0.0 – 191.255.255.255 | 255.255.0.0 (/16) |
| C | 192.0.0.0 – 223.255.255.255 | 255.255.255.0 (/24) |

### Private IP Ranges (RFC 1918)

| Range | CIDR |
|-------|------|
| 10.0.0.0 – 10.255.255.255 | 10.0.0.0/8 |
| 172.16.0.0 – 172.31.255.255 | 172.16.0.0/12 |
| 192.168.0.0 – 192.168.255.255 | 192.168.0.0/16 |

These are used in local/private networks and are not routable on the public internet.

---

## Subnetting Basics

Subnetting divides a network into smaller, manageable sub-networks.

**Example:** Splitting `192.168.56.0/24` into two subnets:

- `192.168.56.0/25` — Hosts 1–126 (126 usable hosts)
- `192.168.56.128/25` — Hosts 129–254 (126 usable hosts)

**Formula:** Usable hosts = 2^n - 2 (where n = number of host bits)

**Common subnet masks:**

| CIDR | Subnet Mask | Usable Hosts |
|------|-------------|--------------|
| /24 | 255.255.255.0 | 254 |
| /25 | 255.255.255.128 | 126 |
| /26 | 255.255.255.192 | 62 |
| /27 | 255.255.255.224 | 30 |

---

## NAT (Network Address Translation)

NAT translates private IP addresses to public IP addresses, allowing multiple devices on a private network to share a single public IP address.

**Types:**

- **Static NAT:** One-to-one mapping of private to public IP
- **Dynamic NAT:** Maps private IPs to a pool of public IPs
- **PAT (Port Address Translation):** Multiple private IPs share one public IP using different port numbers (most common home router implementation)

**Security relevance:**
- NAT provides a basic layer of obfuscation by hiding internal network structure
- It is not a substitute for proper firewalling
- Our lab uses Host-Only networking, keeping all traffic isolated from external networks

---

**Next:** [Cryptography Basics](cryptography-basics.md)
