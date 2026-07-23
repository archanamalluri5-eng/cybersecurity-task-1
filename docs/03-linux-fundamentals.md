# 03 — Linux Fundamentals

> **ApexPlanet Cybersecurity Internship — Task 1, Day 3–4**
> Essential Linux commands and concepts for cybersecurity professionals.

---

## File System Navigation

### pwd — Print Working Directory

Shows your current location in the file system.

```bash
pwd
# Output: /home/kali
```

### ls — List Directory Contents

```bash
ls              # List files in current directory
ls -l           # Long format (permissions, owner, size, date)
ls -la          # Include hidden files (starting with .)
ls -lh          # Human-readable file sizes (KB, MB, GB)
ls -lt          # Sort by modification time
```

### cd — Change Directory

```bash
cd /home/kali       # Navigate to an absolute path
cd documents        # Navigate to a subdirectory
cd ..               # Go up one directory
cd ~                # Return to home directory
cd -                # Return to previous directory
```

### touch — Create Empty File

```bash
touch notes.txt              # Create an empty file
touch file1.txt file2.txt    # Create multiple files
```

### mkdir — Make Directory

```bash
mkdir lab-files                      # Create a single directory
mkdir -p parent/child/grandchild     # Create nested directories
```

### cp — Copy

```bash
cp file.txt backup.txt               # Copy a file
cp -r directory/ backup-dir/         # Copy a directory recursively
```

### mv — Move or Rename

```bash
mv file.txt /tmp/                    # Move a file
mv old-name.txt new-name.txt         # Rename a file
```

### rm — Remove

```bash
rm file.txt              # Remove a single file
rm -r directory/         # Remove a directory and contents
rm -i file.txt          # Prompt before deleting (safer)
```

> **Warning:** Never run `rm -rf /` — this can destroy an entire system.

### find — Search for Files

```bash
find /home -name "*.txt"             # Find .txt files in /home
find / -name "password*" 2>/dev/null  # Find files starting with "password"
find . -type f -size +10M            # Find files larger than 10MB
```

---

## Permissions

### Understanding Linux Permissions

```
-rwxr-xr--
│├─┤├─┤├─┤
│ │  │  └── Others: r-- (read only)
│ │  └───── Group: r-x (read, execute)
│ └──────── Owner: rwx (read, write, execute)
└────────── File type (- = file, d = directory)
```

### chmod — Change Permissions

**Symbolic mode:**

```bash
chmod +x script.sh          # Add execute permission for all
chmod u+w file.txt          # Add write for owner
chmod g-w file.txt          # Remove write for group
chmod o-rwx sensitive.txt   # Remove all permissions for others
```

**Numeric (octal) mode:**

| Number | Permissions |
|--------|-------------|
| 7 | rwx (read + write + execute) |
| 6 | rw- (read + write) |
| 5 | r-x (read + execute) |
| 4 | r-- (read only) |
| 0 | --- (no permissions) |

```bash
chmod 755 script.sh    # Owner: rwx, Group: r-x, Others: r-x
chmod 644 config.txt   # Owner: rw-, Group: r--, Others: r--
chmod 700 private.key  # Owner: rwx, Group: ---, Others: ---
```

### chown — Change Ownership

```bash
chown kali file.txt                     # Change owner
chown kali:kali file.txt                # Change owner and group
chown -R kali:kali /home/kali/lab/      # Recursive ownership change
```

---

## Package Management

### apt (Advanced Package Tool)

```bash
sudo apt update                    # Update package lists
sudo apt upgrade                   # Upgrade installed packages
sudo apt install nmap              # Install a package
sudo apt remove nmap               # Remove a package
sudo apt search wireshark          # Search for packages
sudo apt list --installed          # List installed packages
```

### dpkg (Debian Package Manager)

```bash
dpkg -l                            # List all installed packages
dpkg -i package.deb                # Install a local .deb file
dpkg -r package-name               # Remove a package
dpkg -s package-name               # Show package info
```

---

## Networking Commands

### ip — Modern Network Configuration

```bash
ip addr show                   # Show all IP addresses
ip addr show eth0              # Show IP for specific interface
ip link show                   # Show network interfaces
ip route show                  # Show routing table
```

### ifconfig — Legacy Network Configuration

```bash
ifconfig                       # Show all interfaces
ifconfig eth0                  # Show specific interface
```

> **Note:** `ifconfig` is deprecated. Use `ip` commands on modern systems.

### ping — Test Connectivity

```bash
ping 192.168.56.101                # Ping the lab target
ping -c 4 google.com              # Send 4 packets and stop
```

### ss / netstat — Socket Statistics

```bash
ss -tuln                          # Show listening TCP/UDP ports
netstat -tuln                     # Legacy equivalent
netstat -an | grep ESTABLISHED    # Show established connections
```

### traceroute — Trace Network Path

```bash
traceroute 192.168.56.101         # Trace route to lab target
traceroute google.com             # Trace route to external host
```

### hostname — Show System Name

```bash
hostname                         # Display hostname
hostname -I                      # Show IP addresses
```

---

## Process Management

### ps — List Processes

```bash
ps                               # Current user's processes
ps aux                           # All running processes
ps aux | grep nmap               # Find specific process
```

### top — Real-Time Process Monitor

```bash
top                              # Interactive process viewer
# Press q to quit
```

### kill — Terminate Processes

```bash
kill [PID]                       # Gracefully terminate
kill -9 [PID]                    # Force terminate
```

---

**See also:** [Linux Command Cheat Sheet](../cheat-sheets/linux-command-cheat-sheet.md)

**Next:** [04 — Networking Basics](04-networking-basics.md)
