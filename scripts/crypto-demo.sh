#!/bin/bash
# ============================================================
# Cryptography Demo Script
# ApexPlanet Cybersecurity Internship — Task 1
#
# Purpose: Demonstrate encryption, decryption, and hashing
#          using OpenSSL with dummy educational data only.
#
# Usage: chmod +x crypto-demo.sh && ./crypto-demo.sh
#
# WARNING: This script uses ONLY dummy test data.
#          No real credentials, API keys, or sensitive data
#          are used or created by this script.
# ============================================================

echo "============================================"
echo "  Cryptography Demonstration"
echo "  ApexPlanet Cybersecurity Internship"
echo "============================================"
echo ""

# --- Create Dummy Message ---
MESSAGE="This is an educational cybersecurity lab message."
echo "[1] Original Message:"
echo "    \"$MESSAGE\""
echo "$MESSAGE" > /tmp/crypto_test.txt
echo ""

# --- Hashing ---
echo "[2] SHA-256 Hash:"
echo "    ----------------------------------------"
HASH=$(echo -n "$MESSAGE" | openssl dgst -sha256 2>/dev/null)
echo "    $HASH"
echo ""

# --- Symmetric Encryption (AES-256-CBC) ---
echo "[3] Symmetric Encryption (AES-256-CBC):"
echo "    ----------------------------------------"
echo "    Encrypting..."
openssl enc -aes-256-cbc -salt -pbkdf2 -in /tmp/crypto_test.txt -out /tmp/crypto_test.enc -pass pass:lab_password_123 2>/dev/null
echo "    Encrypted file created: /tmp/crypto_test.enc"
echo "    Encrypted content (hex):"
xxd /tmp/crypto_test.enc 2>/dev/null | head -3 || hexdump -C /tmp/crypto_test.enc 2>/dev/null | head -3
echo ""

# --- Decryption ---
echo "[4] Decryption:"
echo "    ----------------------------------------"
echo "    Decrypting..."
openssl enc -aes-256-cbc -d -pbkdf2 -in /tmp/crypto_test.enc -out /tmp/crypto_test_dec.txt -pass pass:lab_password_123 2>/dev/null
DECRYPTED=$(cat /tmp/crypto_test_dec.txt 2>/dev/null)
echo "    Decrypted message: \"$DECRYPTED\""
echo ""

# --- Verify Integrity ---
echo "[5] Integrity Verification:"
echo "    ----------------------------------------"
if [ "$MESSAGE" = "$DECRYPTED" ]; then
    echo "    [PASS] Decrypted message matches original!"
else
    echo "    [FAIL] Messages do not match!"
fi
echo ""

# --- Asymmetric Encryption (RSA) ---
echo "[6] Asymmetric Encryption (RSA-2048):"
echo "    ----------------------------------------"
echo "    Generating RSA key pair..."
openssl genrsa -out /tmp/private_key.pem 2048 2>/dev/null
openssl rsa -in /tmp/private_key.pem -pubout -out /tmp/public_key.pem 2>/dev/null
echo "    Private key: /tmp/private_key.pem"
echo "    Public key:  /tmp/public_key.pem"

echo "    Encrypting with public key..."
echo "$MESSAGE" > /tmp/rsa_test.txt
openssl rsautl -encrypt -inkey /tmp/public_key.pem -pubin -in /tmp/rsa_test.txt -out /tmp/rsa_test.enc 2>/dev/null
echo "    RSA encrypted file created."

echo "    Decrypting with private key..."
openssl rsautl -decrypt -inkey /tmp/private_key.pem -in /tmp/rsa_test.enc -out /tmp/rsa_test_dec.txt 2>/dev/null
RSA_DECRYPTED=$(cat /tmp/rsa_test_dec.txt 2>/dev/null)
echo "    RSA decrypted message: \"$RSA_DECRYPTED\""
echo ""

# --- Cleanup ---
echo "[7] Cleanup:"
echo "    ----------------------------------------"
rm -f /tmp/crypto_test.txt /tmp/crypto_test.enc /tmp/crypto_test_dec.txt
rm -f /tmp/private_key.pem /tmp/public_key.pem
rm -f /tmp/rsa_test.txt /tmp/rsa_test.enc /tmp/rsa_test_dec.txt
echo "    Temporary files removed."
echo ""

echo "============================================"
echo "  Demo Complete — Educational use only"
echo "  No real credentials or secrets used"
echo "============================================"
