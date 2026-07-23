# Sample Wireshark Analysis

> **DEMONSTRATION / SIMULATED ANALYSIS**
> This is NOT real capture data. It is a demonstration of what Wireshark analysis looks like for educational purposes.

---

## Capture Summary

| Field | Value |
|-------|-------|
| **Capture File** | lab-capture.pcapng |
| **Interface** | eth0 (Host-Only) |
| **Duration** | 45 seconds |
| **Packets Captured** | 1,247 |
| **Protocols** | TCP, HTTP, DNS, FTP, ARP |

---

## HTTP Traffic Analysis (Simulated)

**Filter applied:** `http`

### Observations

1. HTTP GET request to `192.168.56.101/dvwa/login.php`
2. HTTP POST request with form data visible in plaintext:
   - `username=admin`
   - `password=password`
3. Server responds with HTTP 302 redirect (login successful)
4. Subsequent GET requests contain session cookie in plaintext

### Security Implication

> HTTP transmits all data in plaintext. The username and password were clearly visible in the packet capture. An attacker on the same network could capture these credentials using simple packet sniffing.

---

## FTP Traffic Analysis (Simulated)

**Filter applied:** `ftp`

### Observations

1. FTP connection initiated to `192.168.56.101:21`
2. Server banner: `220 (vsFTPd 2.3.4)`
3. Client sends: `USER msfadmin` (plaintext)
4. Server responds: `331 Please specify the password.`
5. Client sends: `PASS msfadmin` (plaintext)
6. Server responds: `230 Login successful.`

### Security Implication

> FTP transmits all credentials in plaintext. The username `msfadmin` and password `msfadmin` were clearly visible. This demonstrates why SFTP or SSH-based alternatives should be used instead of FTP.

---

## DNS Traffic Analysis (Simulated)

**Filter applied:** `dns`

### Observations

1. DNS query: `A record request for www.example.com`
2. DNS response: `93.184.216.34`
3. TTL: 3600 seconds
4. Query ID: 0x1234

### Security Implication

> DNS queries are unencrypted and can be intercepted. An attacker could perform DNS spoofing to redirect users to malicious servers.

---

## TCP Handshake Analysis (Simulated)

**Filter applied:** `tcp.flags.syn == 1`

### Observed Three-Way Handshake

| Step | Source | Destination | Flags | Seq | Ack |
|------|--------|-------------|-------|-----|-----|
| 1 | 192.168.56.10 | 192.168.56.101:80 | SYN | 0 | 0 |
| 2 | 192.168.56.101:80 | 192.168.56.10 | SYN+ACK | 0 | 1 |
| 3 | 192.168.56.10 | 192.168.56.101:80 | ACK | 1 | 1 |

### Observation

> The TCP handshake completed normally. The SYN, SYN-ACK, and ACK flags were observed in the expected sequence with incrementing sequence numbers.

---

> **Remember:** This is simulated data for educational purposes. Replace with actual Wireshark captures when available.
