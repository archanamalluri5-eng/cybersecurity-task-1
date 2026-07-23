# Cryptography Basics

> **ApexPlanet Cybersecurity Internship – Task 1**  
> Cryptography is the science of securing information through encoding. This guide covers fundamental concepts and a safe OpenSSL demonstration.

---

## Table of Contents

- [Symmetric Encryption](#symmetric-encryption)
- [Asymmetric Encryption](#asymmetric-encryption)
- [Hashing](#hashing)
- [Digital Certificates](#digital-certificates)
- [SSL/TLS](#ssltls)
- [OpenSSL Lab Demonstration](#openssl-lab-demonstration)

---

## Symmetric Encryption

Symmetric encryption uses a **single shared key** for both encryption and decryption.

```
Plaintext → [Encrypt with Key K] → Ciphertext
Ciphertext → [Decrypt with Key K] → Plaintext
```

**Common algorithms:**

| Algorithm | Key Size | Status |
|-----------|----------|--------|
| AES | 128, 192, 256 bits | Current standard |
| 3DES | 168 bits | Legacy, being phased out |
| Blowfish | 32–448 bits | Still used in some applications |
| ChaCha20 | 256 bits | Modern, used in TLS |

**Advantages:** Fast, efficient for large data volumes  
**Disadvantages:** Key distribution problem — both parties must securely share the key

---

## Asymmetric Encryption

Asymmetric encryption uses a **key pair**: a public key (shared openly) and a private key (kept secret).

```
Plaintext → [Encrypt with Public Key] → Ciphertext
Ciphertext → [Decrypt with Private Key] → Plaintext
```

**Common algorithms:**

| Algorithm | Use Case |
|-----------|----------|
| RSA | Encryption, digital signatures (2048+ bits recommended) |
| ECC | Efficient key exchange, digital signatures |
| Diffie-Hellman | Key exchange (not encryption itself) |
| Ed25519 | Modern digital signatures |

**Advantages:** Solves key distribution; enables digital signatures  
**Disadvantages:** Slower than symmetric encryption; typically used to encrypt small data or key exchanges

**Hybrid approach:** TLS uses asymmetric encryption to exchange a symmetric session key, then uses symmetric encryption for the actual data transfer (best of both worlds).

---

## Hashing

Hashing converts input data into a fixed-size output (hash/digest). Hashing is **one-way** — you cannot reverse a hash to obtain the original input.

```
"Hello World" → [SHA-256 Hash] → a591a6d40bf420404a011733cfb7b190d62c65bf0bcda32b57b277d9ad9f146e
```

**Key properties:**

- **Deterministic:** Same input always produces the same hash
- **Fixed output size:** Regardless of input size
- **One-way:** Cannot reverse the hash
- **Collision-resistant:** Extremely difficult to find two inputs with the same hash

### MD5 and SHA-256

| Feature | MD5 | SHA-256 |
|---------|-----|---------|
| Output Size | 128 bits (32 hex chars) | 256 bits (64 hex chars) |
| Speed | Fast | Slower (by design) |
| Collision Resistance | Broken — collisions found | Currently secure |
| Use Case | File checksums (non-security), legacy systems | Password hashing (with salt), digital signatures, certificates |

> **Important:** MD5 should never be used for security-sensitive purposes (password storage, digital signatures). Use SHA-256 or stronger for security applications.

**Password hashing note:** Even SHA-256 alone is not ideal for password storage because it is too fast, making brute-force attacks feasible. Use specialized password hashing functions like **bcrypt**, **scrypt**, or **Argon2**.

---

## Digital Certificates

A digital certificate (X.509) binds a public key to an identity, verified by a trusted Certificate Authority (CA).

**Certificate contents:**

- Subject name (who the certificate belongs to)
- Public key
- Issuing CA
- Validity period (start and end dates)
- Serial number
- Digital signature from the CA

**Certificate chain:**

```
Root CA (trusted, pre-installed in OS/browser)
  └── Intermediate CA
        └── Server Certificate (e.g., www.example.com)
```

---

## SSL/TLS

SSL (Secure Sockets Layer) and its successor TLS (Transport Layer Security) provide encrypted communication over networks.

**TLS handshake (simplified):**

1. Client → Server: ClientHello (supported cipher suites)
2. Server → Client: ServerHello + digital certificate
3. Client verifies the certificate against trusted CAs
4. Client and server negotiate a symmetric session key (using asymmetric key exchange)
5. Encrypted communication begins

**Versions:**
- SSL 2.0, 3.0: Deprecated (insecure)
- TLS 1.0, 1.1: Deprecated
- TLS 1.2: Still widely used
- TLS 1.3: Current standard (faster, more secure)

---

## OpenSSL Lab Demonstration

The following examples demonstrate cryptographic concepts using OpenSSL in a safe, local-only lab environment.

> **Disclaimer:** These examples use only test messages. No real credentials, secrets, or sensitive data are used.

### Symmetric Encryption (AES-256-CBC)

```bash
# Create a test message
echo "This is a lab test message for encryption" > testfile.txt

# Encrypt the file
openssl enc -aes-256-cbc -salt -pbkdf2 -in testfile.txt -out testfile.enc

# Decrypt the file
openssl enc -aes-256-cbc -d -pbkdf2 -in testfile.enc -out testfile_decrypted.txt

# Verify the decrypted content matches the original
cat testfile_decrypted.txt
# Output: This is a lab test message for encryption
```

### Hashing

```bash
# MD5 hash
echo -n "lab test message" | openssl dgst -md5
# Output: (example) 5a4d7030b5a6c9e3b1c2f7a8d9e0f1b2

# SHA-256 hash
echo -n "lab test message" | openssl dgst -sha256
# Output: (example) 3c59dc048e8850243be8079a5c74d079...
```

### Asymmetric Encryption (RSA)

```bash
# Generate a 2048-bit RSA key pair
openssl genrsa -out private_key.pem 2048

# Extract the public key
openssl rsa -in private_key.pem -pubout -out public_key.pem

# Encrypt a message with the public key
echo "Secret lab message" > secret.txt
openssl rsautl -encrypt -inkey public_key.pem -pubin -in secret.txt -out secret.enc

# Decrypt with the private key
openssl rsautl -decrypt -inkey private_key.pem -in secret.enc -out secret_decrypted.txt

cat secret_decrypted.txt
# Output: Secret lab message
```

### SHA-256 File Integrity Check

```bash
# Generate a hash of a file
sha256sum testfile.txt

# Later, verify the file has not been tampered with
sha256sum -c <<< "$(sha256sum testfile.txt)"
# Output: testfile.txt: OK
```

---

> **Note:** All cryptographic activities in this repository are performed only on local test files within the authorized lab environment.

---

**Next:** [Tool Familiarization](tool-familiarization.md)
