# Linux Command Cheat Sheet

> **ApexPlanet Cybersecurity Internship – Task 1**  
> Quick reference for essential Linux commands used in cybersecurity lab environments.

---

## Navigation

| Command | Purpose | Example |
|---------|---------|---------|
| `pwd` | Print current directory | `pwd` |
| `ls` | List directory contents | `ls -la` |
| `cd` | Change directory | `cd /home/kali` |
| `cd ..` | Go up one directory | `cd ..` |
| `cd ~` | Go to home directory | `cd ~` |

---

## File & Directory Operations

| Command | Purpose | Example |
|---------|---------|---------|
| `mkdir` | Create directory | `mkdir lab-files` |
| `mkdir -p` | Create nested directories | `mkdir -p a/b/c` |
| `touch` | Create empty file | `touch notes.txt` |
| `cp` | Copy file | `cp file.txt backup.txt` |
| `cp -r` | Copy directory recursively | `cp -r dir1/ dir2/` |
| `mv` | Move or rename | `mv old.txt new.txt` |
| `rm` | Remove file | `rm file.txt` |
| `rm -r` | Remove directory recursively | `rm -r dir/` |
| `cat` | Display file contents | `cat file.txt` |
| `less` | View file with paging | `less largefile.txt` |
| `head` | First 10 lines | `head file.txt` |
| `tail` | Last 10 lines | `tail file.txt` |
| `find` | Find files | `find / -name "*.conf"` |
| `locate` | Fast file search (database) | `locate password` |

---

## Permissions

| Command | Purpose | Example |
|---------|---------|---------|
| `chmod` | Change permissions | `chmod 755 script.sh` |
| `chmod +x` | Add execute permission | `chmod +x script.sh` |
| `chown` | Change owner | `chown kali file.txt` |
| `chown -R` | Recursive ownership | `chown -R kali:kali dir/` |

**Permission Numbers:** 7=rwx, 6=rw-, 5=r-x, 4=r--, 0=---

---

## Text Processing

| Command | Purpose | Example |
|---------|---------|---------|
| `grep` | Search text patterns | `grep "error" log.txt` |
| `grep -r` | Recursive search | `grep -r "password" /etc/` |
| `grep -i` | Case-insensitive | `grep -i "error" log.txt` |
| `grep -n` | Show line numbers | `grep -n "root" /etc/passwd` |
| `awk` | Text processing | `awk '{print $1}' file.txt` |
| `sed` | Stream editor | `sed 's/old/new/g' file.txt` |
| `sort` | Sort lines | `sort file.txt` |
| `uniq` | Remove duplicates | `sort file.txt \| uniq` |
| `wc` | Word/line count | `wc -l file.txt` |
| `cut` | Extract columns | `cut -d: -f1 /etc/passwd` |

---

## Networking

| Command | Purpose | Example |
|---------|---------|---------|
| `ip addr show` | Show IP addresses | `ip addr show` |
| `ifconfig` | Show interfaces (legacy) | `ifconfig eth0` |
| `ping` | Test connectivity | `ping -c 4 192.168.56.101` |
| `netstat -tuln` | Show listening ports | `netstat -tuln` |
| `ss -tuln` | Modern port listing | `ss -tuln` |
| `traceroute` | Trace network path | `traceroute 192.168.56.101` |
| `nslookup` | DNS lookup | `nslookup example.com` |
| `dig` | Detailed DNS lookup | `dig example.com` |
| `curl` | HTTP requests | `curl http://192.168.56.101` |
| `wget` | Download files | `wget http://target/file.txt` |
| `arp -a` | Show ARP table | `arp -a` |
| `ip route` | Show routing table | `ip route` |

---

## Process Management

| Command | Purpose | Example |
|---------|---------|---------|
| `ps` | List processes | `ps aux` |
| `top` | Real-time process monitor | `top` |
| `htop` | Interactive process viewer | `htop` |
| `kill` | Terminate process | `kill [PID]` |
| `kill -9` | Force terminate | `kill -9 [PID]` |
| `bg` | Send to background | `bg` |
| `fg` | Bring to foreground | `fg` |

---

## System Information

| Command | Purpose | Example |
|---------|---------|---------|
| `uname -a` | System information | `uname -a` |
| `hostname` | Show hostname | `hostname` |
| `whoami` | Current user | `whoami` |
| `id` | User/group info | `id` |
| `df -h` | Disk usage | `df -h` |
| `free -h` | Memory usage | `free -h` |
| `uptime` | System uptime | `uptime` |
| `dmesg` | Kernel messages | `dmesg | tail` |

---

## Package Management (Kali/Debian)

| Command | Purpose | Example |
|---------|---------|---------|
| `apt update` | Update package lists | `sudo apt update` |
| `apt upgrade` | Upgrade packages | `sudo apt upgrade` |
| `apt install` | Install package | `sudo apt install nmap` |
| `apt remove` | Remove package | `sudo apt remove nmap` |
| `apt search` | Search packages | `apt search wireshark` |
| `dpkg -l` | List installed packages | `dpkg -l` |
| `dpkg -i` | Install .deb file | `sudo dpkg -i pkg.deb` |

---

## Security Tools (Quick Reference)

| Command | Purpose | Example |
|---------|---------|---------|
| `nmap` | Network scanner | `nmap -sV 192.168.56.101` |
| `nikto` | Web server scanner | `nikto -h http://target` |
| `netcat` | Network utility | `nc -lvnp 4444` |
| `wireshark` | Packet analyzer | `wireshark &` |
| `tshark` | CLI packet analyzer | `tshark -i eth0` |
| `john` | Password cracker | `john hash.txt` |
| `hashcat` | Advanced hash cracker | `hashcat -m 0 hash.txt wordlist.txt` |
| `hydra` | Brute-force tool | `hydra -l admin -P pass.txt target ftp` |

---

> **Tip:** Use `man [command]` or `[command] --help` for detailed usage information.
