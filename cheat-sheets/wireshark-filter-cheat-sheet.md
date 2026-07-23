# Wireshark Filter Cheat Sheet

> **ApexPlanet Cybersecurity Internship — Task 1**
> Quick reference for Wireshark display filters.

---

## Protocol Filters

| Filter | Description |
|--------|-------------|
| `http` | HTTP traffic |
| `https` | HTTPS/TLS traffic |
| `dns` | DNS queries and responses |
| `ftp` | FTP control traffic |
| `ftp-data` | FTP data transfers |
| `ssh` | SSH traffic |
| `tcp` | All TCP traffic |
| `udp` | All UDP traffic |
| `icmp` | ICMP (ping) traffic |
| `arp` | ARP traffic |
| `smtp` | Email (SMTP) traffic |

---

## IP Filters

| Filter | Description |
|--------|-------------|
| `ip.addr == 192.168.56.101` | Traffic to/from IP |
| `ip.src == 192.168.56.10` | Traffic from source |
| `ip.dst == 192.168.56.101` | Traffic to destination |
| `ip.addr == 192.168.56.0/24` | Traffic within subnet |

---

## Port Filters

| Filter | Description |
|--------|-------------|
| `tcp.port == 80` | TCP port 80 |
| `tcp.port == 443` | TCP port 443 |
| `tcp.port == 21` | FTP port |
| `tcp.port == 22` | SSH port |
| `tcp.port == 53` | DNS port |
| `udp.port == 53` | DNS over UDP |
| `tcp.dstport == 80` | Traffic to port 80 |

---

## TCP Flags

| Filter | Description |
|--------|-------------|
| `tcp.flags.syn == 1` | SYN packets |
| `tcp.flags.ack == 1` | ACK packets |
| `tcp.flags.fin == 1` | FIN packets |
| `tcp.flags.rst == 1` | RST packets |
| `tcp.flags.syn == 1 and tcp.flags.ack == 0` | SYN only (no ACK) |
| `tcp.flags.syn == 1 and tcp.flags.ack == 1` | SYN+ACK |

---

## HTTP Filters

| Filter | Description |
|--------|-------------|
| `http.request` | HTTP requests |
| `http.response` | HTTP responses |
| `http.request.method == "GET"` | GET requests |
| `http.request.method == "POST"` | POST requests |
| `http.host == "example.com"` | Specific host |
| `http.response.code == 200` | 200 OK responses |
| `http.response.code == 404` | 404 Not Found |
| `http.cookie` | HTTP cookies |

---

## DNS Filters

| Filter | Description |
|--------|-------------|
| `dns.qry.name == "example.com"` | Specific DNS query |
| `dns.qry.name contains "example"` | Query contains text |
| `dns.flags.rcode == 0` | Successful DNS response |
| `dns.flags.rcode == 3` | NXDOMAIN (not found) |

---

## Combining Filters

| Operator | Description | Example |
|----------|-------------|---------|
| `and` | Both conditions | `ip.addr == 192.168.56.101 and http` |
| `or` | Either condition | `tcp.port == 80 or tcp.port == 443` |
| `not` | Negation | `not arp` |
| `&&` | AND (shorthand) | `tcp && ip.addr == 192.168.56.101` |
| `\|\|` | OR (shorthand) | `http \|\| dns` |

---

## Useful Wireshark Features

| Feature | How to Access |
|---------|---------------|
| Follow TCP Stream | Right-click packet → Follow → TCP Stream |
| Follow HTTP Stream | Right-click HTTP packet → Follow → HTTP Stream |
| Conversation Statistics | Statistics → Conversations |
| Protocol Hierarchy | Statistics → Protocol Hierarchy |
| Endpoint Statistics | Statistics → Endpoints |
| IO Graphs | Statistics → I/O Graphs |
| Export Packets | File → Export Specified Packets |

---

## Example Filter Strings

```
# HTTP traffic to lab target
http and ip.addr == 192.168.56.101

# All DNS traffic
dns

# FTP credentials (follow stream)
ftp

# TCP handshake packets
tcp.flags.syn == 1

# HTTP POST requests only
http.request.method == "POST"

# Failed DNS lookups
dns.flags.rcode != 0

# All traffic except ARP
not arp
```
