# 01 — Cybersecurity Basics

> **ApexPlanet Cybersecurity Internship — Task 1, Day 1–2**
> Foundational concepts every cybersecurity professional must understand.

---

## The CIA Triad

The CIA Triad is the cornerstone of information security.

### Confidentiality

**Definition:** Ensuring that information is accessible only to authorized individuals.

**Real-world example:** A hospital encrypting patient records so only doctors and nurses can read them.

**Security controls:** Encryption, access control lists (ACLs), multi-factor authentication (MFA), data classification.

**Example attack:** An attacker intercepting unencrypted email to read sensitive business plans.

### Integrity

**Definition:** Ensuring that information is accurate, complete, and has not been tampered with.

**Real-world example:** A bank verifying that a transaction amount has not been altered during processing.

**Security controls:** Hashing, digital signatures, checksums, version control, file integrity monitoring.

**Example attack:** An attacker modifying a financial database entry to change a transaction amount.

### Availability

**Definition:** Ensuring that information and systems are accessible when needed.

**Real-world example:** An e-commerce website remaining operational during a product launch.

**Security controls:** Redundancy, load balancing, disaster recovery, DDoS protection, regular backups.

**Example attack:** A DDoS attack overwhelming a bank's website, preventing customers from accessing their accounts.

```
              Confidentiality
                    /\
                   /  \
                  / CIA \
                 /  Triad \
                /__________\
           Integrity    Availability
```

---

## Threat Types

### Phishing

**What it is:** Deceptive emails, messages, or websites designed to trick users into revealing sensitive information.

**How it works:** An attacker sends an email that appears to be from a legitimate source (bank, employer, service provider) containing a link to a fake login page or an attached malware file.

**Impact:** Credential theft, financial loss, malware installation, identity theft.

**Prevention:** Email filtering, user awareness training, verifying sender addresses, hovering over links before clicking, MFA.

**Detection:** Unusual login attempts, reported suspicious emails, URL analysis, email header inspection.

### Malware

**What it is:** Malicious software designed to damage, disrupt, or gain unauthorized access to systems.

**How it works:** Malware is delivered through email attachments, infected downloads, compromised websites, or removable media. Once executed, it can steal data, encrypt files, or create backdoors.

**Impact:** Data theft, system damage, unauthorized access, financial loss.

**Prevention:** Antivirus software, endpoint protection, regular system updates, application whitelisting, user training.

**Detection:** Antivirus alerts, unusual system behavior, unexpected network traffic, file integrity monitoring.

### DDoS (Distributed Denial of Service)

**What it is:** An attack that overwhelms a target system with massive traffic from multiple sources.

**How it works:** Attackers use botnets (networks of compromised computers) to flood a target server with requests, exhausting its resources and making it unavailable to legitimate users.

**Impact:** Service downtime, revenue loss, reputational damage, resource exhaustion.

**Prevention:** Rate limiting, CDN services, traffic analysis, DDoS mitigation services, network architecture design.

**Detection:** Traffic volume spikes, unusual traffic patterns, degraded service performance, monitoring dashboards.

### SQL Injection

**What it is:** An attack where malicious SQL code is inserted into input fields to manipulate a backend database.

**How it works:** An attacker enters SQL commands into a web form (login page, search box) that get executed against the database, potentially extracting, modifying, or deleting data.

**Impact:** Data breach, data manipulation, authentication bypass, full system compromise.

**Prevention:** Input validation, parameterized queries, prepared statements, ORM usage, web application firewalls.

**Detection:** Unusual database queries, error messages revealing database structure, unexpected data output.

### Brute Force

**What it is:** An attack that systematically tries all possible combinations of passwords or keys until the correct one is found.

**How it works:** Automated tools send thousands of login attempts with different username/password combinations until one succeeds.

**Impact:** Unauthorized access, account lockout, data breach, resource consumption.

**Prevention:** Account lockout policies, strong password requirements, MFA, rate limiting, CAPTCHA, progressive delays.

**Detection:** Multiple failed login attempts, login attempts from unusual locations, account lockout alerts.

### Ransomware

**What it is:** Malware that encrypts a victim's files and demands payment for the decryption key.

**How it works:** Ransomware is delivered through phishing emails, exploit kits, or compromised RDP connections. Once activated, it encrypts files and displays a ransom demand.

**Impact:** Data loss, operational downtime, financial extortion, reputational damage.

**Prevention:** Regular offline backups, patching, network segmentation, user awareness, endpoint protection.

**Detection:** Unusual file encryption activity, ransom notes, files with unusual extensions, abnormal disk activity.

---

## Attack Vectors

### Social Engineering

**Description:** Manipulating people into performing actions or divulging confidential information.

**Techniques:**

| Technique | Description |
|-----------|-------------|
| Pretexting | Creating a fabricated scenario to obtain information |
| Baiting | Leaving infected media (USB drives) for victims to find |
| Tailgating | Following authorized personnel into restricted areas |
| Vishing | Voice-based phishing over phone calls |
| Smishing | SMS-based phishing messages |

**Defense:** Security awareness training, verification procedures, clear reporting policies, zero-trust mindset.

### Wireless Attacks

**Description:** Exploiting vulnerabilities in wireless networks to gain unauthorized access.

**Techniques:**

| Technique | Description |
|-----------|-------------|
| Evil Twin | Creating a fake access point mimicking a legitimate one |
| WPA/WPA2 Cracking | Capturing and cracking WiFi handshakes |
| Rogue Access Points | Unauthorized access points on a network |
| Packet Sniffing | Capturing wireless traffic on open networks |

**Defense:** WPA3 encryption, strong passphrases, network monitoring, disable auto-connect to open networks.

### Insider Threats

**Description:** Security risks originating from individuals within an organization.

**Types:**

| Type | Description |
|------|-------------|
| Malicious Insider | Intentionally stealing or damaging data |
| Negligent Insider | Accidentally causing a security incident through carelessness |
| Compromised Insider | An employee whose credentials have been stolen |

**Defense:** Principle of least privilege, monitoring, access reviews, background checks, separation of duties.

---

## Threat Comparison Table

| Threat | Vector | Speed | Impact | Detection Difficulty | Primary Defense |
|--------|--------|-------|--------|---------------------|----------------|
| Phishing | Email/Web | Medium | High | Medium | User training |
| Malware | Multiple | Fast | High | Medium | Antivirus/EDR |
| DDoS | Network | Fast | High | Easy | CDN/Mitigation |
| SQL Injection | Web App | Fast | Critical | Medium | Input validation |
| Brute Force | Network | Slow | Medium | Easy | MFA/Lockout |
| Ransomware | Multiple | Fast | Critical | Hard | Backups/Patching |
| Social Eng. | Human | Variable | High | Hard | Awareness |
| Wireless | Network | Medium | Medium | Medium | Encryption |
| Insider | Internal | Slow | High | Hard | Least privilege |

---

**Next:** [02 — Lab Environment Setup](02-lab-environment-setup.md)
