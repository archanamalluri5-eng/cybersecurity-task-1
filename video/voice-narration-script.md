# Voice Narration Script — Project Explanation

> **ApexPlanet Cybersecurity Internship — Task 1**
> Complete voiceover script for project presentation and explanation.

---

## How to Use This Script

1. **Record yourself** reading this script in a quiet environment
2. Or use a **text-to-speech tool** like ElevenLabs, Natural Reader, or Google TTS
3. Speak clearly and at a moderate pace
4. Pause briefly at section breaks (marked with ---)
5. Total estimated time: 8–10 minutes

---

## FULL NARRATION SCRIPT

---

### INTRODUCTION

Hello, my name is Archana Malluri, and this is my project explanation for the ApexPlanet Cybersecurity Internship, Task One: Foundation and Environment Setup.

Over the past twelve days, I built a complete cybersecurity learning repository from scratch. This project covers everything from basic security concepts to hands-on lab work with industry-standard tools. Let me walk you through what I've created and what I've learned.

---

### PROJECT OVERVIEW

This project is organized into a professional GitHub repository with over forty files across eight directories. The repository is designed to be both a learning resource and evidence of my internship progress.

The main sections include core documentation covering eleven topics, four quick-reference cheat sheets, six professional report templates, two architecture diagrams, three safe demonstration scripts, sample data files, and a five-minute video walkthrough script.

Everything is clearly documented, professionally formatted, and ready for evaluation.

---

### CYBERSECURITY FUNDAMENTALS

Let me start with the foundation. I documented the CIA Triad, which stands for Confidentiality, Integrity, and Availability. These three principles are the cornerstone of all cybersecurity decisions.

Confidentiality means ensuring that information is only accessible to authorized people. Integrity means making sure data hasn't been tampered with. And Availability means systems are accessible when needed.

I also covered six major threat types: phishing, malware, DDoS attacks, SQL injection, brute force attacks, and ransomware. For each threat, I explained how it works, what the impact is, and how to prevent and detect it.

Additionally, I documented three attack vectors: social engineering, wireless attacks, and insider threats. Understanding these concepts is essential because human factors are often the weakest link in security.

---

### LAB ENVIRONMENT SETUP

Next, I set up an isolated cybersecurity lab. This is the hands-on core of the project.

I used VirtualBox as my virtualization platform and deployed two virtual machines. The first is Kali Linux, which serves as my attacker machine. It comes pre-loaded with security tools like Nmap, Wireshark, Burp Suite, and many others.

The second machine is Metasploitable2, which is an intentionally vulnerable Ubuntu-based system. It's designed specifically for security testing and contains known vulnerabilities that I can safely practice against.

Both machines are connected through a Host-Only network on the 192.168.56.0/24 subnet. This is critical because it means neither machine has internet access. All traffic stays within the isolated lab network. This ensures that no production systems or unauthorized targets are ever at risk.

I configured static IP addresses for both machines, verified connectivity with ping tests, and confirmed that the network is fully isolated.

---

### LINUX FUNDAMENTALS

I then built proficiency in Linux, which is essential for any cybersecurity professional.

I covered file system navigation with commands like pwd, ls, cd, and find. I practiced file operations including mkdir, cp, mv, and rm. I learned about file permissions using chmod and chown, understanding the difference between owner, group, and others.

I also used package management with apt and dpkg to install and manage software. And I practiced networking commands like ip addr, ping, ss, and traceroute.

I created a comprehensive Linux command cheat sheet with over sixty commands organized by category. This serves as a quick reference guide that I can use in future tasks and in my career.

---

### NETWORKING BASICS

Understanding networking is crucial because most cybersecurity attacks exploit network-level vulnerabilities.

I studied the OSI Model with its seven layers, from Physical at layer one up to Application at layer seven. I learned the TCP/IP Model, which is the practical four-layer model used on the internet.

I compared TCP and UDP protocols. TCP is connection-oriented and reliable, used for web browsing and file transfers. UDP is connectionless and faster, used for DNS queries and video streaming.

I also covered DNS resolution, HTTP versus HTTPS, IP addressing including private ranges, subnetting basics, and Network Address Translation.

I created a networking command cheat sheet and an OSI Model diagram using Mermaid syntax for visual reference.

---

### CRYPTOGRAPHY

Cryptography is the science of securing information through encoding.

I studied symmetric encryption using AES, where the same key encrypts and decrypts data. I learned about asymmetric encryption using RSA, which uses a public key for encryption and a private key for decryption.

I covered hashing, which is a one-way function that produces a fixed-size output. I compared MD5, which is cryptographically broken, with SHA-256, which is currently secure.

I also studied digital certificates and the SSL/TLS handshake process that secures web communications.

To demonstrate these concepts, I created a safe OpenSSL demonstration script that encrypts and decrypts a local test message using only dummy educational data. No real credentials or sensitive information are used.

---

### SECURITY TOOLS

I familiarized myself with four essential security tools.

Wireshark is a network protocol analyzer. I learned how to capture packets, apply display filters, and analyze HTTP, FTP, DNS, and TCP traffic.

Nmap is a network scanner. I learned about different scan types including TCP SYN scans, service version detection, OS detection, and vulnerability scripts.

Burp Suite is a web application testing platform. I learned how it acts as an HTTP proxy to intercept and modify web traffic.

And Netcat is a low-level network utility that I used for banner grabbing and simple communication between my lab machines.

For each tool, I documented what it does, why it's useful, and how to use it safely in a lab environment.

---

### RECONNAISSANCE

I learned about passive and active reconnaissance techniques.

Passive reconnaissance involves gathering information without directly contacting the target. This includes WHOIS queries, DNS lookups using nslookup and dig, Google search operators for OSINT awareness, and understanding Shodan as an internet asset search engine.

