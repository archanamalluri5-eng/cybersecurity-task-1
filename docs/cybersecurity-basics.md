# Cybersecurity Fundamentals

> **ApexPlanet Cybersecurity Internship – Task 1**  
> This document covers foundational cybersecurity concepts for educational purposes.

---

## Table of Contents

- [The CIA Triad](#the-cia-triad)
- [Common Threats](#common-threats)
- [Attack Vectors](#attack-vectors)
- [Key Takeaways](#key-takeaways)

---

## The CIA Triad

The CIA Triad is the foundation of information security, consisting of three core principles:

### Confidentiality

Ensuring that information is accessible only to authorized individuals.

- **Example:** Encrypting sensitive files so only approved users can read them
- **Controls:** Encryption, access control lists (ACLs), multi-factor authentication (MFA)

### Integrity

Ensuring that information is accurate, complete, and has not been tampered with.

- **Example:** Using hash functions to verify that a downloaded file has not been altered
- **Controls:** Hashing, digital signatures, checksums, version control

### Availability

Ensuring that information and systems are accessible when needed.

- **Example:** Maintaining redundant servers so services remain online during hardware failure
- **Controls:** Backups, load balancing, disaster recovery plans, DDoS protection

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

## Common Threats

### Phishing

Deceptive emails or messages designed to trick users into revealing sensitive information such as passwords or credit card numbers.

- **Indicators:** Urgent language, suspicious links, unfamiliar senders
- **Defense:** Email filtering, user awareness training, verifying URLs before clicking

### Malware

Malicious software designed to damage, disrupt, or gain unauthorized access to systems.

- **Types:** Viruses, worms, Trojans, spyware, adware
- **Defense:** Antivirus software, endpoint protection, regular system updates

### DDoS (Distributed Denial of Service)

An attack that overwhelms a target system with traffic from multiple sources, rendering it unavailable.

- **Defense:** Rate limiting, CDN services, traffic analysis, DDoS mitigation services

### SQL Injection

An attack where malicious SQL code is inserted into input fields to manipulate a backend database.

- **Defense:** Input validation, parameterized queries, prepared statements, ORM usage

### Brute Force

An attack that systematically tries all possible combinations of passwords or encryption keys until the correct one is found.

- **Defense:** Account lockout policies, strong password requirements, MFA, rate limiting

### Ransomware

Malware that encrypts a victim's files and demands payment for the decryption key.

- **Defense:** Regular offline backups, patching, network segmentation, user awareness

---

## Attack Vectors

### Social Engineering

Manipulating people into performing actions or divulging confidential information.

- **Techniques:** Pretexting, baiting, tailgating, vishing (voice phishing), smishing (SMS phishing)
- **Defense:** Security awareness training, verification procedures, clear reporting policies

### Wireless Attacks

Exploiting vulnerabilities in wireless networks to gain unauthorized access.

- **Techniques:** Evil twin attacks, WPA/WPA2 cracking, rogue access points, packet sniffing on open Wi-Fi
- **Defense:** WPA3 encryption, strong passphrases, network monitoring, disabling SSID broadcast where appropriate

### Insider Threats

Security risks originating from individuals within an organization.

- **Types:** Malicious insiders, negligent insiders, compromised insiders
- **Defense:** Principle of least privilege, monitoring, access reviews, employee background checks

---

## Key Takeaways

- Security is a continuous process, not a one-time setup
- Defense in depth (layered security) is essential
- Human factors are often the weakest link in security
- All practical cybersecurity activities must be performed only in authorized lab environments

---

**Next:** [Linux Fundamentals](linux-fundamentals.md)
