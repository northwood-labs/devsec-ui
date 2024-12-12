---
title: RSA (Authentication Signing)
description: ✅ Secure authentication signing
layout: learn-single

tls_part: auth-sig

learn_more:
  - text: 'A Method for Obtaining Digital Signatures and Public-Key Cryptosystems'
    url: https://web.archive.org/web/20230127011251/http://people.csail.mit.edu/rivest/Rsapaper.pdf
    source: MIT

  - text: 'RSA Security Releases RSA Encryption Algorithm into Public Domain'
    url: https://web.archive.org/web/20071120112201/http://www.rsa.com/press_release.aspx?id=261
    source: RSA

---

## Summary

The term [RSA] has two different contexts: (a) the key exchange, and (b) the authentication signature. This is about **RSA, the authentication signature**.

As noted by [Veritas]:

> **Slow processing speed:** The RSA algorithm has a slow processing speed compared to other encryption algorithms when dealing with large data amounts. It is not always suitable for applications like those requiring regular encryption and decryption of large data amounts
>
> **Large key size:** RSA cryptography requires the use of large key sizes for security. Therefore, it requires more computational power, resource, and storage.

Longer RSA keys (e.g., 3072-bit, 4096-bit) are more secure compared to RSA 2048-bit, but become increasingly slow to calculate, making it less suitable to use for TLS connections. Modern `ECDSA` authentication signatures are faster and cheaper to calculate compared to RSA authentication signatures, and retain a high degree of cryptographic security.

It continues to be part of [FIPS-186], published by U.S. NIST.

## Information

| Field        | Value                    |
|--------------|--------------------------|
| Kind         | {{% param-kind %}}       |
| Invented     | 1977                     |
| Cracked      | -                        |
| Related tech | [FIPS-186], [PGP], [SSH] |

[FIPS-186]: https://csrc.nist.gov/pubs/fips/186-5/final
[PGP]: https://pgpkeys.org/docs/pgpfaq.html#HDPK
[RSA]: https://en.wikipedia.org/wiki/RSA_(cryptosystem)
[SSH]: https://en.wikipedia.org/wiki/Secure_Shell
[Veritas]: https://www.veritas.com/information-center/rsa-encryption
