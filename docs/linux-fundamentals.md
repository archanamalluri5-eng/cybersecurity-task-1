# Linux Fundamentals

> **ApexPlanet Cybersecurity Internship – Task 1**  
> Linux knowledge is essential for cybersecurity professionals. This guide covers fundamental commands using safe educational examples.

---

## Table of Contents

- [Navigation & File System](#navigation--file-system)
- [File Operations](#file-operations)
- [Permissions](#permissions)
- [Package Management](#package-management)
- [Networking Commands](#networking-commands)

---

## Navigation & File System

### pwd — Print Working Directory

Shows the current directory path.

```bash
pwd
# Output: /home/kali
```

### ls — List Directory Contents

```bash
ls              # List files in current directory
ls -l           # Long format (permissions, owner, size, date)
ls -la          # Include hidden files (starting with .)
ls -lh          # Human-readable file sizes
```

### cd — Change Directory

```bash
cd /home/kali       # Navigate to an absolute path
cd documents        # Navigate to a subdirectory
cd ..               # Go up one directory
cd ~                # Return to home directory
cd -                # Return to previous directory
```

---

## File Operations

### mkdir — Make Directory

```bash
mkdir lab-files                        # Create a single directory
mkdir -p parent/child/grandchild       # Create nested directories
```

### cp — Copy Files

```bash
cp file.txt backup.txt                 # Copy a file
cp -r directory/ backup-dir/           # Copy a directory recursively
```

### mv — Move or Rename

```bash
mv file.txt /tmp/                      # Move a file
mv old-name.txt new-name.txt           # Rename a file
```

### rm — Remove Files

```bash
rm file.txt                # Remove a single file
rm -r directory/           # Remove a directory and its contents
rm -i file.txt             # Prompt before deleting (safer)
```

> **Warning:** Be extremely careful with `rm -rf /`. This can destroy an entire system. Always double-check commands before executing.

---

## Permissions

### chmod — Change File Permissions

Linux permissions control who can read (r), write (w), and execute (x) a file.

```
-rwxr-xr--
│├─┤├─┤├─┤
│ │  │  └── Others: read only
│ │  └───── Group: read and execute
│ └──────── Owner: read, write, execute
└────────── File type (- = file, d = directory)
```

**Symbolic mode:**

```bash
chmod +x script.sh          # Add execute permission
chmod u+w file.txt          # Add write permission for owner
chmod g-w file.txt          # Remove write permission for group
chmod o-rwx sensitive.txt   # Remove all permissions for others
```

**Numeric (octal) mode:**

```bash
chmod 755 script.sh    # Owner: rwx, Group: r-x, Others: r-x
chmod 644 config.txt   # Owner: rw-, Group: r--, Others: r--
chmod 700 private.key  # Owner: rwx, Group: ---, Others: ---
```

| Number | Permissions |
|--------|-------------|
| 7      | rwx         |
| 6      | rw-         |
| 5      | r-x         |
| 4      | r--         |
| 0      | ---         |

### chown — Change File Ownership

```bash
chown kali file.txt                    # Change owner to kali
chown kali:kali file.txt               # Change owner and group
chown -R kali:kali /home/kali/lab/     # Recursive ownership change
```

---

## Package Management

### apt — Advanced Package Tool (Debian/Kali)

```bash
sudo apt update                    # Update package lists
sudo apt upgrade                   # Upgrade installed packages
sudo apt install nmap              # Install a package
sudo apt remove nmap               # Remove a package
sudo apt search <keyword>          # Search for packages
```

### dpkg — Debian Package Manager

```bash
dpkg -l                            # List all installed packages
dpkg -i package.deb                # Install a local .deb file
dpkg -r package-name               # Remove a package
dpkg -s package-name               # Show package status/info
```

---

## Networking Commands

### ip — Modern Network Configuration

```bash
ip addr show                   # Display all IP addresses
ip link show                   # Show network interfaces
ip route show                  # Display routing table
ip addr show eth0              # Show IP for specific interface
```

### ifconfig — Legacy Network Configuration

```bash
ifconfig                       # Show all interfaces
ifconfig eth0                  # Show specific interface
ifconfig eth0 192.168.56.10    # Set IP address (requires root)
```

> **Note:** `ifconfig` is deprecated on modern Linux. Use `ip` commands instead, but it remains available on Kali Linux for compatibility.

### ping — Test Network Connectivity

```bash
ping 192.168.56.101                # Ping the local Metasploitable2 VM
ping -c 4 google.com              # Send 4 packets and stop
```

### netstat / ss — Socket Statistics

```bash
netstat -tuln                     # Show listening TCP/UDP ports
ss -tuln                          # Modern equivalent of netstat
netstat -an | grep ESTABLISHED    # Show established connections
```

### traceroute — Trace Network Path

```bash
traceroute 192.168.56.101         # Trace route to local lab target
traceroute google.com             # Trace route to external host
```

---

**Next:** [Networking Basics](networking-basics.md)  
**See also:** [Linux Command Cheat Sheet](../cheat-sheets/linux-command-cheat-sheet.md)
