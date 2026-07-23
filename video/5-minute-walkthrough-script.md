# 5-Minute Walkthrough Script

> **ApexPlanet Cybersecurity Internship — Task 1**
> Presentation script for the 5-minute video walkthrough submission.

---

## 0:00 – 0:30 | Introduction (30 seconds)

"Hello, my name is [YOUR NAME], and this is my Task 1 submission for the ApexPlanet Cybersecurity Internship. Over the past 12 days, I built a complete cybersecurity foundation covering fundamental concepts, set up a virtual lab environment, and gained hands-on experience with essential security tools and techniques. Let me walk you through what I've learned."

---

## 0:30 – 1:15 | Cybersecurity Fundamentals (45 seconds)

"I started by studying core cybersecurity concepts, beginning with the CIA Triad — Confidentiality, Integrity, and Availability. These three principles form the foundation of all security decisions.

I also learned about the major threat types including phishing, malware, DDoS attacks, SQL injection, brute force attacks, and ransomware. For each threat, I documented how it works, its impact, and the best prevention and detection methods.

I studied attack vectors such as social engineering, wireless attacks, and insider threats, understanding that human factors are often the weakest link in security."

---

## 1:15 – 2:00 | Lab Environment (45 seconds)

"Next, I set up an isolated cybersecurity lab using VirtualBox with two virtual machines: Kali Linux as my attacker machine and Metasploitable2 as the intentionally vulnerable target.

Both VMs are connected through a Host-Only network on the 192.168.56.0/24 subnet. This ensures complete isolation — no traffic leaves the lab network, and neither VM has internet access.

I configured static IP addresses, verified connectivity with ping tests, and confirmed network isolation. This lab environment allows me to safely practice security techniques without any risk to production systems."

---

## 2:00 – 2:45 | Linux and Networking (45 seconds)

"I then built proficiency in Linux fundamentals, covering file system navigation, file operations, permissions, package management, and networking commands. These skills are essential for any cybersecurity professional.

I also studied networking in depth, including the OSI Model with its seven layers, the TCP/IP Model, TCP versus UDP protocols, DNS resolution, IP addressing, and subnetting. Understanding networking is crucial because most cybersecurity attacks exploit network-level vulnerabilities."

---

## 2:45 – 3:30 | Cryptography and Tools (45 seconds)

"I studied cryptographic concepts including symmetric encryption with AES, asymmetric encryption with RSA, hashing with SHA-256, and the SSL/TLS handshake process. I demonstrated these concepts using OpenSSL with safe educational data.

I also familiarized myself with four essential security tools: Wireshark for packet analysis, Nmap for network scanning, Burp Suite for web application testing, and Netcat for low-level network connections. Each tool was studied in the context of authorized lab use only."

---

## 3:30 – 4:15 | Nmap and Vulnerability Assessment (45 seconds)

"I learned Nmap scanning methodologies including TCP SYN scans, service version detection, OS detection, and vulnerability script scanning. I documented the results in professional report templates.

I also studied vulnerability assessment concepts including CVE identifiers, CVSS scoring, and severity levels from Critical to Informational. I familiarized myself with OpenVAS and Nessus Essentials and created professional vulnerability assessment report templates with findings, impact analysis, and remediation recommendations."

---

## 4:15 – 4:45 | Wireshark Analysis (30 seconds)

"Using Wireshark, I analyzed HTTP, FTP, and DNS traffic in my lab environment. I observed how plaintext protocols expose credentials and sensitive data, and I practiced display filters for targeted analysis. This reinforced why encrypted protocols like HTTPS, SFTP, and SSH are essential for security."

---

## 4:45 – 5:00 | Conclusion (15 seconds)

"In conclusion, this task gave me a solid foundation in cybersecurity concepts, practical lab skills, and hands-on experience with industry-standard tools. All activities were performed within my authorized local lab environment. Thank you for evaluating my submission."

---

## Recording Tips

- Speak clearly and at a natural pace
- Show your screen while explaining (VM desktop, documentation, tools)
- Keep the total duration under 5 minutes
- Use the repository structure as a visual guide
- Demonstrate at least one tool in action (e.g., Nmap scan, Wireshark capture)
- End with a clear conclusion about learning outcomes
