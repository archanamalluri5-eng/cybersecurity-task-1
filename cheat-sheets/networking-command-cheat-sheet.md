# Networking Command Cheat Sheet

> **ApexPlanet Cybersecurity Internship — Task 1**
> Quick reference for networking commands in Linux.

---

## Interface Configuration

| Command | Purpose | Example |
|---------|---------|---------|
| `ip addr show` | Show all IP addresses | `ip addr show` |
| `ip addr show eth0` | Show specific interface | `ip addr show eth0` |
| `ip link show` | Show network interfaces | `ip link show` |
| `ip link set eth0 up` | Bring interface up | `sudo ip link set eth0 up` |
| `ip link set eth0 down` | Bring interface down | `sudo ip link set eth0 down` |
| `ifconfig` | Show interfaces (legacy) | `ifconfig` |
| `ifconfig eth0` | Show specific interface | `ifconfig eth0` |

---

## Connectivity Testing

| Command | Purpose | Example |
|---------|---------|---------|
| `ping` | Test connectivity | `ping 192.168.56.101` |
| `ping -c 4` | Send 4 packets | `ping -c 4 google.com` |
| `ping -i 2` | 2-second interval | `ping -i 2 192.168.56.101` |

---

## DNS

| Command | Purpose | Example |
|---------|---------|---------|
| `nslookup` | Basic DNS lookup | `nslookup example.com` |
| `nslookup -type=MX` | Mail server lookup | `nslookup -type=MX example.com` |
| `dig` | Detailed DNS lookup | `dig example.com` |
| `dig +short` | Quick IP only | `dig +short example.com` |
| `dig ANY` | All record types | `dig example.com ANY` |
| `dig -x` | Reverse DNS | `dig -x 93.184.216.34` |

---

## Routing

| Command | Purpose | Example |
|---------|---------|---------|
| `ip route show` | Show routing table | `ip route show` |
| `ip route add` | Add route | `sudo ip route add 10.0.0.0/8 via 192.168.1.1` |
| `route -n` | Routing table (legacy) | `route -n` |
| `traceroute` | Trace network path | `traceroute 192.168.56.101` |
| `mtr` | Combined ping + traceroute | `mtr 192.168.56.101` |

---

## Port & Connection Information

| Command | Purpose | Example |
|---------|---------|---------|
| `ss -tuln` | Show listening ports | `ss -tuln` |
| `ss -tunp` | Show ports with processes | `ss -tunp` |
| `netstat -tuln` | Show listening ports (legacy) | `netstat -tuln` |
| `netstat -an` | All connections | `netstat -an` |
| `netstat -tp` | TCP connections with PIDs | `netstat -tp` |

---

## ARP

| Command | Purpose | Example |
|---------|---------|---------|
| `arp -a` | Show ARP table | `arp -a` |
| `ip neigh` | Show neighbor table | `ip neigh` |

---

## HTTP / File Transfer

| Command | Purpose | Example |
|---------|---------|---------|
| `curl` | HTTP requests | `curl http://192.168.56.101` |
| `curl -I` | Headers only | `curl -I http://192.168.56.101` |
| `wget` | Download files | `wget http://192.168.56.101/file.txt` |

---

## Network Configuration Files

| File | Purpose |
|------|---------|
| `/etc/network/interfaces` | Network interface configuration |
| `/etc/resolv.conf` | DNS resolver configuration |
| `/etc/hosts` | Local hostname resolution |
| `/etc/hostname` | System hostname |
