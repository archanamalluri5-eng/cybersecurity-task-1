# 05 — Cryptography Basics

> **ApexPlanet Cybersecurity Internship — Task 1, Day 5–6**
> Understanding encryption, hashing, and secure communications.

---

## Symmetric Encryption

Uses a **single shared key** for both encryption and decryption.

```
Plaintext → [Encrypt with Key K] → Ciphertext
Ciphertext → [Decrypt with Key K] → Plaintext
```

| Algorithm | Key Size | Status |
|-----------|----------|--------|
| AES | 128/192/256 bits | Current standard |
| 3DES | 168 bits | Legacy, being phased out |
| ChaCha20 | 256 bits | Modern, used in TLS |

**Advantages:** Fast, efficient for large data  
**Disadvantages:** Key distribution problem

---

## Asymmetric Encryption

Uses a **key pair**: public key (shared) and private key (secret).

```
Plaintext → [Encrypt with Public Key] → Ciphertext
Ciphertext → [Decrypt with Private Key] → Plaintext
```

| Algorithm | Use Case |
|-----------|----------|
| RSA | Encryption, signatures (2048+ bits) |
| ECC | Key exchange, signatures |
| Diffie-Hellman | Key exchange |

**Advantages:** Solves key distribution; enables digital signatures  
**Disadvantages:** Slower than symmetric encryption

**Hybrid approach:** TLS uses asymmetric to exchange a symmetric session key, then symmetric for data.

---

## Hashing

One-way function producing a fixed-size output. Cannot be reversed.

```
"Hello World" → [SHA-256] → a591a6d40bf420404a011733cfb7b190...
```

### MD5 vs SHA-256

| Feature | MD5 | SHA-256 |
|---------|-----|---------|
| Output | 128 bits (32 hex chars) | 256 bits (64 hex chars) |
| Speed | Fast | Slower (by design) |
| Collision Resistance | Broken | Currently secure |
| Use Case | Non-security checksums | Security, signatures, certificates |

> **Important:** MD5 is cryptographically broken. Never use for security purposes.

---

## Digital Certificates

Binds a public key to an identity, verified by a Certificate Authority (CA).

**Contents:** Subject name, public key, issuing CA, validity period, digital signature.

**Chain:** Root CA → Intermediate CA → Server Certificate

---

## SSL/TLS

Provides encrypted communication over networks.

**TLS Handshake (simplified):**

1. Client → Server: ClientHello
2. Server → Client: ServerHello + certificate
3. Client verifies certificate
4. Session key negotiated
5. Encrypted communication begins

**Versions:** SSL 2.0/3.0 (deprecated), TLS 1.0/1.1 (deprecated), TLS 1.2 (current), TLS 1.3 (recommended)

---

## OpenSSL Lab Demonstration

> **Educational only — no real credentials or sensitive data.**

### Symmetric Encryption (AES-256-CBC)

```bash
# Create a test message
echo "This is an educational cybersecurity lab message." > testfile.txt

# Encrypt
openssl enc -aes-256-cbc -salt -pbkdf2 -in testfile.txt -out testfile.enc

# Decrypt
openssl enc -aes-256-cbc -d -pbkdf2 -in testfile.enc -out testfile_decrypted.txt

# Verify
cat testfile_decrypted.txt
```

### Hashing

```bash
# SHA-256 hash
echo -n "educational lab message" | openssl dgst -sha256

# File integrity check
sha256sum testfile.txt
```

### Asymmetric Encryption (RSA)

```bash
# Generate key pair
openssl genrsa -out private_key.pem 2048
openssl rsa -in private_key.pem -pubout -out public_key.pem

# Encrypt with public key
echo "Secret lab message" > secret.txt
openssl rsautl -encrypt -inkey public_key.pem -pubin -in secret.txt -out secret.enc

# Decrypt with private key
openssl rsautl -decrypt -inkey private_key.pem -in secret.enc -out secret_decrypted.txt
```

See [`scripts/crypto-demo.sh`](../scripts/crypto-demo.sh) for a complete demonstration script.

---

**Next:** [06 — Security Tools](06-security-tools.md)