Active reconnaissance involves direct interaction with the target. This includes ping sweeps, port scanning, banner grabbing, and service enumeration.

I documented all of this in a reconnaissance report template with clear authorization statements ensuring that all activities are restricted to authorized lab targets only.

---

### NMAP SCANNING

I created a professional Nmap scanning methodology document and report template.

I learned about TCP SYN scans, which are stealthier because they never complete the TCP handshake. I studied service and version detection to identify what's running on each open port. I learned about OS detection to fingerprint the target system. And I explored vulnerability scripts using Nmap's scripting engine.

I also created a sample Nmap output file that demonstrates what real scan results look like. This file is clearly labeled as simulated educational data, not real evidence.

The Nmap scan report template includes sections for executive summary, scope, authorization, methodology, results, risk analysis, and recommendations. It follows professional report writing standards.

---

### VULNERABILITY ASSESSMENT

I studied vulnerability assessment concepts including CVE identifiers, which are standardized names for known vulnerabilities, and CVSS scoring, which rates severity from zero to ten.

I documented five severity levels: Critical, High, Medium, Low, and Informational.

I familiarized myself with OpenVAS, also known as Greenbone, and Nessus Essentials as vulnerability scanning tools.

I created sample vulnerability findings for Metasploitable2 including the vsftpd backdoor, OpenSSH user enumeration, Apache directory listing, Samba SMB signing issues, and Telnet running unencrypted.

Each finding includes the finding ID, title, severity, CVSS score, affected service, CVE, description, impact, evidence, recommendation, remediation steps, and verification method.

All sample findings are clearly marked as simulated educational data.

---

### WIRESHARK ANALYSIS

I documented how to analyze network traffic using Wireshark.

I covered HTTP traffic analysis, showing how plaintext data including credentials is visible in packet captures. I analyzed FTP traffic, demonstrating that usernames and passwords are transmitted in cleartext. I examined DNS traffic to understand how domain name resolution works. And I observed the TCP three-way handshake with SYN, SYN-ACK, and ACK packets.

I created a Wireshark filter cheat sheet with over fifty filters organized by category including protocol filters, IP filters, port filters, TCP flags, HTTP filters, DNS filters, and filter combinations.

The key security lesson from Wireshark analysis is that unencrypted protocols expose sensitive information. This is why HTTPS, SFTP, and SSH are essential for secure communications.

---

### REPOSITORY STRUCTURE

My repository is professionally organized with clear naming conventions.

The docs directory contains eleven numbered documentation files covering each topic from cybersecurity basics through learning outcomes.

The cheat-sheets directory has four quick reference guides for Linux, networking, Nmap, and Wireshark filters.

The reports directory contains six professional report templates including lab setup, reconnaissance, Nmap scanning, vulnerability assessment, Wireshark analysis, and the final task report.

The diagrams directory has two Mermaid architecture diagrams for the lab network and OSI model.

The scripts directory contains three safe demonstration scripts for Linux basics, network enumeration, and cryptography.

The sample-data directory has three files with simulated outputs clearly labeled as educational demonstrations.

The screenshots directory has a checklist of fourteen screenshots that need to be added after completing the actual lab exercises.

And the video directory contains the five-minute walkthrough script that I'm using for this presentation.

---

### WHAT'S NEXT

The repository is complete and ready for evaluation. The remaining items that need real lab evidence are the actual screenshots, Nmap scan results, vulnerability scan results, Wireshark captures, and the five-minute video recording.

All documentation, templates, cheat sheets, diagrams, scripts, and sample data are complete and professionally formatted.

---

### CONCLUSION

In conclusion, this project gave me a solid foundation in cybersecurity. I learned core security concepts, set up a professional lab environment, gained proficiency in Linux and networking, understood cryptography, familiarized with industry-standard tools, and documented everything professionally.

All activities were performed within my authorized local lab environment. No public systems or unauthorized targets were involved.

Thank you for evaluating my submission. This is Archana Malluri signing off.

---

## SHORTER VERSION (5 Minutes)

If you need a shorter narration for the five-minute video, use this condensed version:

---

Hello, my name is Archana Malluri, and this is my Task One submission for the ApexPlanet Cybersecurity Internship.

Over twelve days, I built a complete cybersecurity foundation project covering theory, hands-on lab work, and professional documentation.

I started by studying the CIA Triad and major threat types like phishing, malware, and ransomware. I learned how attacks work and how to prevent them.

Then I set up an isolated lab using VirtualBox with Kali Linux as my attacker machine and Metasploitable2 as the vulnerable target. Both are connected through a Host-Only network with no internet access, ensuring complete isolation.

I built proficiency in Linux commands, networking concepts including the OSI Model and TCP-IP, and cryptography using OpenSSL for safe demonstrations.

I familiarized myself with four essential tools: Wireshark for packet analysis, Nmap for network scanning, Burp Suite for web testing, and Netcat for low-level networking.

I studied reconnaissance techniques, Nmap scanning methodology, and vulnerability assessment using CVE and CVSS scoring. I also analyzed network traffic in Wireshark, observing how unencrypted protocols expose sensitive data.

The repository contains over forty files including documentation, cheat sheets, report templates, diagrams, scripts, and sample data. Everything is professionally organized and ready for evaluation.

All activities were restricted to my authorized lab environment. Thank you for watching.

---

## RECORDING TIPS

- Speak at a natural, moderate pace
- Pause briefly between sections
- Pronounce technical terms clearly
- Maintain a professional but conversational tone
- Record in a quiet environment
- Use a decent microphone for clear audio
- Keep total duration under ten minutes for the full version
- For the five-minute video, use the shorter version
