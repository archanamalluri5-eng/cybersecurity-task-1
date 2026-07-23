# Wireshark Traffic Analysis

> **ApexPlanet Cybersecurity Internship – Task 1**  
> This guide covers analyzing network traffic in an authorized lab environment using Wireshark. All traffic was captured between Kali Linux and Metasploitable2 on an isolated Host-Only network.

---

## Table of Contents

- [Capture Setup](#capture-setup)
- [HTTP Traffic Analysis](#http-traffic-analysis)
- [FTP Traffic Analysis](#ftp-traffic-analysis)
- [DNS Traffic Analysis](#dns-traffic-analysis)
- [TCP Handshake Analysis](#tcp-handshake-analysis)
- [Basic Packet Filtering](#basic-packet-filtering)
- [Security Risks of Unencrypted Protocols](#security-risks-of-unencrypted-protocols)

---

## Capture Setup

### Starting a Capture

1. Open Wireshark on Kali Linux
2. Select the network interface (e.g., `eth0` — the Host-Only adapter)
3. Click the blue shark fin button to start capture
4. Perform the lab activity (e.g., browse to Metasploitable2's web server)
5. Stop the capture

### Recommended Interface

- Use the **Host-Only Adapter** interface to ensure only lab traffic is captured
- Avoid capturing traffic on interfaces connected to production networks

---

## HTTP Traffic Analysis

HTTP (port 80) transmits data in plaintext, making it fully visible in Wireshark.

### Steps

1. Start a Wireshark capture on the Host-Only interface
2. From Kali, open a browser and navigate to `http://[Target IP]/`
3. In Wireshark, apply the display filter: `http`
4. Locate HTTP GET and POST requests

### What to Observe

- **HTTP Method:** GET, POST, etc.
- **Request URI:** The path requested (e.g., `/dvwa/`)
- **Host header:** The target server address
- **User-Agent:** Browser information
- **Cookies:** Session tokens (if any)

### Security Risk

> HTTP traffic is completely unencrypted. An attacker on the same network can capture and read all data including form submissions, cookies, and credentials.

> **[Add Screenshot Here: Wireshark HTTP traffic capture]**

---

## FTP Traffic Analysis

FTP (port 21) transmits credentials and data in plaintext.

### Steps

1. Start a Wireshark capture
2. From Kali, connect to the Metasploitable2 FTP server:
   ```bash
   ftp [Target IP]
   ```
3. Log in with credentials (e.g., `msfadmin`/`msfadmin` in the lab)
4. Stop the capture
5. Filter for FTP traffic: `ftp` or `ftp-data`

### What to Observe

- **FTP commands:** USER, PASS, LIST, RETR, STOR
- **Username and password visible in plaintext:**
  ```
  USER msfadmin
  PASS msfadmin
  ```
- **Data transfer content visible in plaintext**

### Security Risk

> FTP transmits all credentials and data in plaintext. Anyone sniffing the network can see usernames, passwords, and transferred files. Use SFTP or SSH-based alternatives in production.

> **[Add Screenshot Here: Wireshark FTP traffic showing plaintext credentials]**

---

## DNS Traffic Analysis

DNS (port 53) resolves domain names to IP addresses.

### Steps

1. Start a Wireshark capture
2. From Kali, perform a DNS lookup:
   ```bash
   nslookup google.com
   ```
3. Filter DNS traffic in Wireshark: `dns`

### What to Observe

- **DNS Query:** The domain name being looked up
- **DNS Response:** The resolved IP address
- **Query type:** A (IPv4), AAAA (IPv6), MX (mail), etc.
- **Response codes:** Noerror (success), NXDOMAIN (not found)

### Security Risk

> Standard DNS queries are unencrypted and can be intercepted or spoofed. DNS spoofing attacks can redirect users to malicious servers. DNS over HTTPS (DoH) and DNS over TLS (DoT) provide encryption.

> **[Add Screenshot Here: Wireshark DNS traffic capture]**

---

## TCP Handshake Analysis

TCP uses a three-way handshake to establish connections.

### The Three-Way Handshake

```
Client              Server
  |---- SYN ------->|      Step 1: Client initiates connection
  |<--- SYN+ACK ----|      Step 2: Server acknowledges and responds
  |---- ACK ------->|      Step 3: Client confirms connection
  |     Connection Established |
```

### Steps

1. Start a Wireshark capture
2. Generate any TCP traffic (e.g., browse to the web server on Metasploitable2)
3. Filter: `tcp.flags.syn == 1`
4. Observe the SYN, SYN-ACK, and ACK packets

### What to Observe

- **Sequence numbers** incrementing
- **SYN flag** set on the first packet
- **SYN+ACK flags** on the response
- **ACK flag** on the third packet
- **Source and destination ports**

### Connection Termination (Four-Way)

```
Client              Server
  |---- FIN+ACK ---->|     Step 1: Client requests close
  |<--- ACK ---------|     Step 2: Server acknowledges
  |<--- FIN+ACK -----|     Step 3: Server requests close
  |---- ACK -------->|     Step 4: Client acknowledges
```

> **[Add Screenshot Here: Wireshark TCP three-way handshake]**

---

## Basic Packet Filtering

### Display Filters

| Filter | Description |
|--------|-------------|
| `http` | HTTP traffic only |
| `dns` | DNS queries and responses |
| `ftp` | FTP control traffic |
| `tcp.port == 21` | Traffic on port 21 |
| `ip.addr == 192.168.56.101` | Traffic to/from specific IP |
| `tcp.flags.syn == 1` | TCP SYN packets |
| `http.request.method == "POST"` | HTTP POST requests |
| `dns.qry.name contains "example"` | DNS queries containing "example" |
| `tcp` | All TCP traffic |
| `udp` | All UDP traffic |

### Combining Filters

```
http && ip.addr == 192.168.56.101
dns && !dns.flags.rcode == 0
ftp || ftp-data
```

### Useful Wireshark Features

- **Follow TCP Stream:** Right-click a packet → Follow → TCP Stream (shows full conversation)
- **Conversation Statistics:** Statistics → Conversations
- **Protocol Hierarchy:** Statistics → Protocol Hierarchy
- **Export Packets:** File → Export Specified Packets

---

## Security Risks of Unencrypted Protocols

| Protocol | Risk | Impact |
|----------|------|--------|
| HTTP | Credentials, cookies, form data visible | Session hijacking, data theft |
| FTP | Username, password, files visible in plaintext | Credential theft, data interception |
| Telnet | All commands and output visible | Credential theft, command injection |
| DNS (standard) | Query targets visible, spoofable | Redirect attacks, information leakage |
| SMTP (standard) | Email content visible | Email interception |

### Mitigations

- Use **HTTPS** instead of HTTP
- Use **SFTP** or **SCP** instead of FTP
- Use **SSH** instead of Telnet
- Use **DNS over HTTPS (DoH)** or **DNS over TLS (DoT)**
- Use **TLS** for email (SMTPS, IMAPS)

---

> **[Add Screenshot Here: Wireshark protocol hierarchy showing unencrypted traffic]**

---

**Next:** [Back to README](../README.md)
